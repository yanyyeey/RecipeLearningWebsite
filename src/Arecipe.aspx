<%@ Page Title="" Language="C#" MasterPageFile="~/SiteAdmin.Master" AutoEventWireup="true" CodeBehind="Arecipe.aspx.cs" Inherits="Assignment.WebForm17" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            height: 31px;
        }
        .auto-style3 {
            height: 29px;
        }
        .auto-style4 {
            height: 31px;
            width: 70px;
        }
        .auto-style5 {
            height: 29px;
            width: 22px;
        }
        .auto-style6 {
            height: 29px;
            width: 29px;
        }
        .auto-style7 {
            height: 29px;
            width: 70px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Start header -->
	<div class="all-page-title page-breadcrumb">
		<div class="container text-center">
			<div class="row">
				<div class="col-lg-12">
					<h1>Manage Recipe</h1>
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
						<h1>Recipe Manage Panel<br />
                            <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="Medium" ForeColor="#FF9900" NavigateUrl="~/AaddRecipe.aspx" style="border-bottom:2px solid Orange">Add Recipe</asp:HyperLink>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:HyperLink ID="HyperLink2" runat="server" Font-Size="Medium" ForeColor="#FF9900" NavigateUrl="~/Acomment.aspx" style="border-bottom:2px solid Orange">Manage Comment</asp:HyperLink>
                        </h1>
					</div>
					<table class="w-100" align="center">
                            <tr>
                                <td class="auto-style4"></td>
                                <td class="auto-style2">
                                    <asp:Label ID="Label1" runat="server" Text="RecipeID:" Font-Bold="True"></asp:Label>
                                </td>
                                <td class="auto-style2">
                                    <asp:Label ID="recipeId" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style3">
                                    <asp:Label ID="Label2" runat="server" Text="Category:" Font-Bold="True"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="recipeCategory" runat="server" Font-Size="Medium" Width="270px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="recipeCategory" EnableClientScript="False" ErrorMessage="Recipe Category Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4"></td>
                                <td class="auto-style2">
                                    <asp:Label ID="Label3" runat="server" Text="RecipeName:" Font-Bold="True"></asp:Label>
                                </td>
                                <td class="auto-style2">
                                    <asp:DropDownList ID="recipeName" runat="server" AutoPostBack="True" OnSelectedIndexChanged="recipeName_SelectedIndexChanged" Width="270px">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style2">
                                    <asp:Label ID="Label14" runat="server" Text="NewRecipeName:" Font-Bold="True"></asp:Label>
                                </td>
                                <td class="auto-style2">
                                    <asp:TextBox ID="NewRecipeName" runat="server" Font-Size="Medium" Width="270px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style3">
                                    <asp:Label ID="Label4" runat="server" Text="DateTime:" Font-Bold="True"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="recipeDatetime" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style2">
                                    <asp:Label ID="Label5" runat="server" Text="Description:" Font-Bold="True"></asp:Label>
                                </td>
                                <td class="auto-style2">
                                    <asp:TextBox ID="recipeDescription" runat="server" Font-Size="Medium" Height="200px" Width="950px" TextMode="MultiLine"></asp:TextBox>
                                    <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="recipeDescription" EnableClientScript="False" ErrorMessage="Recipe Description Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4"></td>
                                <td class="auto-style2">
                                    <asp:Label ID="Label6" runat="server" Text="Duration:" Font-Bold="True"></asp:Label>
                                </td>
                                <td class="auto-style2">
                                    <asp:TextBox ID="recipeDuration" runat="server" Font-Size="Medium" Width="270px"></asp:TextBox>
                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="recipeDuration" EnableClientScript="False" ErrorMessage="Recipe Duration Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4"></td>
                                <td class="auto-style5">
                                    <asp:Label ID="Label7" runat="server" Text="Servings:" Font-Bold="True"></asp:Label>
                                </td>
                                <td class="auto-style6">
                                    <asp:TextBox ID="recipeServings" runat="server" Font-Size="Medium" Width="270px"></asp:TextBox>
                                &nbsp;
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="recipeServings" EnableClientScript="False" ErrorMessage="Recipe Servings Required!" ForeColor="Red" Width="200px"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style5">
                                    <asp:Label ID="Label8" runat="server" Text="Ingredients:" Font-Bold="True"></asp:Label>
                                </td>
                                <td class="auto-style6">
                                    <asp:TextBox ID="recipeIngredients" runat="server" Font-Size="Medium" Height="300px" Width="950px" TextMode="MultiLine"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="recipeIngredients" EnableClientScript="False" ErrorMessage="Recipe Ingredients Required!" ForeColor="Red" Width="200px"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style5">
                                    <asp:Label ID="Label9" runat="server" Text="Steps:" Font-Bold="True"></asp:Label>
                                </td>
                                <td class="auto-style6">
                                    <br />
                                    <asp:TextBox ID="recipeSteps" runat="server" Font-Size="Medium" Height="300px" Width="950px" TextMode="MultiLine"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="recipeSteps" EnableClientScript="False" ErrorMessage="Recipe Steps Required!" ForeColor="Red" Width="200px"></asp:RequiredFieldValidator>
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
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="recipeDiet" EnableClientScript="False" ErrorMessage="Recipe Diet Required!" ForeColor="Red" Width="200px"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style7"></td>
                                <td class="auto-style3">
                                    <asp:Label ID="Label11" runat="server" Text="Image:" Font-Bold="True"></asp:Label>
                                </td>
                                <td class="auto-style3">
                                    <br />
                                    <asp:FileUpload ID="FileUploadImage" runat="server" />
                                    <br />
                                    <asp:Image ID="recipeImage" runat="server" Height="200px" Width="200px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style7">&nbsp;</td>
                                <td class="auto-style3">
                                    <asp:Label ID="Label12" runat="server" Text="Current Video:" Font-Bold="True"></asp:Label>
                                </td>
                                <td class="auto-style3">
                                    <asp:Label ID="recipeVideo" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style7">&nbsp;</td>
                                <td class="auto-style3">
                                    <asp:Label ID="Label13" runat="server" Text="New Video:" Font-Bold="True"></asp:Label>
                                </td>
                                <td class="auto-style3">
                                    <asp:TextBox ID="newRecipeVideo" runat="server" Width="270px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style7">&nbsp;</td>
                                <td class="auto-style3">
                                    &nbsp;</td>
                                <td class="auto-style3">
                                    <asp:Label ID="id" runat="server" Text="id" Visible="False"></asp:Label>
&nbsp;&nbsp;
                                    <asp:Label ID="Recipetype" runat="server" Text="recipe" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="errMsg" runat="server" Text="errMsg" Visible="False"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style3">&nbsp;</td>
                                <td>
                                    <asp:Button ID="recipeUpdateBtn" runat="server" Font-Bold="True" Font-Size="Medium" Text="Update" CssClass="mytooltip" OnClick="recipeUpdateBtn_Click" />
&nbsp;
&nbsp;&nbsp;
                                    <asp:Button ID="recipeDeleteBtn" runat="server" Font-Bold="True" Font-Size="Medium" Text="Delete" CssClass="mytooltip" OnClick="recipeDeleteBtn_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
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
