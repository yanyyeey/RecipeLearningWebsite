<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMember.Master" AutoEventWireup="true" CodeBehind="Mregister.aspx.cs" Inherits="Assignment.member.Mregister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 313px;
            height: 110px;
        }
        .auto-style3 {
            width: 923px;
            height: 337px;
            margin-bottom: 0px;
            margin-right: 15px;
        }
        .auto-style6 {
            height: 110px;
        }
        .auto-style9 {
            width: 313px;
            height: 60px;
        }
        .auto-style10 {
            height: 60px;
        }
        .auto-style11 {
            height: 60px;
            width: 496px;
        }
        .auto-style12 {
            height: 110px;
            width: 496px;
        }
        .auto-style13 {
            height: 60px;
            width: 708px;
        }
        .auto-style14 {
            height: 110px;
            width: 708px;
        }
        .auto-style15 {
            width: 313px;
            height: 56px;
        }
        .auto-style16 {
            height: 56px;
            width: 496px;
        }
        .auto-style17 {
            height: 56px;
            width: 708px;
        }
        .auto-style18 {
            height: 56px;
        }
        .auto-style19 {
            width: 313px;
            height: 64px;
        }
        .auto-style20 {
            height: 64px;
            width: 496px;
        }
        .auto-style21 {
            height: 64px;
            width: 708px;
        }
        .auto-style22 {
            height: 64px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Start All Pages -->
	<div class="all-page-title page-breadcrumb">
		<div class="container text-center">
			<div class="row">
				<div class="col-lg-12">
					<h1>Sign Up</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End All Pages -->

    <!-- Start Mregister -->
    <div class="contact-box">
        <div class="container text-center" style="width: 90%; height: 633px;">
            <div class="row">
				<div class="form-group">
					<table class="auto-style3" align="center">
                        <tr>
                            <td class="auto-style9">
                                <asp:Label ID="LabelName" runat="server" Text="Name: "></asp:Label>
                            </td>
                            <td class="auto-style11">
                                <asp:TextBox ID="TextBoxName" runat="server" Width="200px" OnTextChanged="TextBoxName_TextChanged"></asp:TextBox>
                            &nbsp;</td>
                            <td class="auto-style13">
                                <asp:RequiredFieldValidator ID="ValidatorName" runat="server" ControlToValidate="TextBoxName" EnableClientScript="False" ErrorMessage="Please Enter Name." ForeColor="#FF3300" Display="Dynamic">Please Enter Name.</asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style10">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style9">
                                <asp:Label ID="LabelUsername" runat="server" Text="Username: "></asp:Label>
                            </td>
                            <td class="auto-style11">
                                <asp:TextBox ID="TextBoxUsername" runat="server" Width="200px" OnTextChanged="TextBoxUsername_TextChanged1"></asp:TextBox>
                            &nbsp;</td>
                            <td class="auto-style13">
                                <asp:RequiredFieldValidator ID="ValidatorUsername" runat="server" ControlToValidate="TextBoxUsername" EnableClientScript="False" ErrorMessage="Please Enter Username." ForeColor="#FF3300" Display="Dynamic">Please Enter Username.</asp:RequiredFieldValidator>
                                &nbsp;<asp:Label ID="LabelUsernameTakenError" runat="server" Text="Username Has Been Taken!" Visible="False" ForeColor="#FF3300"></asp:Label>
                                <br />
                                <asp:Label ID="LabelUsernameLengthError" runat="server" Text="Username must be between 8 and 16 characters." Visible="False" ForeColor="#FF3300"></asp:Label>
                                <br />
                            </td>
                            <td class="auto-style10">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style15">
                                <asp:Label ID="LabelEmail" runat="server" Text="Email: "></asp:Label>
                            </td>
                            <td class="auto-style16">
                                <asp:TextBox ID="TextBoxEmail" runat="server" Width="200px" OnTextChanged="TextBoxEmail_TextChanged"></asp:TextBox>
                            &nbsp;<br />
                            </td>
                            <td class="auto-style17">
                                <asp:RequiredFieldValidator ID="ValidatorEmail" runat="server" ControlToValidate="TextBoxEmail" EnableClientScript="False" ErrorMessage="Please Enter Email." ForeColor="#FF3300" Display="Dynamic">Please Enter Email.</asp:RequiredFieldValidator>
                            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ControlToValidate="TextBoxEmail" EnableClientScript="False" ErrorMessage="Invalid Email." ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>
                            &nbsp;<br />
                                <asp:Label ID="LabelEmailTakenError" runat="server" Text="Email Has Been Taken!" Visible="False" ForeColor="#FF3300"></asp:Label>
                            </td>
                            <td class="auto-style18">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style19">
                                <asp:Label ID="LabelGender" runat="server" Text="Gender:"></asp:Label>
                            </td>
                            <td class="auto-style20">
                                <asp:DropDownList ID="DropDownGender" runat="server" Height="35px" Width="205px" CssClass="offset-sm-0" OnSelectedIndexChanged="DropDownGender_SelectedIndexChanged">
                                    <asp:ListItem>Female</asp:ListItem>
                                    <asp:ListItem>Male</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style21">
                                &nbsp;</td>
                            <td class="auto-style22">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style9">
                                <asp:Label ID="LabelCountry" runat="server" Text="Country:"></asp:Label>
                            </td>
                            <td class="auto-style11">
                                <asp:TextBox ID="TextBoxCountry" runat="server" Width="200px" OnTextChanged="TextBoxCountry_TextChanged"></asp:TextBox>
                            &nbsp;</td>
                            <td class="auto-style13">
                                <asp:RequiredFieldValidator ID="ValidatorCountry" runat="server" ControlToValidate="TextBoxCountry" EnableClientScript="False" ErrorMessage="Please Enter Country." ForeColor="#FF3300" Display="Dynamic">Please Enter Country.</asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style10">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style9">
                                <asp:Label ID="LabelPassword" runat="server" Text="Password: "></asp:Label>
                            </td>
                            <td class="auto-style11">
                                <asp:TextBox ID="TextBoxPassword" runat="server" Width="200px" OnTextChanged="TextBoxPassword_TextChanged" TextMode="Password"></asp:TextBox>
                            &nbsp;<br />
                                <asp:CheckBox ID="CheckBoxPassword" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox2_CheckedChanged1" Text="Show Password" CausesValidation="True" />
                            </td>
                            <td class="auto-style13">
                                <asp:RequiredFieldValidator ID="ValidatorPassword" runat="server" ControlToValidate="TextBoxPassword" EnableClientScript="False" ErrorMessage="Please Enter Password." ForeColor="#FF3300" Display="Dynamic">Please Enter Password.</asp:RequiredFieldValidator>
                            &nbsp;<br />
                                <asp:Label ID="LabelPasswordLengthError" runat="server" Text="Password must be between 8 and 16 characters." Visible="False" ForeColor="#FF3300"></asp:Label>
                            </td>
                            <td class="auto-style10">
<%--                                <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBoxPassword" EnableClientScript="False" ErrorMessage="Please enter 6 characters or more." ForeColor="#CC3300" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>--%>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">
                                <asp:Label ID="LabelConfirmPassword" runat="server" Text="Confirm Password: "></asp:Label>
                            </td>
                            <td class="auto-style11">
                                &nbsp;<asp:TextBox ID="TextBoxConfirmPassword" runat="server" Width="200px" OnTextChanged="TextBoxConfirmPassword_TextChanged" TextMode="Password"></asp:TextBox>
                            &nbsp;<br />
                                <asp:CheckBox ID="CheckBoxConfirmPassword" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged1" Text="Show Password" CausesValidation="True" />
                            </td>
                            <td class="auto-style13">
                                <asp:RequiredFieldValidator ID="ValidatorPassword0" runat="server" ControlToValidate="TextBoxConfirmPassword" EnableClientScript="False" ErrorMessage="Please Enter Password." ForeColor="#FF3300" Display="Dynamic">Please Confirm Password.</asp:RequiredFieldValidator>
                                <br />
                                <asp:Label ID="LabelPasswordMatchError" runat="server" Text="Password Does Not Match!" Visible="False" ForeColor="#FF3300"></asp:Label>
                                <br />
                            </td>
                            <td class="auto-style10">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                &nbsp;&nbsp;
                                <asp:Label ID="LabelId" runat="server" Text="Id" Visible="False"></asp:Label>
                                &nbsp;&nbsp;
                                <asp:Label ID="LabelUserType" runat="server" Text="member" Visible="False"></asp:Label>
                            </td>
                            <td class="auto-style12">
                                &nbsp;<br />
                                <asp:Button ID="ButtonSignUp" runat="server" OnClick="ButtonSignUp_Click" Text="Sign Up" BackColor="#FFDE59" BorderStyle="None" CssClass="mytooltip" />
                                <br />
                                <br />
                                <asp:Label ID="LabelExistingUser" runat="server" Text="Existing User?" ForeColor="Black"></asp:Label>
                                <asp:Button ID="ButtonLogin" runat="server" Text="Login" OnClick="ButtonLogin_Click" CssClass="signupbutton" BorderStyle="None" Height="30px" />
                                <br />
                                <asp:Label ID="LabelErrorMessage" runat="server" Text="Error Message" Visible="False"></asp:Label>
                                <br />
                                <br />
                            </td>
                            <td class="auto-style14">
                                &nbsp;</td>
                            <td class="auto-style6">
                                &nbsp;</td>
                        </tr>
                    </table>
                </div>
			</div>
        </div>
    </div>
	<!-- End MRegister -->
</asp:Content>
