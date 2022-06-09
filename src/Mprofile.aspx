<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMember.Master" AutoEventWireup="true" CodeBehind="Mprofile.aspx.cs" Inherits="Assignment.WebForm14" %>
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

	<!-- Start MProfile -->
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
                            <td class="auto-style2">
                                Profile Picture:</td>
                            <td class="auto-style4">
                                <asp:FileUpload ID="FileUploadProfilePicture" runat="server" />
                                <br />
                                <asp:Image ID="ProfilePictureMember" runat="server" Height="200px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="LabelUsername" runat="server" Text="Username:"></asp:Label>
                            </td>
                            <td class="auto-style4">
                                <asp:Label ID="LabelUsername_Display" runat="server" Text="Username"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="LabelName" runat="server" Text="Name:"></asp:Label>
                            </td>
                            <td class="auto-style4">
                                <asp:TextBox ID="TextBoxName" runat="server" OnTextChanged="TextBoxName_TextChanged"></asp:TextBox>
                            </td>
                        </tr>
                         <tr>
                            <td class="auto-style2">
                                <asp:Label ID="LabelEmail" runat="server" Text="Email:"></asp:Label>
                            </td>
                            <td class="auto-style4">
                                <asp:TextBox ID="TextBoxEmail" runat="server" OnTextChanged="TextBoxEmail_TextChanged"></asp:TextBox>
                            </td>
                        </tr>
                         <tr>
                            <td class="auto-style2">
                                <asp:Label ID="LabelGender" runat="server" Text="Gender:"></asp:Label>
                            </td>
                            <td class="auto-style4">
                                <asp:RadioButton ID="RadioButtonMale" runat="server" GroupName="Gender" OnCheckedChanged="RadioButtonMale_CheckedChanged" Text="M" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:RadioButton ID="RadioButtonFemale" runat="server" GroupName="Gender" OnCheckedChanged="RadioButton2_CheckedChanged" Text="F" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="LabelCountry" runat="server" Text="Country:"></asp:Label>
                            </td>
                            <td class="auto-style4">
                                <asp:TextBox ID="TextBoxCountry" runat="server" OnTextChanged="TextBoxCountry_TextChanged"></asp:TextBox>
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
                                &nbsp;<asp:Label ID="LabelUsertype" runat="server" Text="member" Visible="False"></asp:Label>
                                &nbsp;<asp:Label ID="LabelImage" runat="server" Text="Image" Visible="False"></asp:Label>
                                <br />
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
	<!-- End MProfile -->
</asp:Content>
