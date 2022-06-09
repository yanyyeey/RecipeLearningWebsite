<%@ Page Title="" Language="C#" MasterPageFile="~/SiteAdmin.Master" AutoEventWireup="true" CodeBehind="Aaddmember.aspx.cs" Inherits="Assignment.admin.Aaddmember" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 918px;
        }
        .auto-style12 {
            height: 13px;
            width: 259px;
        }
        .auto-style15 {
            width: 470px;
            height: 33px;
        }
        .auto-style17 {
            width: 439px;
            height: 33px;
        }
        .auto-style27 {
            height: 52px;
            width: 259px;
        }
        .auto-style28 {
            width: 439px;
            height: 52px;
        }
        .auto-style29 {
            height: 52px;
        }
        .auto-style30 {
            height: 50px;
            width: 259px;
        }
        .auto-style31 {
            width: 439px;
            height: 50px;
        }
        .auto-style32 {
            height: 50px;
        }
        .auto-style33 {
            height: 51px;
            width: 259px;
        }
        .auto-style34 {
            width: 439px;
            height: 51px;
        }
        .auto-style35 {
            height: 51px;
        }
        .auto-style36 {
            width: 470px;
            height: 33px;
            text-align: left;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- Start header -->
	<div class="all-page-title page-breadcrumb">
		<div class="container text-center">
			<div class="row">
				<div class="col-lg-12">
					<h1>Add New Member</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End header -->

    <!-- Start Aaddmember -->
    <div class="contact-box">
        <div class="container text-center" style="width: 89%">
            <div class="row">
				<div class="form-group">
					<table class="auto-style3" align="center">
                        <tr>
                            <td class="auto-style27">
                                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#FF9933" NavigateUrl="~/Adashboard.aspx">&lt; Manage User</asp:HyperLink>
                            </td>
                            <td class="auto-style28">
                                &nbsp;</td>
                            <td class="auto-style29">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style27">
                                <asp:Label ID="LabelName" runat="server" Text="Name: "></asp:Label>
                            </td>
                            <td class="auto-style28">
                                <asp:TextBox ID="TextBoxName" runat="server" Width="200px" OnTextChanged="TextBoxName_TextChanged"></asp:TextBox>
                            </td>
                            <td class="auto-style29">
                                <asp:RequiredFieldValidator ID="ValidatorName" runat="server" ControlToValidate="TextBoxName" EnableClientScript="False" ErrorMessage="Please Enter Name." ForeColor="#FF3300">Please Enter Name.</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style30">
                                <asp:Label ID="LabelUsername" runat="server" Text="Username: "></asp:Label>
                            </td>
                            <td class="auto-style31">
                                <asp:TextBox ID="TextBoxUsername" runat="server" Width="200px" OnTextChanged="TextBoxUsername_TextChanged"></asp:TextBox>
                            </td>
                            <td class="auto-style32">
                                <asp:RequiredFieldValidator ID="ValidatorUsername" runat="server" ControlToValidate="TextBoxUsername" EnableClientScript="False" ErrorMessage="Please Enter Username." ForeColor="#FF3300">Please Enter Username.</asp:RequiredFieldValidator>
                                &nbsp;<asp:Label ID="LabelUsernameTakenError" runat="server" Text="Username Has Been Taken!" Visible="False" ForeColor="#FF3300"></asp:Label>
                                <br />
                                <asp:Label ID="LabelUsernameLengthError" runat="server" Text="Username must be between 8 and 16 characters." Visible="False" ForeColor="#FF3300"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style33">
                                <asp:Label ID="LabelEmail" runat="server" Text="Email: "></asp:Label>
                            </td>
                            <td class="auto-style34">
                                <asp:TextBox ID="TextBoxEmail" runat="server" Width="200px" OnTextChanged="TextBoxEmail_TextChanged"></asp:TextBox>
                            </td>
                            <td class="auto-style35">
                                <asp:RequiredFieldValidator ID="ValidatorEmail" runat="server" ControlToValidate="TextBoxEmail" EnableClientScript="False" ErrorMessage="Please Enter Email." ForeColor="#FF3300">Please Enter Email.</asp:RequiredFieldValidator>
                                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ControlToValidate="TextBoxEmail" EnableClientScript="False" ErrorMessage="Invalid Email." ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                <br />
                                <asp:Label ID="LabelEmailTakenError" runat="server" Text="Email Has Been Taken!" Visible="False" ForeColor="#FF3300"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style30">
                                <asp:Label ID="LabelGender" runat="server" Text="Gender:"></asp:Label>
                            </td>
                            <td class="auto-style31">
                                <asp:DropDownList ID="DropDownGender" runat="server" Height="27px" Width="200px" CssClass="offset-sm-0" OnSelectedIndexChanged="DropDownGender_SelectedIndexChanged">
                                    <asp:ListItem>Female</asp:ListItem>
                                    <asp:ListItem>Male</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style32">
                                </td>
                        </tr>
                        <tr>
                            <td class="auto-style30">
                                <asp:Label ID="LabelCountry" runat="server" Text="Country:"></asp:Label>
                            </td>
                            <td class="auto-style31">
                                <asp:TextBox ID="TextBoxCountry" runat="server" Width="200px" OnTextChanged="TextBoxCountry_TextChanged"></asp:TextBox>
                            </td>
                            <td class="auto-style32">
                                <asp:RequiredFieldValidator ID="ValidatorCountry" runat="server" ControlToValidate="TextBoxCountry" EnableClientScript="False" ErrorMessage="Please Enter Country." ForeColor="#FF3300">Please Enter Country.</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style33">
                                <asp:Label ID="LabelPassword" runat="server" Text="Password: "></asp:Label>
                            </td>
                            <td class="auto-style34">
                                <asp:TextBox ID="TextBoxPassword" runat="server" Width="200px" OnTextChanged="TextBoxPassword_TextChanged" TextMode="Password"></asp:TextBox>
                                <br />
                                <asp:CheckBox ID="CheckBoxPassword" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox2_CheckedChanged1" Text="Show Password" CausesValidation="True" />
                            </td>
                            <td class="auto-style35">
                                <asp:RequiredFieldValidator ID="ValidatorPassword" runat="server" ControlToValidate="TextBoxPassword" EnableClientScript="False" ErrorMessage="Please Enter Password." ForeColor="#FF3300">Please Enter Password.</asp:RequiredFieldValidator>
                                <br />
                                <asp:Label ID="LabelPasswordLengthError" runat="server" Text="Password must be between 8 and 16 characters." Visible="False" ForeColor="#FF3300"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style33">
                                <asp:Label ID="LabelConfirmPassword" runat="server" Text="Confirm Password: "></asp:Label>
                            </td>
                            <td class="auto-style34">
                                <asp:TextBox ID="TextBoxConfirmPassword" runat="server" Width="200px" OnTextChanged="TextBoxConfirmPassword_TextChanged" TextMode="Password"></asp:TextBox>
                                <br />
                                <asp:CheckBox ID="CheckBoxConfirmPassword" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged1" Text="Show Password" CausesValidation="True" />
                            </td>
                            <td class="auto-style35">
                                <asp:RequiredFieldValidator ID="ValidatorPassword0" runat="server" ControlToValidate="TextBoxConfirmPassword" EnableClientScript="False" ErrorMessage="Please Enter Password." ForeColor="#FF3300" Display="Dynamic">Please Confirm Password.</asp:RequiredFieldValidator>
                                <br />
                                <asp:Label ID="LabelPasswordMatchError" runat="server" Text="Password Does Not Match!" Visible="False" ForeColor="#FF3300"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style12">
                                <asp:Label ID="LabelErrorMessage" runat="server" Text="Error Message" Visible="False"></asp:Label>
                                &nbsp;&nbsp;
                                <asp:Label ID="LabelId" runat="server" Text="Id" Visible="False"></asp:Label>
                                &nbsp;&nbsp;
                                <asp:Label ID="LabelUserType" runat="server" Text="member" Visible="False"></asp:Label>
                            </td>
                            <td class="auto-style17">
                                <br />
                                &nbsp;<asp:Button ID="ButtonAddMember" runat="server" OnClick="ButtonAddMember_Click" Text="Add Member" BackColor="#FFDE59" BorderStyle="None" CssClass="mytooltip" Height="50px" Width="120px" />
                            </td>
                            <td class="auto-style36">
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style12">
                                &nbsp;</td>
                            <td class="auto-style17">
                                &nbsp;</td>
                            <td class="auto-style15">
                                &nbsp;</td>
                        </tr>
                    </table>
                </div>
			</div>
        </div>
    </div>
	<!-- End Aaddmember -->
</asp:Content>
