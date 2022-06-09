<%@ Page Title="" Language="C#" MasterPageFile="~/SiteAdmin.Master" AutoEventWireup="true" CodeBehind="Aupdateprofile.aspx.cs" Inherits="Assignment.WebForm19" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            height: 29px;
            width: 578px;
        }
        .auto-style5 {
            width: 527px;
        }
        .auto-style7 {
            width: 889px;
        }
        .auto-style8 {
            width: 822px;
        }
        .auto-style9 {
            width: 822px;
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
					<h1>Admin Profile</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End header -->

	<!-- Start Aupdateprofile -->
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
        <div class="container text-center" style="width: 86%; height: 500px; margin-top: 0px;">
            <div class="row">
				<div class="form-group">
					<table class="auto-style7" align="center">
                        <tr>
                            <td class="auto-style9">
                                <asp:Label ID="LabelUsername" runat="server" Text="Username:"></asp:Label>
                            </td>
                            <td class="auto-style5">
                                <asp:Label ID="LabelUsername_Display" runat="server" Text="Username"></asp:Label>
                            </td>
                            <td class="auto-style4">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style9">
                                <asp:Label ID="LabelName" runat="server" Text="Name:"></asp:Label>
                            </td>
                            <td class="auto-style5">
                                <asp:TextBox ID="TextBoxName" runat="server" OnTextChanged="TextBoxName_TextChanged" Width="200px"></asp:TextBox>
                            </td>
                            <td class="auto-style4">
                                <asp:RequiredFieldValidator ID="ValidatorName" runat="server" ControlToValidate="TextBoxName" EnableClientScript="False" ErrorMessage="Please Enter Name." ForeColor="#FF3300" Display="Dynamic">Name Cannot Be Empty!</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                         <tr>
                            <td class="auto-style9">
                                <asp:Label ID="LabelEmail" runat="server" Text="Email:"></asp:Label>
                            </td>
                            <td class="auto-style5">
                                <asp:TextBox ID="TextBoxEmail" runat="server" OnTextChanged="TextBoxEmail_TextChanged" Width="200px"></asp:TextBox>
                            </td>
                            <td class="auto-style4">
                                <asp:RequiredFieldValidator ID="ValidatorEmail" runat="server" ControlToValidate="TextBoxEmail" EnableClientScript="False" ErrorMessage="Email Cannot Be Empty!" ForeColor="#FF3300" Display="Dynamic">Email Cannot Be Empty!</asp:RequiredFieldValidator>
                                <br />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ControlToValidate="TextBoxEmail" EnableClientScript="False" ErrorMessage="Invalid Email." ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic">Invalid Email.</asp:RegularExpressionValidator>
                            &nbsp;<asp:Label ID="LabelEmailTakenError" runat="server" Text="Email Has Been Taken!" Visible="False" ForeColor="#FF3300"></asp:Label>
                            </td>
                        </tr>
                         <tr>
                            <td class="auto-style9">
                                <asp:Label ID="LabelGender" runat="server" Text="Gender:"></asp:Label>
                            </td>
                            <td class="auto-style5">
                                <asp:DropDownList ID="DropDownGender" runat="server" OnSelectedIndexChanged="DropDownListGender_SelectedIndexChanged">
                                    <asp:ListItem>F</asp:ListItem>
                                    <asp:ListItem>M</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style4">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style9">
                                <asp:Label ID="LabelCountry" runat="server" Text="Country:"></asp:Label>
                            </td>
                            <td class="auto-style5">
                                <asp:TextBox ID="TextBoxCountry" runat="server" OnTextChanged="TextBoxCountry_TextChanged" Width="200px"></asp:TextBox>
                            </td>
                            <td class="auto-style4">
                                <asp:RequiredFieldValidator ID="ValidatorCountry" runat="server" ControlToValidate="TextBoxCountry" EnableClientScript="False" ErrorMessage="Country Cannot Be Empty!" ForeColor="#FF3300" Display="Dynamic">Country Cannot Be Empty!</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">
                                <asp:Label ID="LabelPassword" runat="server" Text="Password: "></asp:Label>
                            </td>
                            <td class="auto-style5">
                                <asp:Button ID="ButtonChangePassword" runat="server" Text="Change Password" OnClick="ButtonChangePassword_Click" CssClass="signupbutton" BorderStyle="None" Height="30px" />
                            </td>
                            <td class="auto-style4">
                                <br />
                            </td>
                        <tr>
                            <td class="auto-style8">
                                <br />
                                <asp:Label ID="LabelId" runat="server" Text="Id" Visible="False"></asp:Label>
                                &nbsp;<asp:Label ID="LabelUsertype" runat="server" Text="admin" Visible="False"></asp:Label>
                                &nbsp;<br />
                            </td>
                            <td class="auto-style5">
                                <br />
                                <asp:Button ID="ButtonSaveChanges" runat="server" Text="Save Changes" OnClick="ButtonSaveChanges_Click" CssClass="mytooltip" Height="50px" Width="150px" />
                                <br />
                                <asp:Label ID="LabelErrorMessage" runat="server" ForeColor="#FF5050" Text="Failed to Update Changes!" Visible="False"></asp:Label>
                                <br />
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
	</div>

    <div class="contact-box">
    </div>
	<!-- End Aupdaterofile -->
</asp:Content>
