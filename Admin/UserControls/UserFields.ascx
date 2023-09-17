<%@ Control Language="C#" ClassName="UserFields" %>

<asp:FormView ID="FormView1" runat="server">
	<ItemTemplate>
		<table border="0" cellpadding="3" cellspacing="1">
			<tr>
        <td class="literal"><asp:Label ID="lbldataUserName" runat="server" Text="User Name:" AssociatedControlID="dataUserName" /></td>
        <td>
					<asp:TextBox runat="server" ID="dataUserName" Text='<%# Bind("UserName") %>' MaxLength="150"></asp:TextBox><asp:RequiredFieldValidator ID="ReqVal_dataUserName" runat="server" Display="Dynamic" ControlToValidate="dataUserName" ErrorMessage="Required"></asp:RequiredFieldValidator>
				</td>
			</tr>
			<tr>
        <td class="literal"><asp:Label ID="lbldataUserPhone" runat="server" Text="User Phone:" AssociatedControlID="dataUserPhone" /></td>
        <td>
					<asp:TextBox runat="server" ID="dataUserPhone" Text='<%# Bind("UserPhone") %>' MaxLength="50"></asp:TextBox><asp:RequiredFieldValidator ID="ReqVal_dataUserPhone" runat="server" Display="Dynamic" ControlToValidate="dataUserPhone" ErrorMessage="Required"></asp:RequiredFieldValidator>
				</td>
			</tr>
			<tr>
        <td class="literal"><asp:Label ID="lbldataEmailAddress" runat="server" Text="Email Address:" AssociatedControlID="dataEmailAddress" /></td>
        <td>
					<asp:TextBox runat="server" ID="dataEmailAddress" Text='<%# Bind("EmailAddress") %>' MaxLength="100"></asp:TextBox><asp:RequiredFieldValidator ID="ReqVal_dataEmailAddress" runat="server" Display="Dynamic" ControlToValidate="dataEmailAddress" ErrorMessage="Required"></asp:RequiredFieldValidator>
				</td>
			</tr>
			<tr>
        <td class="literal"><asp:Label ID="lbldataUserPassword" runat="server" Text="User Password:" AssociatedControlID="dataUserPassword" /></td>
        <td>
					<asp:TextBox runat="server" ID="dataUserPassword" Text='<%# Bind("UserPassword") %>' MaxLength="50"></asp:TextBox><asp:RequiredFieldValidator ID="ReqVal_dataUserPassword" runat="server" Display="Dynamic" ControlToValidate="dataUserPassword" ErrorMessage="Required"></asp:RequiredFieldValidator>
				</td>
			</tr>
			<tr>
        <td class="literal"><asp:Label ID="lbldataGender" runat="server" Text="Gender:" AssociatedControlID="dataGender" /></td>
        <td>
					<asp:RadioButtonList runat="server" ID="dataGender" SelectedValue='<%# Bind("Gender") %>' RepeatDirection="Horizontal"><asp:ListItem Value="True" Text="Yes" Selected="True"></asp:ListItem><asp:ListItem Value="False" Text="No"></asp:ListItem></asp:RadioButtonList>
				</td>
			</tr>
			<tr>
        <td class="literal"><asp:Label ID="lbldataAddress" runat="server" Text="Address:" AssociatedControlID="dataAddress" /></td>
        <td>
					<asp:TextBox runat="server" ID="dataAddress" Text='<%# Bind("Address") %>'  TextMode="MultiLine"  Width="250px" Rows="5"></asp:TextBox>
				</td>
			</tr>
			<tr>
        <td class="literal"><asp:Label ID="lbldataCountry" runat="server" Text="Country:" AssociatedControlID="dataCountry" /></td>
        <td>
					<asp:TextBox runat="server" ID="dataCountry" Text='<%# Bind("Country") %>' MaxLength="50"></asp:TextBox>
				</td>
			</tr>
			<tr>
        <td class="literal"><asp:Label ID="lbldataCity" runat="server" Text="City:" AssociatedControlID="dataCity" /></td>
        <td>
					<asp:TextBox runat="server" ID="dataCity" Text='<%# Bind("City") %>' MaxLength="50"></asp:TextBox>
				</td>
			</tr>
			
		</table>

	</ItemTemplate>
</asp:FormView>


