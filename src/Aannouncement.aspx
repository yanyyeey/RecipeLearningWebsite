<%@ Page Title="" Language="C#" MasterPageFile="~/SiteAdmin.Master" AutoEventWireup="true" CodeBehind="Aannouncement.aspx.cs" Inherits="Assignment.admin.Aannouncement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 70px;
        }
        .auto-style3 {
            width: 196px;
        }
        .auto-style4 {
            width: 70px;
            height: 13px;
        }
        .auto-style5 {
            width: 196px;
            height: 13px;
        }
        .auto-style6 {
            height: 13px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- Start header -->
	<div class="all-page-title page-breadcrumb">
		<div class="container text-center">
			<div class="row">
				<div class="col-lg-12">
					<h1>Admin Dashboard</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End header -->

    <!-- Start Adashboard -->
	<div class="contact-box">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="heading-title text-center">
						<h1>Announcement Manage Panel</h1>
					</div>
					<table class="w-100">
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style3">
                                    <asp:Label ID="Label1" runat="server" Text="Announcement ID:" Font-Bold="True"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" Height="22px" Width="200px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style3">
                                    <asp:Label ID="Label2" runat="server" Text="Announcement Title:" Font-Bold="True"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style3">
                                    <asp:Label ID="Label3" runat="server" Text="Annoucement DateTime:" Font-Bold="True"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox3" runat="server" type="date" Font-Size="Medium" Width="200px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4"></td>
                                <td class="auto-style5">
                                    <asp:Label ID="Label4" runat="server" Text="Announcement Text:" Font-Bold="True"></asp:Label>
                                </td>
                                <td class="auto-style6">
                                    <asp:TextBox ID="TextBox4" runat="server" Font-Size="Medium" Width="700px" Height="100px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4"></td>
                                <td class="auto-style5">
                                    <asp:Label ID="Label5" runat="server" Text="Announcement Image:" Font-Bold="True"></asp:Label>
                                    </td>
                                <td class="auto-style6">
                                    <br />
                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                    <br />
                                    <asp:Image ID="Image1" runat="server" Height="192px" Width="329px" />
                                    </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style5">
                                    &nbsp;</td>
                                <td class="auto-style6">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style3">&nbsp;</td>
                                <td>
                                    <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Medium" Text="Insert" CssClass="mytooltip" />
&nbsp;&nbsp;
                                    <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Size="Medium" Text="Update" CssClass="mytooltip" />
&nbsp;&nbsp;
                                    <asp:Button ID="Button3" runat="server" Font-Bold="True" Font-Size="Medium" Text="Delete" CssClass="mytooltip" />
&nbsp;&nbsp;
                                    <asp:Button ID="Button4" runat="server" Font-Bold="True" Font-Size="Medium" Text="Search" CssClass="mytooltip" OnClick="Button4_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style3">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style3">&nbsp;</td>
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
