<%@ Page Title="" Language="C#" MasterPageFile="~/SiteAdmin.Master" AutoEventWireup="true" CodeBehind="Acontact.aspx.cs" Inherits="Assignment.admin.Acontact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 70px;
        }
        .auto-style3 {
            width: 147px;
        }
        .auto-style4 {
            width: 70px;
            height: 13px;
        }
        .auto-style5 {
            width: 147px;
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
					<h1>Manage Contact</h1>
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
						<h1>Member Contact Manage Panel</h1>
					</div>
					<table class="w-100">
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style3">
                                    <asp:Label ID="Label1" runat="server" Text="ID:" Font-Bold="True"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="ContactID" runat="server" Font-Bold="True">id</asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style3">
                                    <asp:Label ID="Label2" runat="server" Text="Username:" Font-Bold="True"></asp:Label>
                                </td>
                                <td>
                                    <asp:DropDownList ID="uname" runat="server" OnSelectedIndexChanged="uname_SelectedIndexChanged" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style3">
                                    <asp:Label ID="Label3" runat="server" Text="Email:" Font-Bold="True"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="email" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4"></td>
                                <td class="auto-style5">
                                    <asp:Label ID="Label4" runat="server" Text="Message:" Font-Bold="True"></asp:Label>
                                </td>
                                <td class="auto-style6">
                                    <asp:Label ID="message" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4"></td>
                                <td class="auto-style5">
                                    <asp:Label ID="Label5" runat="server" Text="Comment:" Font-Bold="True"></asp:Label>
                                    </td>
                                <td class="auto-style6">
                                    <asp:TextBox ID="msgCheck" runat="server" Width="265px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="msgCheck" EnableClientScript="False" ErrorMessage="Please leave a comment. " ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style3">&nbsp;</td>
                                <td>
                                    <asp:Button ID="update" runat="server" Font-Bold="True" Font-Size="Medium" Text="Update" CssClass="mytooltip" OnClick="update_Click" />
&nbsp;&nbsp;
                                    <asp:Button ID="DeleteBtn" runat="server" Font-Bold="True" Font-Size="Medium" Text="Delete" CssClass="mytooltip" OnClick="Button3_Click" />
&nbsp;&nbsp;
                                    </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style3">&nbsp;</td>
                                <td>
                                    <asp:Label ID="id" runat="server" Text="id" Visible="False"></asp:Label>
&nbsp;<asp:Label ID="type" runat="server" Text="contact" Visible="False"></asp:Label>
&nbsp;<asp:Label ID="errMsg" runat="server" Text="errMsg" Visible="False"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style3">&nbsp;</td>
                                <td>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Contact]"></asp:SqlDataSource>
                                </td>
                            </tr>
                        </table>
				</div>		
			</div>
		</div>
	</div>


	<!-- End Adashboard -->

</asp:Content>
