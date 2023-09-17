<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="logIN.aspx.cs" Inherits="Railway_Tracking_System.WebForm2" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="secnav">

    </div>
    <div class="main">
     <table width="100%">
                 <tr>
                     <td width="20%" margin="30px">
                          <table   class="bar" >
                      <tr>
                          <td ><h3 style="color:yellow;padding:10px;font-size:25px;" >Catagories</h3></td>
                      </tr>
                      <tr>
                          <td ><a href="#"  class="linky">Live Tracking</a></td>
                      </tr>
                      <tr>
                          <td ><a href="#"  class="linky">Station Update</a></td>
                      </tr>
                      <tr>
                          <td><a href="#"  class="linky">Train Update</a></td>
                      </tr>
                      <tr>
                          <td><a href="#"  class="linky">Train Schedule</a></td>
                      </tr>
                      <tr>
                          <td ><a href="#"  class="linky">Station Schedule</a></td>
                      </tr>
                              
                  </table>
                     </td>
                     <td class="tu">

                     </td>
                     <td width="70% ">
                         <table width="100%">
                             <tr>
                                 <td><h1 style="color:green;outline-color:yellow; border-bottom:4px solid yellow;font-size:30px;font-weight:bold;">LOGIN for Pakistan Railway </h1></td>
                             </tr>
                             <tr>
                                 <td>
                                     <table>
                                         <tr>
                                             <td style="padding:10px;font-size:15px;">NUMBER:</td>
                                             <td>
                                                 <asp:TextBox ID="TextBox1" style="border-radius:8px;font-size:15px;" runat="server" placeholder="3xxxxxx"></asp:TextBox>

                                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="ali" ControlToValidate="TextBox1" runat="server" ErrorMessage="*Required" Style="color: red;"></asp:RequiredFieldValidator>
                                                      <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
                                ControlToValidate="TextBox1"
                                ValidationExpression="[0-9]{10}"
                                ErrorMessage="Entre valid Name"
                                ValidationGroup="ali"
                                runat="server" />
                        </td>
                                             
                                         </tr>
                                         <tr>
                                             <td style="padding:10px;font-size:15px;">Password:</td>
                                             <td>
                                                 <asp:TextBox ID="TextBox2" style="border-radius:8px;font-size:15px;" runat="server" placeholder="Password"></asp:TextBox>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="ali" ControlToValidate="TextBox2" runat="server" ErrorMessage="*Required" Style="color: red;"></asp:RequiredFieldValidator>
                                                 
                                             </td>
                                             
                                         </tr>
                                         <tr>
                                             <td style="padding:10px;"></td>
                                             <td>
                                                 <asp:Button ID="Button1" runat="server" ValidationGroup="ali" style="background-color:green;font-size:15px;border-radius:5px;" Text="Submit" />
                                                 <a href="SignUP.aspx" style="color:green;font-size:20px;padding:10px;">SignUP</a>
                                             </td>
                                         </tr>
                                         
                                     </table>
                                 </td>
                             </tr>
                       </table>
                         </td>
                     </tr>
         </table>
        

        </div>
         
</asp:Content>
