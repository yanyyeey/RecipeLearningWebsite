<%@ Page Title="" Language="C#" MasterPageFile="~/SiteAdmin.Master" AutoEventWireup="true" CodeBehind="AaddRecipe.aspx.cs" Inherits="Assignment.AaddRecipe" %>
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
            width: 70px;
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Start header -->
	<div class="all-page-title page-breadcrumb">
		<div class="container text-center">
			<div class="row">
				<div class="col-lg-12">
					<h1>Admin add Recipe</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End header -->

    <!-- Start Arecipe -->
	<div class="contact-box">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="heading-title text-center">
						<h1>Insert New Recipe<br />
                            <br />
                                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#FF9933" NavigateUrl="~/Arecipe.aspx" Width="200px">&lt; Manage Recipe</asp:HyperLink>
                            <br />
                        </h1>
					</div>
					<table class="w-100">
                            <tr>
                                <td class="auto-style4"></td>
                                <td class="auto-style2">
                                    &nbsp;</td>
                                <td class="auto-style2">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style3">
                                    <asp:Label ID="Label2" runat="server" Text="Category:" Font-Bold="True"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="recipeCategory" runat="server" Font-Size="Medium" Width="270px"></asp:TextBox>
                                &nbsp;
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="recipeCategory" EnableClientScript="False" ErrorMessage="Recipe Category is Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4"></td>
                                <td class="auto-style5">
                                    <asp:Label ID="Label3" runat="server" Text="RecipeName:" Font-Bold="True"></asp:Label>
                                </td>
                                <td class="auto-style6">
                                    <asp:TextBox ID="recipeName" runat="server" Font-Size="Medium" Width="270px"></asp:TextBox>
                                &nbsp;
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="recipeName" EnableClientScript="False" ErrorMessage="Recipe Name is Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style3">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style2">
                                    <asp:Label ID="Label5" runat="server" Text="Description:" Font-Bold="True"></asp:Label>
                                </td>
                                <td class="auto-style2">
                                    <asp:TextBox ID="recipeDescription" runat="server" Font-Size="Medium" Height="200px" Width="950px" TextMode="MultiLine"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style2">
                                    &nbsp;</td>
                                <td class="auto-style2">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="recipeDescription" EnableClientScript="False" ErrorMessage="Recipe Description is Required!" ForeColor="Red" Width="267px"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4"></td>
                                <td class="auto-style2">
                                    <asp:Label ID="Label6" runat="server" Text="Duration:" Font-Bold="True"></asp:Label>
                                </td>
                                <td class="auto-style2">
                                    <asp:TextBox ID="recipeDuration" runat="server" Font-Size="Medium" Width="270px"></asp:TextBox>
                                &nbsp;
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="recipeDuration" EnableClientScript="False" ErrorMessage="Recipe Duration is Required!" ForeColor="Red" Width="267px"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4"></td>
                                <td class="auto-style5">
                                    <asp:Label ID="Label7" runat="server" Text="Servings:" Font-Bold="True"></asp:Label>
                                </td>
                                <td class="auto-style6">
                                    <asp:TextBox ID="recipeServings" runat="server" Font-Size="Medium" Width="270px"></asp:TextBox>
                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="recipeServings" EnableClientScript="False" ErrorMessage="Recipe Servings is Required!" ForeColor="Red" Width="267px"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style5">
                                    <asp:Label ID="Label8" runat="server" Text="Ingredients:" Font-Bold="True"></asp:Label>
                                </td>
                                <td class="auto-style6">
                                    <asp:TextBox ID="recipeIngredients" runat="server" Font-Size="Medium" Height="300px" Width="950px" TextMode="MultiLine"></asp:TextBox>
                                    <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="recipeIngredients" EnableClientScript="False" ErrorMessage="Recipe Ingredients is Required!" ForeColor="Red" Width="267px"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style5">
                                    <asp:Label ID="Label9" runat="server" Text="Steps:" Font-Bold="True"></asp:Label>
                                </td>
                                <td class="auto-style6">
                                    <asp:TextBox ID="recipeSteps" runat="server" Font-Size="Medium" Height="300px" Width="950px" TextMode="MultiLine"></asp:TextBox>
                                    <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="recipeSteps" EnableClientScript="False" ErrorMessage="Recipe Steps is Required!" ForeColor="Red" Width="267px"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style5">
                                    <asp:Label ID="Label10" runat="server" Text="Diet:" Font-Bold="True"></asp:Label>
                                </td>
                                <td class="auto-style6">
                                    <asp:TextBox ID="recipeDiet" runat="server" Font-Size="Medium" Width="270px"></asp:TextBox>
                                &nbsp;
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="recipeDiet" EnableClientScript="False" ErrorMessage="Recipe Diet is Required!" ForeColor="Red" Width="267px"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style7"></td>
                                <td class="auto-style3">
                                    <asp:Label ID="Label11" runat="server" Text="Image:" Font-Bold="True"></asp:Label>
                                </td>
                                <td class="auto-style3">
                                    <br />
                                    <asp:FileUpload ID="FileUploadImage" runat="server" Width="270px" />
                                    <br />
                                    <asp:Image ID="recipeImage" runat="server" Height="200px" Width="200px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style7">&nbsp;</td>
                                <td class="auto-style3">
                                    <asp:Label ID="Label12" runat="server" Text="Youtube Video Link:" Font-Bold="True"></asp:Label>
                                </td>
                                <td class="auto-style3">
                                    <asp:TextBox ID="recipeVideo" runat="server" Width="270px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style7">&nbsp;</td>
                                <td class="auto-style3">
                                    &nbsp;</td>
                                <td class="auto-style3">
                                    <asp:Label ID="id" runat="server" Text="id" Visible="False"></asp:Label>
&nbsp;&nbsp;<asp:Label ID="recipetype" runat="server" Text="recipe" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;<asp:Label ID="errMsg" runat="server" Text="errMsg" Visible="False"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style3">&nbsp;</td>
                                <td>
                                    <asp:Button ID="AddRecipeBtn" runat="server" Font-Bold="True" Font-Size="Medium" Text="Add Recipe" CssClass="mytooltip" OnClick="AddRecipeBtn_Click" Width="150px" />
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4"></td>
                                <td class="auto-style2"></td>
                                <td class="auto-style2"></td>
                            </tr>
                            <tr>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style3">&nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
				</div>		
			</div>
		</div>
	</div>


	<!-- End Arecipe -->

</asp:Content>
