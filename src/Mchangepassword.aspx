<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMember.Master" AutoEventWireup="true" CodeBehind="Mchangepassword.aspx.cs" Inherits="Assignment.Mchangepassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 344px;
        }
        .auto-style3 {
            width: 897px;
        }
        .auto-style4 {
            width: 394px;
        }
        .auto-style6 {
            width: 313px;
        }
        .auto-style7 {
            width: 344px;
            height: 51px;
        }
        .auto-style8 {
            width: 313px;
            height: 51px;
        }
        .auto-style9 {
            width: 394px;
            height: 51px;
        }
        .auto-style10 {
            width: 344px;
            height: 56px;
        }
        .auto-style11 {
            width: 313px;
            height: 56px;
        }
        .auto-style12 {
            width: 394px;
            height: 56px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <!-- Start All Pages -->
	<div class="all-page-title page-breadcrumb">
		<div class="container text-center">
			<div class="row">
				<div class="col-lg-12">
					<h1>Change Password</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End All Pages -->

    <!-- Start Mchangepassword -->
    <div class="contact-box">
        <div class="container text-center" style="width: 85%; height: 500px;">
            <div class="row">
				<div class="form-group">
					<table class="auto-style3" align="center">
                        <tr>
                            <td class="auto-style7">
                                <asp:Label ID="LabelOldPassword" runat="server" Text="Old Password: "></asp:Label>
                            </td>
                            <td class="auto-style8">
                                <asp:TextBox ID="TextBoxOldPassword" runat="server" Width="200px" OnTextChanged="TextBoxUsername_TextChanged" TextMode="Password"></asp:TextBox>
                            </td>
                            <td class="auto-style9">
                                <asp:Label ID="LabelValidatorOldPassword" runat="server" Text="Old Password is Incorrect." Visible="False" ForeColor="#FF3300"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="LabelNewPassword" runat="server" Text="New Password: "></asp:Label>
                            </td>
                            <td class="auto-style6">
                                <asp:TextBox ID="TextBoxNewPassword" runat="server" Width="200px" OnTextChanged="TextBoxUsername_TextChanged" TextMode="Password"></asp:TextBox>
                            </td>
                            <td class="auto-style4">
                                <asp:Label ID="LabelPasswordLengthError" runat="server" Text="Password must be between 8 and 16 characters." Visible="False" ForeColor="#FF3300"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10">
                                <asp:Label ID="LabelConfirmPassword" runat="server" Text="Confirm Password: "></asp:Label>
                            </td>
                            <td class="auto-style11">
                                <asp:TextBox ID="TextBoxConfirmPassword" runat="server" Width="200px" OnTextChanged="TextBoxConfirmPassword_TextChanged" TextMode="Password"></asp:TextBox>
                            </td>
                            <td class="auto-style12">
                                <asp:RequiredFieldValidator ID="ValidatorPassword0" runat="server" ControlToValidate="TextBoxConfirmPassword" EnableClientScript="False" ErrorMessage="Please Enter Password." ForeColor="#FF3300" Display="Dynamic">Please Confirm Password.</asp:RequiredFieldValidator>
                                <br />
                                <asp:Label ID="LabelPasswordMatchError" runat="server" Text="Password Does Not Match!" Visible="False" ForeColor="#FF3300"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="LabelId" runat="server" Text="Id" Visible="False"></asp:Label>
                                &nbsp;<asp:Label ID="LabelUsertype" runat="server" Text="member" Visible="False"></asp:Label>
                                &nbsp;<asp:Label ID="LabelOldPasswordCheck" runat="server" Text="Old Password" Visible="False" ForeColor="Black"></asp:Label>
                                <br />
                            </td>
                            <td class="auto-style6">
                                <br />
                                <asp:Button ID="ButtonChangePassword" runat="server" Text="Change Password" OnClick="ButtonChangePassword_Click" CssClass="mytooltip" Height="50px" Width="150px" />
                                <br />
                                <asp:Label ID="LabelErrorMessage" runat="server" ForeColor="#FF5050" Text="Failed to Update Password!" Visible="False"></asp:Label>
                                <br />
                                <asp:Button ID="ButtonBack" runat="server" Text="Back " OnClick="ButtonBack_Click" CssClass="signupbutton" BorderStyle="None" Height="30px" />
                                <br />
                                <br />
                            </td>
                            <td class="auto-style4">
                                &nbsp;</td>
                        </tr>
                    </table>
				</div>
			</div>
        </div>
    </div>
	<!-- End Mchangepassword -->
</asp:Content>
