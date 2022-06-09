<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMember.Master" AutoEventWireup="true" CodeBehind="Mcontact.aspx.cs" Inherits="Assignment.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 585px;
        }
        .auto-style3 {
            width: 506px;
        }
        .auto-style4 {
            width: 878px;
        }
        .auto-style5 {
            width: 585px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Start All Pages -->
	<div class="all-page-title page-breadcrumb">
		<div class="container text-center">
			<div class="row">
				<div class="col-lg-12">
					<h1>Contact Us</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End All Pages -->
	
	<!-- Start Contact -->
	<div class="about-section-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6 text-center">
					<div class="inner-column">
						<h1>We are located at <span><br />Asia Pacific University</span></h1>
						<h4>Find us at:</h4>
						<p>Technology Park Malaysia Bukit Jalil, Kuala Lumpur 57000 Malaysia.</p>
					</div>
				</div>
				<div class="col-lg-6 col-md-6">
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3984.146627454418!2d101.69837271475707!3d3.055405697774977!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31cc4abb795025d9%3A0x1c37182a714ba968!2sAsia%20Pacific%20University%20of%20Technology%20%26%20Innovation%20(APU)!5e0!3m2!1sen!2smy!4v1650561714702!5m2!1sen!2smy" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
				</div>
			</div>
		</div>
	</div>

	<div class="contact-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="heading-title text-center">
						<h2>Contact Us</h2>
						<p>Have an inquiry or feedback for us? Drop us a message below!</p>
					</div>
				</div>
			</div>
			    <table class="auto-style4" align="center">
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label1" runat="server" Text="Your Name" style=" font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif"></asp:Label>
                        </td>
                        <td class="auto-style3">
                            <asp:TextBox ID="name" runat="server" Height="24px" Width="500px"></asp:TextBox>
                        </td>
                        <td class="auto-style5">
                                <asp:RequiredFieldValidator ID="ValidatorName" runat="server" ControlToValidate="name" EnableClientScript="False" ErrorMessage="Please Enter Name." ForeColor="#FF3300" Display="Dynamic">Name Cannot Be Empty!</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label2" runat="server" Text="Your Email" style=" font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif"></asp:Label>
                        </td>
                        <td class="auto-style3">
                            <asp:TextBox ID="email" runat="server" Height="24px" Width="500px"></asp:TextBox>
                        </td>
                        <td class="auto-style5">
                                <asp:RequiredFieldValidator ID="ValidatorName0" runat="server" ControlToValidate="email" EnableClientScript="False" ErrorMessage="Please Enter Name." ForeColor="#FF3300" Display="Dynamic">Email Cannot Be Empty!</asp:RequiredFieldValidator>
                            <br />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ControlToValidate="email" EnableClientScript="False" ErrorMessage="Invalid Email." ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic">Invalid Email.</asp:RegularExpressionValidator>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
                            <asp:Label ID="Label3" runat="server" Text="Your Message" style=" font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif"></asp:Label>
                        </td>
                        <td class="auto-style3">
                            <asp:TextBox ID="message" runat="server" Height="24px" Width="500px"></asp:TextBox>
                        </td>
                        <td class="auto-style5">
                                <asp:RequiredFieldValidator ID="ValidatorName1" runat="server" ControlToValidate="message" EnableClientScript="False" ErrorMessage="Please Enter Name." ForeColor="#FF3300" Display="Dynamic">Message Cannot Be Empty!</asp:RequiredFieldValidator>
                                <br />
                                <asp:Label ID="LabelMessageLengthError" runat="server" ForeColor="#FF3300" Text="Message must be more than 10 characters." Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                            &nbsp;</td>
                        <td class="auto-style3">
                            <asp:Button ID="submitbt" runat="server" OnClick="Button2_Click" Text="SEND MESSAGE" CssClass="mytooltip" Height="31px" Width="143px"/>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Contact]"></asp:SqlDataSource>
                            <br />
							<br />
                            <asp:Label ID="id" runat="server" Text="id" Visible="False"></asp:Label>
                            &nbsp;<asp:Label ID="type" runat="server" Text="contact" Visible="False"></asp:Label>
                        &nbsp;<asp:Label ID="errMsg" runat="server" Text="errMsg" Visible="False"></asp:Label>
                        </td>
                        <td class="auto-style2">
                            &nbsp;</td>
                    </tr>
                </table>
			</div>
		</div>
	<!-- End Contact -->
</asp:Content>
