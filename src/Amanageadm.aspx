<%@ Page Title="" Language="C#" MasterPageFile="~/SiteAdmin.Master" AutoEventWireup="true" CodeBehind="Amanageadm.aspx.cs" Inherits="Assignment.admin.Amanageadm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 70px;
        }
        .auto-style3 {
            width: 104px;
        }
        .auto-style4 {
            width: 70px;
            height: 13px;
        }
        .auto-style5 {
            width: 104px;
            height: 13px;
        }
        .auto-style6 {
            height: 13px;
        }
        .auto-style7 {
            width: 70px;
            height: 29px;
        }
        .auto-style8 {
            width: 104px;
            height: 29px;
        }
        .auto-style9 {
            height: 29px;
        }
        .auto-style10 {
            width: 70px;
            height: 31px;
        }
        .auto-style11 {
            width: 104px;
            height: 31px;
        }
        .auto-style12 {
            height: 31px;
        }
        .auto-style13 {
            width: 390px;
        }
        .auto-style14 {
            height: 29px;
            width: 390px;
        }
        .auto-style15 {
            height: 31px;
            width: 390px;
        }
        .auto-style16 {
            height: 13px;
            width: 390px;
        }
        .auto-style17 {
            width: 70px;
            height: 28px;
        }
        .auto-style18 {
            width: 104px;
            height: 28px;
        }
        .auto-style19 {
            height: 28px;
            width: 390px;
        }
        .auto-style20 {
            height: 28px;
        }
        .auto-style21 {
            width: 70px;
            height: 34px;
        }
        .auto-style22 {
            width: 104px;
            height: 34px;
        }
        .auto-style23 {
            width: 390px;
            height: 34px;
        }
        .auto-style24 {
            height: 34px;
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
						<h1>Manage Admin Panel</h1>
					    <table class="w-100">
                            <tr>
                                <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                            </tr>
                        </table>
					</div>
					<table class="w-100">
                            <tr>
                                <td class="auto-style21"></td>
                                <td class="auto-style22">
                                    <asp:Label ID="Label1" runat="server" Text="UserID:" Font-Bold="True"></asp:Label>
                                </td>
                                <td class="auto-style23">
                                    <asp:TextBox ID="UserId" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                                &nbsp;&nbsp;
                                </td>
                                <td class="auto-style24">
                                    &nbsp;</td>
                                <td class="auto-style24">
                                    </td>
                                <td class="auto-style24">
                                    </td>
                            </tr>
                            <tr>
                                <td class="auto-style7"></td>
                                <td class="auto-style8">
                                    <asp:Label ID="Label2" runat="server" Text="Username:" Font-Bold="True"></asp:Label>
                                </td>
                                <td class="auto-style14">
                                    <asp:DropDownList ID="Uname" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Uname_SelectedIndexChanged">
                                    </asp:DropDownList>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                                <td class="auto-style9">
                                    &nbsp;</td>
                                <td class="auto-style9">
                                    &nbsp;</td>
                                <td class="auto-style9">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style3">
                                    <asp:Label ID="Label3" runat="server" Text="Password:" Font-Bold="True"></asp:Label>
                                </td>
                                <td class="auto-style13">
                                    <asp:TextBox ID="Pwd" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                                </td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style3">
                                    <asp:Label ID="Label4" runat="server" Text="Name:" Font-Bold="True"></asp:Label>
                                </td>
                                <td class="auto-style13">
                                    <asp:TextBox ID="Fullname" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                                </td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style3">
                                    <asp:Label ID="Label5" runat="server" Text="Gender:" Font-Bold="True"></asp:Label>
                                </td>
                                <td class="auto-style13">
                                    <asp:DropDownList ID="Gender" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Gender_SelectedIndexChanged">
                                        <asp:ListItem>F</asp:ListItem>
                                        <asp:ListItem>M</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style10"></td>
                                <td class="auto-style11">
                                    <asp:Label ID="Label6" runat="server" Text="Email:" Font-Bold="True"></asp:Label>
                                </td>
                                <td class="auto-style15">
                                    <asp:TextBox ID="Email" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                                </td>
                                <td class="auto-style12">
                                    &nbsp;</td>
                                <td class="auto-style12">
                                    &nbsp;</td>
                                <td class="auto-style12">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style4"></td>
                                <td class="auto-style5">
                                    <asp:Label ID="Label7" runat="server" Text="Country:" Font-Bold="True"></asp:Label>
                                </td>
                                <td class="auto-style16">
                                    <asp:TextBox ID="Country" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                                </td>
                                <td class="auto-style6">
                                    &nbsp;</td>
                                <td class="auto-style6">
                                    &nbsp;</td>
                                <td class="auto-style6">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style5">
                                    &nbsp;</td>
                                <td class="auto-style16">
                                    &nbsp;</td>
                                <td class="auto-style6">
                                    &nbsp;</td>
                                <td class="auto-style6">
                                    &nbsp;</td>
                                <td class="auto-style6">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style3">&nbsp;</td>
                                <td class="auto-style13">
                                    <asp:Button ID="UpdateBtn" runat="server" Font-Bold="True" Font-Size="Medium" Text="Update" CssClass="mytooltip" OnClick="UpdateBtn_Click" />
&nbsp;&nbsp;
                                    <asp:Button ID="DeleteBtn" runat="server" Font-Bold="True" Font-Size="Medium" Text="Delete" CssClass="mytooltip" OnClick="DeleteBtn_Click" />
&nbsp;&nbsp;
                                    <asp:Button ID="Button4" runat="server" Font-Bold="True" Font-Size="Medium" Text="Search" CssClass="mytooltip"/>
                                </td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style17"></td>
                                <td class="auto-style18"></td>
                                <td class="auto-style19">
                                    <asp:Label ID="id" runat="server" Text="id" Visible="False"></asp:Label>
&nbsp;&nbsp;
                                    <asp:Label ID="Usertype" runat="server" Text="admin" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="errMsg" runat="server" Text="errMsg" Visible="False"></asp:Label>
                                </td>
                                <td class="auto-style20">
                                    &nbsp;</td>
                                <td class="auto-style20">
                                </td>
                                <td class="auto-style20">
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style3">&nbsp;</td>
                                <td class="auto-style13">
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                                </td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style3">&nbsp;</td>
                                <td class="auto-style13">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
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
