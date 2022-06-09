<%@ Page Title="" Language="C#" MasterPageFile="~/SiteAdmin.Master" AutoEventWireup="true" CodeBehind="Acomment.aspx.cs" Inherits="Assignment.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            height: 29px;
            width: 564px;
        }
        .auto-style3 {
            width: 564px;
        }
        .auto-style4 {
            height: 29px;
        }
        .auto-style5 {
            width: 564px;
            height: 169px;
        }
        .auto-style7 {
            height: 169px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Start header -->
	<div class="all-page-title page-breadcrumb">
		<div class="container text-center">
			<div class="row">
				<div class="col-lg-12">
					<h1>Manage Recipe Comment</h1>
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
						<h1>Manage Comment Panel<br />
                                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#FF9933" NavigateUrl="~/Arecipe.aspx" Width="200px">&lt; Manage Recipe</asp:HyperLink>
                            </h1>
					</div>
					<table class="w-100">
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style3">
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CommentId" DataSourceID="SqlDataSource1" Height="200px" Width="768px">
                                        <Columns>
                                            <asp:BoundField DataField="CommentId" HeaderText="CommentId" ReadOnly="True" SortExpression="CommentId" />
                                            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                                            <asp:BoundField DataField="CommentText" HeaderText="CommentText" SortExpression="CommentText" />
                                            <asp:BoundField DataField="CommentDate" HeaderText="CommentDate" SortExpression="CommentDate" />
                                            <asp:BoundField DataField="Recipe_Id" HeaderText="Recipe_Id" SortExpression="Recipe_Id" />
                                        </Columns>
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Comment]"></asp:SqlDataSource>
                                    <br />
&nbsp;&nbsp;
                                    &nbsp;&nbsp;
                                    </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    </td>
                                <td class="auto-style4">
                                    <asp:Label ID="Label1" runat="server" Text="Delete Comment"></asp:Label>
                                </td>
                                <td class="auto-style4">
                                    </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="recipe" runat="server" Text="Recipe ID" Font-Bold="True"></asp:Label>
                                </td>
                                <td class="auto-style4">
                                <asp:Label ID="recipeID" runat="server" Text="recipeId"></asp:Label>
                                </td>
                                <td class="auto-style4">
                                    </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="comment" runat="server" Text="CommentID" Font-Bold="True"></asp:Label>
                                </td>
                                <td class="auto-style4">
                                    <asp:DropDownList ID="commentID" runat="server" AutoPostBack="True" Width="270px" DataSourceID="SqlDataSource1" DataTextField="CommentId" DataValueField="CommentId" OnSelectedIndexChanged="commentID_SelectedIndexChanged">
                                    </asp:DropDownList>
                                </td>
                                <td class="auto-style4">
                                    </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <asp:Label ID="user" runat="server" Text="Username" Font-Bold="True"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="username" runat="server" Font-Size="Medium" Width="200px" ></asp:TextBox>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <asp:Label runat="server" Text="Date and Time:" Font-Bold="True" ID="date"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="datetime" runat="server" Text="Date Time"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style5">
                                    <asp:Label ID="commText" runat="server" Text="CommentContent:" Font-Bold="True"></asp:Label>
                                </td>
                                <td class="auto-style7">
                                    <asp:TextBox ID="commentContent" runat="server" Font-Size="Medium" Width="380px" Height="180px" TextMode="MultiLine"></asp:TextBox>
                                </td>
                                <td class="auto-style7">
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    &nbsp;</td>
                                <td>
                                    <br />
                                    <br />
                                    </td>
                                <td>
                                    </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    &nbsp;</td>
                                <td>
&nbsp;&nbsp;
                                    &nbsp;&nbsp;
                                    <asp:Button ID="delete" runat="server" Font-Bold="True" Font-Size="Medium" Text="Delete" CssClass="mytooltip" Height="50px" OnClick="ButtonDelete_Click" />
&nbsp;&nbsp;
                                    <br />
                                    <br />
                                <asp:Label ID="LabelErrorMessage" runat="server" Text="Error Message" Visible="False"></asp:Label>
                                    </td>
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
