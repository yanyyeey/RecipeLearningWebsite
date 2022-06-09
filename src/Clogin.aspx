<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMember.Master" AutoEventWireup="true" CodeBehind="Clogin.aspx.cs" Inherits="Assignment.Clogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style3 {
        width: 680px;
        height: 131px;
    }
    .auto-style4 {
        width: 260px;
        height: 60px;
    }
    .auto-style5 {
        height: 60px;
    }
    .auto-style6 {
        width: 260px;
        height: 110px;
    }
    .auto-style7 {
        height: 110px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <!-- Start All Pages -->
	<div class="all-page-title page-breadcrumb">
		<div class="container text-center">
			<div class="row">
				<div class="col-lg-12">
					<h1>Login</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End All Pages -->

	 <!-- Start Clogin -->
    <div class="contact-box">
        <div class="container text-center" style="width: 65%; height: 500px;">
            <div class="row">
				<div class="form-group">
					<table class="auto-style3" align="center">
                        <tr>
                            <td class="auto-style4">
                                <asp:Label ID="LabelUsername" runat="server" Text="Username: "></asp:Label>
                            </td>
                            <td class="auto-style5">
                                <asp:TextBox ID="TextBoxUsername" runat="server" OnTextChanged="TextBoxUsername_TextChanged"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:Label ID="Label2" runat="server" Text="Password: "></asp:Label>
                            </td>
                            <td class="auto-style5">
                                <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" OnTextChanged="TextBoxPassword_TextChanged"></asp:TextBox>
                                <br />
                                <asp:CheckBox ID="CheckBoxPassword" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox2_CheckedChanged1" Text="Show Password" CausesValidation="True" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6">
                                <br />
                                <br />
                            </td>
                            <td class="auto-style7">
                                <br />
                                <asp:Button ID="ButtonLogin" runat="server" Text="Login" OnClick="ButtonLogin_Click" CssClass="mytooltip" />
                                <br />
                                <br />
                                <asp:Label ID="LabelNoAccount" runat="server" Text="No Account?" ForeColor="Black"></asp:Label>
                                <asp:Button ID="ButtonSignUp" runat="server" Text="Sign Up Now!" OnClick="ButtonSignUp_Click" CssClass="signupbutton" BorderStyle="None" Height="30px" />
                                <br />
                                <asp:RequiredFieldValidator ID="ValidatorUsername" runat="server" ControlToValidate="TextBoxUsername" EnableClientScript="False" ErrorMessage="Please enter your username." ForeColor="#FF5050"></asp:RequiredFieldValidator>
                                <br />
                                <asp:RequiredFieldValidator ID="ValidatorPassword" runat="server" ControlToValidate="TextBoxPassword" EnableClientScript="False" ErrorMessage="Please enter your password." ForeColor="#FF5050"></asp:RequiredFieldValidator>
                                <br />
                                <asp:Label ID="LabelFeedback" runat="server" Text="Username and Password not match!" ForeColor="#FF5050" Visible="False"></asp:Label>
                                <br />
                                <br />
                            </td>
                        </tr>
                    </table>
				</div>
			</div>
        </div>
    </div>
	<!-- End Clogin -->
</asp:Content>
