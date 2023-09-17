<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" Codefile="Home.aspx.cs" Inherits="Railway_Tracking_System.WebForm1" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
     <table width="100%">
            <tr>
                <td width="10%">

                </td>
                <td width="35%" >
                    <asp:Button ID="Button2" runat="server" Text="Trian Update" CssClass="pic1"  OnClick="Button2_Click"  />
                </td>
                <td width="10%">

                </td>
                <td  width="35%">
                    <asp:Button ID="Button3" runat="server" Text="Train Scheduled" CssClass="pic1" />
                </td>
                <td width="10%">

                </td>
            </tr>
            <tr>
                 <td width="10%">

                </td>
                <td width="35%" >
                    <asp:Button ID="Button4" runat="server" Text="Station Update" CssClass="pic1" OnClick="Button4_Click"  />
                </td>
                <td width="10%"">

                </td>
                <td  width="35%">
                    <asp:Button ID="Button5" runat="server" Text="Station Scheduled" CssClass="pic1" OnClick="Button5_Click" />
                </td>
                <td width="10%">

                </td>
            </tr>
           
        </table>
</asp:Content>
