using x50.ASPxGridView.Model;
using System;
using System.Web;

namespace x50.ASPxGridView {
    public partial class GridViewDetailsPageModule : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
            long recordId;
            if(long.TryParse(Request.QueryString["id"], out recordId)) {
                var issue = GetCurrentIssue(recordId);
                SubjectText.InnerHtml = HttpUtility.HtmlEncode(issue.Subject);
                IdLabel.Text = recordId.ToString();
            }
            Master.EnableBackButton = true;
        }

        protected Issue GetCurrentIssue(long recordId) {
            var issue = DataProvider.GetIssues().Find(i => i.Id == recordId);
            if(issue == null)
                throw new Exception("The issue was not found");
            return issue;
        }
    }
}