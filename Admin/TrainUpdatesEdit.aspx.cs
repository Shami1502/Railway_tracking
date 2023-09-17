#region Imports...
using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using Railway_Tracking.Web.UI;
#endregion

public partial class TrainUpdatesEdit : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{		
		FormUtil.RedirectAfterInsertUpdate(FormView1, "TrainUpdatesEdit.aspx?{0}", TrainUpdatesDataSource);
		FormUtil.RedirectAfterAddNew(FormView1, "TrainUpdatesEdit.aspx");
		FormUtil.RedirectAfterCancel(FormView1, "TrainUpdates.aspx");
		FormUtil.SetDefaultMode(FormView1, "TrainId");
	}
}


