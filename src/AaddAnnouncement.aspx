<%@ Page Title="" Language="C#" MasterPageFile="~/SiteAdmin.Master" AutoEventWireup="true" CodeBehind="AaddAnnouncement.aspx.cs" Inherits="Assignment.admin.AaddAnnouncement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 196px;
        }
        .auto-style5 {
            width: 196px;
            height: 13px;
        }
        .auto-style6 {
            height: 13px;
        }
        .auto-style7 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background: #ffde59;
        }
    .auto-style8 {
        width: 90%;
        max-width: 1140px;
        min-width: 992px;
        margin-left: auto;
        margin-right: 0px;
        padding-left: 15px;
        padding-right: 15px;
    }
    .auto-style9 {
        width: 710px;
    }
    .auto-style10 {
        height: 13px;
        width: 210px;
    }
    .auto-style11 {
        width: 210px;
    }
    .auto-style12 {
        position: relative;
        width: 96%;
        min-height: 1px;
        -ms-flex: 0 0 100%;
        flex: 0 0 100%;
        max-width: 100%;
        left: 0px;
        top: 6px;
        padding-left: 15px;
        padding-right: 15px;
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
		<div class="auto-style8">
			<div class="row">
				<div class="auto-style12">
					<div class="heading-title text-center">
						<h1>Announcement Manage Panel</h1>
					</div>
                    <table class="w-100">
                            <tr>
                                <td class="auto-style9">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" ForeColor="#FF9900" NavigateUrl="~/Aupdateannouncement.aspx" style="border-bottom:2px solid Orange">Update Announcement</asp:HyperLink>
&nbsp;<br />
                                </td>
                            </tr>
                        </table>
					<table class="w-100">
                            <tr>
                                <td class="auto-style3">
                                    <asp:Label ID="LabelAnnouncementId" runat="server" Text="Announcement ID:" Font-Bold="True"></asp:Label>
                                </td>
                                <td class="auto-style11">
                                <asp:Label ID="LabelAnnouncementId_Display" runat="server" Text="Id"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <asp:Label ID="LabelAnnouncementTitle" runat="server" Text="Announcement Title:" Font-Bold="True"></asp:Label>
                                </td>
                                <td class="auto-style11">
                                    <asp:TextBox ID="TextBoxAnnouncementTitle" runat="server" Font-Size="Medium" Width="200px" OnTextChanged="TextBoxAnnouncementTitle_TextChanged"></asp:TextBox>
                                </td>
                                <td>
                                <asp:RequiredFieldValidator ID="ValidatorTitle" runat="server" ControlToValidate="TextBoxAnnouncementTitle" EnableClientScript="False" ErrorMessage="Please Enter Name." ForeColor="#FF3300" Display="Dynamic">Announcement Title Cannot Be Empty!</asp:RequiredFieldValidator>
                                    <br />
                                    <asp:Label ID="AnnouncementExist" runat="server" Text="Announcement Title Exist." Visible="False" ForeColor="#FF3300"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <asp:Label ID="LabelAnnouncementDateTime" runat="server" Text="Annoucement DateTime:" Font-Bold="True"></asp:Label>
                                </td>
                                <td class="auto-style11">
                                    <asp:Label ID="LabelDateTime_Display" runat="server" Text="Date Time"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style5">
                                    <asp:Label ID="LabelAnnouncementContent" runat="server" Text="Announcement Content:" Font-Bold="True"></asp:Label>
                                </td>
                                <td class="auto-style10">
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
                                    </td>
                                <td class="auto-style10">
                                    <br />
                                    <br />
                                    </td>
                                <td class="auto-style6">
                                    </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">&nbsp;</td>
                                <td class="auto-style11">
                                    <asp:Button ID="ButtonAddAnnouncement" runat="server" Font-Bold="True" Font-Size="Medium" Text="Add Announcement" CssClass="mytooltip" Height="50px" Width="200px" OnClick="ButtonAddAnnouncement_Click" />
&nbsp;&nbsp;
                                    &nbsp;&nbsp;
                                    &nbsp;&nbsp;
                                    <br />
                                <asp:Label ID="LabelErrorMessage" runat="server" Text="Error Message" Visible="False"></asp:Label>
                                    </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style3">&nbsp;</td>
                                <td class="auto-style11">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style3">&nbsp;</td>
                                <td class="auto-style11">
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
