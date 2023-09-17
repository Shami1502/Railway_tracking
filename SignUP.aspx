<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="SignUP.aspx.cs" Inherits="Railway_Tracking_System.WebForm3" %>









<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
                     
    <div class="secnav">

    </div>
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
                     <td width="70% ">
                         <table width="100%">
                             <tr>
                                 <td><h2 style="color:green;outline-color:yellow; font-size:30px;font-weight:bold;border-bottom:4px solid yellow">Register for Pakistan Railway </h2></td>
                             </tr>
                             <tr>
                                 <td>
                                     <table>
                                         <tr>
                                             <td style="padding:10px;font-size:15px;">First Name:</td>
                                             <td>
                                                 <asp:TextBox ID="TextBox3" style="border-radius:5px;font-size:15px;" runat="server" placeholder="Name"></asp:TextBox>

                                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="ali" ControlToValidate="TextBox3" runat="server" ErrorMessage="*Required" Style="color: red;"></asp:RequiredFieldValidator>
                                                      <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                                ControlToValidate="TextBox3"
                                ValidationExpression="^[a-zA-Z\s]+$"
                                ErrorMessage="Entre valid Name"
                                ValidationGroup="ali"
                                runat="server" />
                        </td>
                                             
                                         </tr>
                                        
                                           <tr>
                                             <td style="padding:10px;font-size:15px;">E-mail:</td>
                                             <td>
                                                 <asp:TextBox ID="TextBox6"  style="border-radius:5px;font-size:15px;" runat="server" placeholder="abc@gamil.com"></asp:TextBox>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="ali" ControlToValidate="TextBox6" runat="server" ErrorMessage="*Required" Style="color: red;"></asp:RequiredFieldValidator>
                                
                                             </td>
                                             
                                         </tr>
                                            <tr>
                                             <td style="padding:10px;font-size:15px;">Number:</td>
                                             <td>
                                                 <asp:TextBox ID="TextBox7" style="border-radius:5px;font-size:15px;" runat="server" placeholder="03xxxxx"></asp:TextBox>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="ali" ControlToValidate="TextBox7" runat="server" ErrorMessage="*Required" Style="color: red;"></asp:RequiredFieldValidator>
                                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
                                ControlToValidate="TextBox7"
                                ValidationExpression="[0-9]{10}"
                                ErrorMessage="Entre valid phone"
                                ValidationGroup="ali"
                                runat="server" />
                        </td>
                                             </td>
                                             
                                         </tr>
                                            <tr>
                                             <td style="padding:10px;font-size:15px;">Password:</td>
                                             <td>
                                                 <asp:TextBox ID="TextBox8" style="border-radius:5px;font-size:15px;" runat="server" placeholder="Password"></asp:TextBox>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ValidationGroup="ali" ControlToValidate="TextBox8" runat="server" ErrorMessage="*Required" Style="color: red;"></asp:RequiredFieldValidator>
                                    
                                             </td>
                                             
                                         </tr>
                                           <tr>
                                             <td style="padding:10px;font-size:15px;">Address:</td>
                                             <td>
                                                 <asp:TextBox ID="TextBox9" style="border-radius:5px;font-size:15px;" runat="server" placeholder="Address"></asp:TextBox>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ValidationGroup="ali" ControlToValidate="TextBox9" runat="server" ErrorMessage="*Required" Style="color: red;"></asp:RequiredFieldValidator>
                                    
                                             </td>
                                             
                                         </tr>
                                           <tr>
                                             <td style="padding:10px;font-size:15px;">City:</td>
                                             <td>
                                                 <asp:TextBox ID="TextBox10" style="border-radius:5px;font-size:15px;" runat="server" placeholder="City"></asp:TextBox>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ValidationGroup="ali" ControlToValidate="TextBox10" runat="server" ErrorMessage="*Required" Style="color: red;"></asp:RequiredFieldValidator>
                                                                      <asp:RegularExpressionValidator ID="RegularExpressionValidator4"
                                ControlToValidate="TextBox10"
                                ValidationExpression="^[a-zA-Z\s]+$"
                                ErrorMessage="Entre valid Name"
                                ValidationGroup="ali"
                                runat="server" />
                                             </td>
                                             
                                         </tr>
                                           <tr>
                                             <td style="padding:10px;font-size:15px;">Country:</td>
                                             <td>
                                                 <asp:TextBox ID="TextBox11" style="border-radius:5px;font-size:15px;" runat="server" placeholder="country"></asp:TextBox>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ValidationGroup="ali" ControlToValidate="TextBox11" runat="server" ErrorMessage="*Required" Style="color: red;"></asp:RequiredFieldValidator>
                                                                      <asp:RegularExpressionValidator ID="RegularExpressionValidator3"
                                ControlToValidate="TextBox11"
                                ValidationExpression="^[a-zA-Z\s]+$"
                                ErrorMessage="Entre valid Name"
                                ValidationGroup="ali"
                                runat="server" />
                                             </td>
                                             
                                         </tr>
                                         <tr>
                                             <td style="padding:10px;font-size:15px"></td>
                                             <td>
                                                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Railway_TrackingConnectionString2 %>" SelectCommand="SELECT * FROM [User]"></asp:SqlDataSource>
                                                 <asp:Button ID="Btn1" runat="server" ValidationGroup="ali" style="background-color:green;border-radius:5px;font-size:15px;" Text="Submit" OnClick="Btn1_Click"   />
                                                
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
