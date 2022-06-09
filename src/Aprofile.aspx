<%@ Page Title="" Language="C#" MasterPageFile="~/SiteAdmin.Master" AutoEventWireup="true" CodeBehind="Aprofile.aspx.cs" Inherits="Assignment.WebForm19" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            height: 29px;
            width: 294px;
        }
        .auto-style3 {
            width: 778px;
        }
        .auto-style4 {
            height: 29px;
            width: 578px;
        }
        .auto-style5 {
            width: 578px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Start header -->
	<div class="all-page-title page-breadcrumb">
		<div class="container text-center">
			<div class="row">
				<div class="col-lg-12">
					<h1>Admin Profile</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End header -->

	<!-- Start AProfile -->
	<div class="about-section-box">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="heading-title text-center">
						<h1>Hello,
                            <asp:Label ID="LabelAdminName" runat="server" Text="AdminName"></asp:Label>
                            !</h1><br>
					</div>
				</div>		
			</div>
        <div class="container text-center" style="width: 75%; height: 500px; margin-top: 0px;">
            <div class="row">
				<div class="form-group">
					<table class="auto-style3">
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="LabelUsername" runat="server" Text="Username:"></asp:Label>
                            </td>
                            <td class="auto-style5">
                                <asp:Label ID="LabelUsername_Display" runat="server" Text="Username"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="LabelName" runat="server" Text="Name:"></asp:Label>
                            </td>
                            <td class="auto-style5">
                                <asp:TextBox ID="TextBoxName" runat="server" OnTextChanged="TextBoxName_TextChanged"></asp:TextBox>
                            </td>
                        </tr>
                         <tr>
                            <td class="auto-style2">
                                <asp:Label ID="LabelEmail" runat="server" Text="Email:"></asp:Label>
                            </td>
                            <td class="auto-style5">
                                <asp:TextBox ID="TextBoxEmail" runat="server" OnTextChanged="TextBoxEmail_TextChanged"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="LabelPassword" runat="server" Text="Password: "></asp:Label>
                            </td>
                            <td class="auto-style4">
                                <asp:TextBox ID="TextBoxPassword" runat="server" OnTextChanged="TextBoxPassword_TextChanged1"></asp:TextBox>
                            </td>
                        <tr>
                            <td class="auto-style2">
                                <br />
                                <asp:Label ID="LabelId" runat="server" Text="Id" Visible="False"></asp:Label>
                                &nbsp;<asp:Label ID="LabelUsertype" runat="server" Text="admin" Visible="False"></asp:Label>
                                &nbsp;<br />
                            </td>
                            <td class="auto-style4">
                                <br />
                                <asp:Button ID="ButtonSaveChanges" runat="server" Text="Save Changes" OnClick="ButtonSaveChanges_Click" CssClass="mytooltip" />
                                <br />
                                <asp:Label ID="LabelErrorMessage" runat="server" ForeColor="#FF5050" Text="Failed to Update Changes!" Visible="False"></asp:Label>
                                <br />
                                <br />
                                <br />
                            </td>
                        </tr>
                    </table>
				</div>
			</div>
        </div>
		</div>
	</div>

    <div class="contact-box">
    </div>
	<!-- End AProfile -->
</asp:Content>
