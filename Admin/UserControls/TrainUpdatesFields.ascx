<%@ Control Language="C#" ClassName="TrainUpdatesFields" %>

<asp:FormView ID="FormView1" runat="server">
	<ItemTemplate>
		<table border="0" cellpadding="3" cellspacing="1">
			<tr>
        <td class="literal"><asp:Label ID="lbldataTrainName" runat="server" Text="Train Name:" AssociatedControlID="dataTrainName" /></td>
        <td>
					<asp:TextBox runat="server" ID="dataTrainName" Text='<%# Bind("TrainName") %>' MaxLength="50"></asp:TextBox><asp:RequiredFieldValidator ID="ReqVal_dataTrainName" runat="server" Display="Dynamic" ControlToValidate="dataTrainName" ErrorMessage="Required"></asp:RequiredFieldValidator>
				</td>
			</tr>
			<tr>
        <td class="literal"><asp:Label ID="lbldataNextStation" runat="server" Text="Next Station:" AssociatedControlID="dataNextStation" /></td>
        <td>
					<asp:TextBox runat="server" ID="dataNextStation" Text='<%# Bind("NextStation") %>' MaxLength="50"></asp:TextBox><asp:RequiredFieldValidator ID="ReqVal_dataNextStation" runat="server" Display="Dynamic" ControlToValidate="dataNextStation" ErrorMessage="Required"></asp:RequiredFieldValidator>
				</td>
			</tr>
			<tr>
        <td class="literal"><asp:Label ID="lbldataSceduledArrival" runat="server" Text="Sceduled Arrival:" AssociatedControlID="dataSceduledArrival" /></td>
        <td>
					<asp:TextBox runat="server" ID="dataSceduledArrival" Text='<%# Bind("SceduledArrival") %>' MaxLength="50"></asp:TextBox><asp:RequiredFieldValidator ID="ReqVal_dataSceduledArrival" runat="server" Display="Dynamic" ControlToValidate="dataSceduledArrival" ErrorMessage="Required"></asp:RequiredFieldValidator>
				</td>
			</tr>
			<tr>
        <td class="literal"><asp:Label ID="lbldataEstimatedArrival" runat="server" Text="Estimated Arrival:" AssociatedControlID="dataEstimatedArrival" /></td>
        <td>
					<asp:TextBox runat="server" ID="dataEstimatedArrival" Text='<%# Bind("EstimatedArrival") %>' MaxLength="50"></asp:TextBox><asp:RequiredFieldValidator ID="ReqVal_dataEstimatedArrival" runat="server" Display="Dynamic" ControlToValidate="dataEstimatedArrival" ErrorMessage="Required"></asp:RequiredFieldValidator>
				</td>
			</tr>
			<tr>
        <td class="literal"><asp:Label ID="lbldataDelay" runat="server" Text="Delay:" AssociatedControlID="dataDelay" /></td>
        <td>
					<asp:TextBox runat="server" ID="dataDelay" Text='<%# Bind("Delay") %>' MaxLength="50"></asp:TextBox><asp:RequiredFieldValidator ID="ReqVal_dataDelay" runat="server" Display="Dynamic" ControlToValidate="dataDelay" ErrorMessage="Required"></asp:RequiredFieldValidator>
				</td>
			</tr>
			<tr>
        <td class="literal"><asp:Label ID="lbldataLastUpdate" runat="server" Text="Last Update:" AssociatedControlID="dataLastUpdate" /></td>
        <td>
					<asp:TextBox runat="server" ID="dataLastUpdate" Text='<%# Bind("LastUpdate") %>' MaxLength="50"></asp:TextBox><asp:RequiredFieldValidator ID="ReqVal_dataLastUpdate" runat="server" Display="Dynamic" ControlToValidate="dataLastUpdate" ErrorMessage="Required"></asp:RequiredFieldValidator>
				</td>
			</tr>
			<tr>
        <td class="literal"><asp:Label ID="lbldataCurrentSpeed" runat="server" Text="Current Speed:" AssociatedControlID="dataCurrentSpeed" /></td>
        <td>
					<asp:TextBox runat="server" ID="dataCurrentSpeed" Text='<%# Bind("CurrentSpeed") %>' MaxLength="50"></asp:TextBox><asp:RequiredFieldValidator ID="ReqVal_dataCurrentSpeed" runat="server" Display="Dynamic" ControlToValidate="dataCurrentSpeed" ErrorMessage="Required"></asp:RequiredFieldValidator>
				</td>
			</tr>
			
		</table>

	</ItemTemplate>
</asp:FormView>


