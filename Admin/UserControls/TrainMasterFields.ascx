<%@ Control Language="C#" ClassName="TrainMasterFields" %>

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
        <td class="literal"><asp:Label ID="lbldataStartStation" runat="server" Text="Start Station:" AssociatedControlID="dataStartStation" /></td>
        <td>
					<asp:TextBox runat="server" ID="dataStartStation" Text='<%# Bind("StartStation") %>' MaxLength="50"></asp:TextBox><asp:RequiredFieldValidator ID="ReqVal_dataStartStation" runat="server" Display="Dynamic" ControlToValidate="dataStartStation" ErrorMessage="Required"></asp:RequiredFieldValidator>
				</td>
			</tr>
			<tr>
        <td class="literal"><asp:Label ID="lbldataDestinationStation" runat="server" Text="Destination Station:" AssociatedControlID="dataDestinationStation" /></td>
        <td>
					<asp:TextBox runat="server" ID="dataDestinationStation" Text='<%# Bind("DestinationStation") %>' MaxLength="50"></asp:TextBox><asp:RequiredFieldValidator ID="ReqVal_dataDestinationStation" runat="server" Display="Dynamic" ControlToValidate="dataDestinationStation" ErrorMessage="Required"></asp:RequiredFieldValidator>
				</td>
			</tr>
			<tr>
        <td class="literal"><asp:Label ID="lbldataArrivalTime" runat="server" Text="Arrival Time:" AssociatedControlID="dataArrivalTime" /></td>
        <td>
					<asp:TextBox runat="server" ID="dataArrivalTime" Text='<%# Bind("ArrivalTime") %>' MaxLength="50"></asp:TextBox><asp:RequiredFieldValidator ID="ReqVal_dataArrivalTime" runat="server" Display="Dynamic" ControlToValidate="dataArrivalTime" ErrorMessage="Required"></asp:RequiredFieldValidator>
				</td>
			</tr>
			<tr>
        <td class="literal"><asp:Label ID="lbldataDepartureTime" runat="server" Text="Departure Time:" AssociatedControlID="dataDepartureTime" /></td>
        <td>
					<asp:TextBox runat="server" ID="dataDepartureTime" Text='<%# Bind("DepartureTime") %>' MaxLength="50"></asp:TextBox><asp:RequiredFieldValidator ID="ReqVal_dataDepartureTime" runat="server" Display="Dynamic" ControlToValidate="dataDepartureTime" ErrorMessage="Required"></asp:RequiredFieldValidator>
				</td>
			</tr>
			
		</table>

	</ItemTemplate>
</asp:FormView>


