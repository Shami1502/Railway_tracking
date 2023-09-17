<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="Contact .aspx.cs" Inherits="Railway_Tracking_System.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <table width="100%" style="margin:50px;">
        <tr>
            <td width="20%"></td>
            <td width="60%">
                <table width="100%">
                    <tr>
                        <td><h1 style="justify-content:center;text-align:center;border-bottom:2px solid green; margin:10px;    color:black;font-size:30px;">Contact Us</h1></td>
                    </tr>
                    <tr>
                        <td style="padding:15px;font-size:20px;;"> Name*</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBox21" runat="server" ValidationGroup="ahmad" style="width:70%;border:none;margin:10px;border-bottom:1px solid black;padding:5px;font-size:15px;" placeholder="Your Name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ValidationGroup="ahmad" ControlToValidate="TextBox21" runat="server" ErrorMessage="*Required" Style="color: red;"></asp:RequiredFieldValidator>
                                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                                ControlToValidate="TextBox21"
                                ValidationExpression="^[a-zA-Z\s]+$"
                                ErrorMessage="Entre valid Name"
                                ValidationGroup="ali"
                                runat="server" />
                        </td>
                    </tr>
                    </tr>
                    <tr>
                        <td style="padding:15px;font-size:20px;;"> Phone*</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBox22" runat="server" ValidationGroup="ahmad" style="width:70%;font-size:15px;border:none;margin:10px;border-bottom:1px solid black;padding:5px;" placeholder="Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="ahmad" ControlToValidate="TextBox22" runat="server" ErrorMessage="*Required" Style="color: red;"></asp:RequiredFieldValidator>
                                             <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
                                ControlToValidate="TextBox22"
                                ValidationExpression="[0-9]{10}"
                                ErrorMessage="Entre valid Name"
                                ValidationGroup="ali"
                                runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td style="padding:15px;font-size:20px;"> Email*</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBox23" runat="server" ValidationGroup="ahmad" style="width:70%;font-size:15px;border:none; margin:10px;border-bottom:1px solid black;padding:5px;" placeholder="Email"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="ahmad" ControlToValidate="TextBox23" runat="server" ErrorMessage="*Required" Style="color: red;"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding:15px;font-size:20px;"> Message*</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBox24" runat="server" ValidationGroup="ahmad" style="width:70%;font-size:15px;margin:10px;border:none;border-bottom:1px solid black;padding:5px;" placeholder="Write Your Message"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="ahmad" ControlToValidate="TextBox24" runat="server" ErrorMessage="*Required" Style="color: red;"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Railway_TrackingConnectionString3 %>" SelectCommand="SELECT * FROM [User]" ProviderName="<%$ ConnectionStrings:Railway_TrackingConnectionString3.ProviderName %>"></asp:SqlDataSource>

                        <td> <asp:Button ID="Button1" runat="server" ValidationGroup="ahmad"  style="background-color:green;font-size:15px;border-radius:5px;margin:10px;border-bottom:1px solid black;padding:5px;font-size:20px;" Text="Submit" OnClick="Button1_Click1"  /></td>
                    </tr>

                </table>



            </td>
            <td width="20%"></td>
       
    </table>
</asp:Content>
