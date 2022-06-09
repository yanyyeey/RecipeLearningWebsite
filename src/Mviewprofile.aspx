<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMember.Master" AutoEventWireup="true" CodeBehind="Mviewprofile.aspx.cs" Inherits="Assignment.Mviewprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style type="text/css">
        .auto-style2 {
            width: 223px;
        }
        .auto-style3 {
            width: 720px;
        }
        .auto-style4 {
            width: 401px;
        }
            .auto-style5 {
                width: 223px;
                text-align: right;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Start header -->
	<div class="all-page-title page-breadcrumb">
		<div class="container text-center">
			<div class="row">
				<div class="col-lg-12">
					<h1>Profile</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End header -->

    <!-- Start MviewProfile -->
	<div class="about-section-box">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="heading-title text-center">
						<h1>Hello,
                            <asp:Label ID="LabelMemberName" runat="server" Text="MemberName"></asp:Label>
                            !</h1><br>
					</div>
				</div>		
			</div>
        <div class="container text-center" style="width: 68%; height: 500px; margin-top: 0px;">
            <div class="row">
				<div class="form-group">
					<table class="auto-style3" align="center">
                        <tr>
                            <td class="auto-style5">
                                Profile Picture:</td>
                            <td class="auto-style4">
                                <asp:Image ID="ProfilePictureMember" runat="server" Height="200px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                                <asp:Label ID="LabelUsername" runat="server" Text="Username:"></asp:Label>
                            </td>
                            <td class="auto-style4">
                                <asp:Label ID="LabelUsername_Display" runat="server" Text="Username"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                                <asp:Label ID="LabelName" runat="server" Text="Name:"></asp:Label>
                            </td>
                            <td class="auto-style4">
                                <asp:Label ID="LabelName_Display" runat="server" Text="Name"></asp:Label>
                            </td>
                        </tr>
                         <tr>
                            <td class="auto-style5">
                                <asp:Label ID="LabelEmail" runat="server" Text="Email:"></asp:Label>
                            </td>
                            <td class="auto-style4">
                                <asp:Label ID="LabelEmail_Display" runat="server" Text="Email"></asp:Label>
                            </td>
                        </tr>
                         <tr>
                            <td class="auto-style5">
                                <asp:Label ID="LabelGender" runat="server" Text="Gender:"></asp:Label>
                            </td>
                            <td class="auto-style4">
                                <asp:Label ID="LabelGender_Display" runat="server" Text="Gender"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                                <asp:Label ID="LabelCountry" runat="server" Text="Country:"></asp:Label>
                            </td>
                            <td class="auto-style4">
                                <asp:Label ID="LabelCountry_Display" runat="server" Text="Country"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <br />
                                <asp:Label ID="LabelId" runat="server" Text="Id" Visible="False"></asp:Label>
                                &nbsp;<asp:Label ID="LabelUsertype" runat="server" Text="member" Visible="False"></asp:Label>
                                &nbsp;<asp:Label ID="LabelImage" runat="server" Text="Image" Visible="False"></asp:Label>
                                <br />
                            </td>
                            <td class="auto-style4">
                                <br />
                                <asp:Button ID="ButtonEditProfile" runat="server" Text="Edit Profile" OnClick="ButtonEditProfile_Click" CssClass="mytooltip" />
                                <br />
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
	<!-- End MviewProfile -->
</asp:Content>
