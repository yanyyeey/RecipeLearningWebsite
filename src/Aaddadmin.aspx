<%@ Page Title="" Language="C#" MasterPageFile="~/SiteAdmin.Master" AutoEventWireup="true" CodeBehind="Aaddadmin.aspx.cs" Inherits="Assignment.admin.Aaddadmin" %>
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
        .auto-style11 {
            width: 402px;
        }
        .auto-style12 {
            height: 13px;
            width: 402px;
        }
        .auto-style13 {
            height: 29px;
            width: 402px;
        }
        .auto-style14 {
            width: 70px;
            height: 33px;
        }
        .auto-style15 {
            width: 104px;
            height: 33px;
        }
        .auto-style16 {
            width: 402px;
            height: 33px;
        }
        .auto-style17 {
            height: 33px;
        }
        .auto-style18 {
            width: 70px;
            height: 34px;
        }
        .auto-style19 {
            width: 104px;
            height: 34px;
        }
        .auto-style20 {
            width: 402px;
            height: 34px;
        }
        .auto-style21 {
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
						<h1>Register New Admin Panel</h1>
</div>
					<table class="auto-style24">
                            <tr>
                                <td class="auto-style15">
                                    <asp:Label ID="Label2" runat="server" Text="Username:" Font-Bold="True"></asp:Label>
                                </td>
                                <td class="auto-style16">
                                <asp:TextBox ID="TextBoxUsername" runat="server" Width="200px" OnTextChanged="TextBoxUsername_TextChanged1"></asp:TextBox>
                                &nbsp;
                                    </td>
                                <td class="auto-style17">
                                <asp:RequiredFieldValidator ID="ValidatorUsername" runat="server" ControlToValidate="TextBoxUsername" EnableClientScript="False" ErrorMessage="Please Enter Username." ForeColor="#FF3300">Please Enter Username.</asp:RequiredFieldValidator>
                                    <br />
                                <asp:CustomValidator ID="CustomValidatorUsername" runat="server" ControlToValidate="TextBoxUsername" EnableClientScript="False" ErrorMessage="Username must be between 8 and 16 characters." ForeColor="#FF3300" OnServerValidate="CustomValidatorUsername_ServerValidate"></asp:CustomValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style19">
                                    <asp:Label ID="Label4" runat="server" Text="Name:" Font-Bold="True"></asp:Label>
                                </td>
                                <td class="auto-style20">
                                <asp:TextBox ID="TextBoxName" runat="server" Width="200px" OnTextChanged="TextBoxName_TextChanged"></asp:TextBox>
                                &nbsp;
                                    </td>
                                <td class="auto-style21">
                                <asp:RequiredFieldValidator ID="ValidatorName" runat="server" ControlToValidate="TextBoxName" EnableClientScript="False" ErrorMessage="Please Enter Name." ForeColor="#FF3300">Please Enter Name.</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <asp:Label ID="Label5" runat="server" Text="Gender:" Font-Bold="True"></asp:Label>
                                </td>
                                <td class="auto-style11">
                                    <asp:DropDownList ID="Gender" runat="server" >
                                        <asp:ListItem>F</asp:ListItem>
                                        <asp:ListItem>M</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <asp:Label ID="Label6" runat="server" Text="Email:" Font-Bold="True"></asp:Label>
                                </td>
                                <td class="auto-style11">
                                <asp:TextBox ID="TextBoxEmail" runat="server" Width="200px" OnTextChanged="TextBoxEmail_TextChanged"></asp:TextBox>
                                &nbsp;
                                    </td>
                                <td>
                                <asp:RequiredFieldValidator ID="ValidatorEmail" runat="server" ControlToValidate="TextBoxEmail" EnableClientScript="False" ErrorMessage="Please Enter Email." ForeColor="#FF3300">Please Enter Email.</asp:RequiredFieldValidator>
                                    <br />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ControlToValidate="TextBoxEmail" EnableClientScript="False" ErrorMessage="Invalid Email." ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">
                                    <asp:Label ID="Label7" runat="server" Text="Country:" Font-Bold="True"></asp:Label>
                                </td>
                                <td class="auto-style12">
                                    <asp:TextBox ID="Country" runat="server" Font-Size="Medium" Width="200px" OnTextChanged="Country_TextChanged"></asp:TextBox>
                                &nbsp;
                                    </td>
                                <td class="auto-style6">
                                <asp:RequiredFieldValidator ID="ValidatorCountry" runat="server" ControlToValidate="Country" EnableClientScript="False" ErrorMessage="Please Enter Country." ForeColor="#FF3300">Please Enter Country.</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">
                                    <asp:Label ID="Label3" runat="server" Text="Password:" Font-Bold="True"></asp:Label>
                                </td>
                                <td class="auto-style12">
                                    <asp:TextBox ID="Pwd" runat="server" Font-Size="Medium" Width="200px" OnTextChanged="Pwd_TextChanged"></asp:TextBox>
                                &nbsp;
                                    </td>
                                <td class="auto-style6">
                                <asp:RequiredFieldValidator ID="ValidatorPassword" runat="server" ControlToValidate="Pwd" EnableClientScript="False" ErrorMessage="Please Enter Password." ForeColor="#FF3300">Please Enter Password.</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">
                                <asp:Label ID="LabelConfirmPassword" runat="server" Text="Confirm Password: " Font-Bold="True"></asp:Label>
                                </td>
                                <td class="auto-style12">
                                    <asp:TextBox ID="TextBoxConfirmPassword" runat="server" Width="200px" OnTextChanged="TextBoxConfirmPassword_TextChanged" TextMode="Password"></asp:TextBox>
                                </td>
                                <td class="auto-style6">
                                <asp:CompareValidator ID="ValidatorConfirmPassword" runat="server" ControlToCompare="TextBoxConfirmPassword" ControlToValidate="Pwd" ErrorMessage="Password Does Not Match!" ForeColor="#FF3300">Password Does Not Match!</asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">
                                    &nbsp;</td>
                                <td class="auto-style12">
                                    &nbsp;</td>
                                <td class="auto-style6">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                <asp:Label ID="LabelId" runat="server" Text="Id" Visible="False"></asp:Label>
                                &nbsp;<asp:Label ID="LabelUsertype" runat="server" Text="admin" Visible="False"></asp:Label>
                                </td>
                                <td class="auto-style11">
                                    <asp:Button ID="AddNewBtn" runat="server" Font-Bold="True" Font-Size="Medium" Text="Add Member" CssClass="mytooltip" OnClick="AddNewBtn_Click" Width="154px" />
&nbsp;&nbsp;
                                    &nbsp;&nbsp;
                                    &nbsp;<br />
                                <asp:Label ID="LabelErrorMessage" runat="server" Text="Error Message" Visible="False"></asp:Label>
                                    &nbsp;
                                    </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style8"></td>
                                <td class="auto-style13">
&nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;
                                    </td>
                                <td class="auto-style9">
                                    &nbsp;</td>
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
