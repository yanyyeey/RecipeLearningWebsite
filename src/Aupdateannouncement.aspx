<%@ Page Title="" Language="C#" MasterPageFile="~/SiteAdmin.Master" AutoEventWireup="true" CodeBehind="Aupdateannouncement.aspx.cs" Inherits="Assignment.WebForm18" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 228px;
        }
        .auto-style5 {
            width: 228px;
            height: 13px;
        }
        .auto-style6 {
            height: 13px;
        }
        .auto-style7 {
            width: 97%;
            max-width: 1140px;
            min-width: 992px;
            margin-left: auto;
            margin-right: auto;
            padding-left: 15px;
            padding-right: 15px;
        }
        .auto-style8 {
            width: 90%
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- Start header -->
	<div class="all-page-title page-breadcrumb">
		<div class="container text-center">
			<div class="row">
				<div class="col-lg-12">
					<h1>Manage Announcement</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End header -->

    <!-- Start Adashboard -->
	<div class="contact-box">
		<div class="auto-style7">
			<div class="row">
				<div class="col-md-12">
					<div class="heading-title text-center">
						<h1>Announcement Manage Panel</h1>
					</div>
					<table class="auto-style8" align="center">
                            <tr>
                                <td class="auto-style3">
                                    &nbsp;</td>
                                <td>
                                    <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" ForeColor="#FF9900" NavigateUrl="~/AaddAnnouncement.aspx">Add New Announcement</asp:HyperLink>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <asp:Label ID="LabelAnnouncementId" runat="server" Text="Announcement ID:" Font-Bold="True"></asp:Label>
                                </td>
                                <td>
                                <asp:Label ID="LabelAnnouncementId_Display" runat="server" Text="Id"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <asp:Label ID="LabelAnnouncementTitle" runat="server" Text="Announcement Title:" Font-Bold="True"></asp:Label>
                                </td>
                                <td>
                                    <asp:DropDownList ID="AnnouncementTitle" runat="server" AutoPostBack="True" OnSelectedIndexChanged="AnnouncementTitle_SelectedIndexChanged" Width="270px" DataSourceID="SqlDataSource1" DataTextField="Annc_title" DataValueField="Annc_title">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <asp:Label ID="LabelNewAccouncementTitle" runat="server" Text="New Announcement Title:" Font-Bold="True"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBoxNewAnnouncementTitle" runat="server" Font-Size="Medium" Width="200px" OnTextChanged="TextBoxAnnouncementText_TextChanged"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:Label ID="AnnouncementExist" runat="server" Text="Announcement Title Exist." Visible="False" ForeColor="#FF3300"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <asp:Label ID="LabelAnnouncementDateTime" runat="server" Text="Last Updated:" Font-Bold="True"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="LabelDateTime_Display" runat="server" Text="Date Time"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style5">
                                    <asp:Label ID="LabelAnnouncementContent" runat="server" Text="Announcement Content:" Font-Bold="True"></asp:Label>
                                </td>
                                <td class="auto-style6">
                                    <asp:TextBox ID="TextBoxAnnouncementContent" runat="server" Font-Size="Medium" Width="380px" Height="180px" OnTextChanged="TextBoxAnnouncementText_TextChanged" TextMode="MultiLine"></asp:TextBox>
                                </td>
                                <td class="auto-style6">
                                <asp:RequiredFieldValidator ID="ValidatorAnnouncementContent" runat="server" ControlToValidate="TextBoxAnnouncementContent" EnableClientScript="False" ErrorMessage="Please Enter Announcement Content." ForeColor="#FF3300" Display="Dynamic">Announcement Content Cannot Be Empty!</asp:RequiredFieldValidator>
                                    <br />
                                    <asp:Label ID="LabelMessageLengthError" runat="server" ForeColor="#FF3300" Text="Message must be more than 10 characters." Visible="False"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">
                                    &nbsp;</td>
                                <td class="auto-style6">
                                    <br />
                                    <br />
                                    </td>
                                <td class="auto-style6">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Announcement]"></asp:SqlDataSource>
                                </td>
                                <td>
&nbsp;&nbsp;
                                    <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Size="Medium" Text="Update" CssClass="mytooltip" Height="50px" OnClick="ButtonUpdate_Click" />
&nbsp;&nbsp;
                                    <asp:Button ID="Button3" runat="server" Font-Bold="True" Font-Size="Medium" Text="Delete" CssClass="mytooltip" Height="50px" OnClick="ButtonDelete_Click" />
&nbsp;&nbsp;
                                    <br />
                                    <br />
                                <asp:Label ID="LabelErrorMessage" runat="server" Text="Error Message" Visible="False"></asp:Label>
                                    </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style3">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style3">&nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
				</div>		
			</div>
		</div>
	</div>


	<!-- End Adashboard -->
</asp:Content>
