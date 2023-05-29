using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Http.Headers;
using System.Net.Http;
using System.Threading.Tasks;
using System.Collections;
using Newtonsoft.Json;
using System.Net.Http.Json;
using System.Net;

namespace hype.sociusus
{
    public partial class Dashboard_AI_Chat_Page2 : System.Web.UI.Page
    {
        public static ArrayList userMsgs = new ArrayList();
        public static ArrayList apiMsgs = new ArrayList();


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Console.WriteLine(sender.ToString(), TextBox1.Text);
            //userMsgs.Add(TextBox1.Text);
            userMsgs.Add(new Label());
            ((Label)userMsgs[userMsgs.Count - 1]).Text = TextBox1.Text;
            //this.Label2.Text = this.Label2.Text + "0";
            this.Label2.Visible = false;
            if(TextBox1.Text!="" || TextBox1.Text != null)
            {
                var res = Task.Run(async () => await apiCall(TextBox1.Text)).Result;
                
            }
        }

        private async Task<string> apiCall(string input)
        {
            var client = new HttpClient();
            var request = new HttpRequestMessage
            {
                Method = HttpMethod.Get,
                RequestUri = new Uri($"https://ai-chatbot.p.rapidapi.com/chat/free?message={input}&uid=user1"),
                Headers =
            {
                { "X-RapidAPI-Key", "ec989bdb3fmsh006ba8628a33c14p1183b9jsn5d2c1e926294" },
                { "X-RapidAPI-Host", "ai-chatbot.p.rapidapi.com" },
            },
            };
            using (var response = await client.SendAsync(request))
            {
                String reply = "";
                if (response.StatusCode == (HttpStatusCode)429)
                {
                    reply = $"I am tired of too many requests; Rapid API is not available now..{apiMsgs.Count}.";
                }
                else
                {
                    response.EnsureSuccessStatusCode();
                    var body = await response.Content.ReadAsStringAsync();
                    var myDetails = JsonConvert.DeserializeObject<responseBody>(body);
                    reply = myDetails.chatbot.response;
                }
                
                //apiMsgs.Add(reply);
                apiMsgs.Add(new Label());
                ((Label)apiMsgs[apiMsgs.Count-1]).Text = reply;
                for (int i = 0; i < userMsgs.Count; i++)
                {
                    ((Label)userMsgs[i]).Attributes.Add("class", "userMsg");
                    div1.Controls.Add(((Label)userMsgs[i]));
                    ((Label)apiMsgs[i]).Attributes.Add("class", "apiMsg");
                    div1.Controls.Add(((Label)apiMsgs[i]));
                }
                TextBox1.Text = "";
                return reply;
            }
        }
    }

    public class responseBody
    {
        public chatbot chatbot { get; set; }
    }

    public class chatbot
    {
        public string message
        {
            get;
            set;
        }
        public string response
        {
            get;
            set;
        }
    }
}