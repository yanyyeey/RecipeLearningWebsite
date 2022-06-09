<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMember.Master" AutoEventWireup="true" CodeBehind="MrecipeDetails.aspx.cs" Inherits="Assignment.WebForm20" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            height: 32px;
            text-align: center;
        }
        .auto-style4 {
            text-align: center;
            height: 29px;
        }
        .auto-style5 {
            width: 144px;
        }
        .auto-style6 {
            width: 1236px;
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
					<h1>Recipe Details</h1>
				</div>
			</div>
		</div>
	</div>
	<div class="contact-box">
        <%-- reply comment --%>
                    <table class="w-100">
                        <tr>
                            <td class="auto-style5">
                                &nbsp;</td>
                            <td class="auto-style6">
                    <asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" CssClass="auto-style23" DataKeyField="Recipe_name" DataSourceID="SqlDataSource1" GridLines="Both" OnItemCommand="DataList1_ItemCommand" style="margin-left: 0px" HorizontalAlign="Center">
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <ItemTemplate>
                            <table border="0" class="w-100">
                                <tr>
                                    <td class="text-center">
                                        <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Size="Large" Text='<%# Eval("Recipe_name") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-center">
                                        <asp:Image ID="Image2" runat="server" Height="450px" ImageUrl='<%# Eval("Image") %>' Width="830px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-center">&nbsp;<asp:Label ID="Label21" runat="server" Text='<%# Eval("Recipe_Id") %>' Visible="False" Font-Bold="False"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-center">
                                        <br />
&nbsp;<asp:Label ID="Label22" runat="server" Text='<%# Eval("Category") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-center">
                                        <br />
                                        &nbsp;<asp:Label ID="Label25" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style3">
                                        <br />
&nbsp;<asp:Label ID="Label26" runat="server" Text='<%# Eval("Duration") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-center">
                                        <br />
                                        <asp:Label ID="Label33" runat="server" Text="Servings: "></asp:Label>
&nbsp;<asp:Label ID="Label27" runat="server" Text='<%# Eval("Servings") %>'></asp:Label>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-center">
                                        <asp:Label ID="Label34" runat="server" Text="Diet: "></asp:Label>
                                        <asp:Label ID="Label30" runat="server" Text='<%# Eval("Diet") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-left">
                                        <br />
                                        <asp:Label ID="Label31" runat="server" Font-Bold="True" Text="Ingredients:"></asp:Label>
                                        <br />
                                        <asp:Label ID="Label28" runat="server" Text='<%# Eval("Ingredients") %>'></asp:Label>
                                        <br />
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-left">
                                        <asp:Label ID="Label32" runat="server" Font-Bold="True" Text="Steps:"></asp:Label>
                                        <br />
                                        <asp:Label ID="Label29" runat="server" Text='<%# Eval("Steps") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">
                                        <br />
                                    </td>
                                </tr>
                            </table>
                            <div class="text-center">
                                &nbsp;<asp:Literal ID="Literal1" runat="server" Text='<%# Eval("Video") %>'></asp:Literal>
                                <br />
                                <br />
                            </div>
                        </ItemTemplate>
                        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    </asp:DataList>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
        </table>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Recipe] WHERE ([Recipe_Id] = @Recipe_Id)">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="Recipe_Id" QueryStringField="id" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                    <br />
                    <table class="w-100">
                        <tr>
                            <td>&nbsp;<div class="container" style=" padding:15px 20px; width:auto; ">
<div class="row">
<div class="auto-style2">
<asp:TextBox ID="text" runat="server" TextMode="MultiLine" Height="55px" Width="914px"></asp:TextBox>
    <%--</tr>
        </table>--%>
    <br />
    <asp:RequiredFieldValidator ID="ValidateComment" runat="server" ControlToValidate="text" EnableClientScript="False" ErrorMessage="Please write something before submit.." ForeColor="Red"></asp:RequiredFieldValidator>
<br />
    <asp:Button ID="comment" runat="server" CssClass="mytooltip" OnClick="comment_Click" Text="Comment" Width="98px" />
<asp:Label ID="username" runat="server" Text="username" Visible="False"></asp:Label>
&nbsp;
<asp:Label ID="commentid" runat="server" Text="id" Visible="False"></asp:Label>
    &nbsp;
    <asp:Label ID="RecipeId" runat="server" Visible="False"></asp:Label>
</div>
</div>
<%-- reply comment --%>
<div id="divReply" margin-top: 5px;" itemref="Parentreply" class="auto-style1" >

<br />
</div>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CommentId" Width="951px" CssClass="auto-style1" DataSourceID="SqlDataSource2" GridLines="None">
    <Columns>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:Label ID="Label35" runat="server" Text='<%# Eval("Username") %>'></asp:Label>
                <asp:Label ID="Label36" runat="server" Text='<%# Eval("CommentDate") %>'></asp:Label>
                <br />
                <asp:Label ID="Label37" runat="server" Text='<%# Eval("CommentText") %>'></asp:Label>
                <br />
                <asp:Label ID="Label38" runat="server" EnableViewState="False"></asp:Label>
                <br />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Comment] WHERE ([Recipe_Id] = @Recipe_Id)">
    <SelectParameters>
        <asp:QueryStringParameter Name="Recipe_Id" QueryStringField="id" Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>
<asp:Label ID="notification" runat="server"></asp:Label>
                                <br />
                                <br />
                                <br />
<br />
</div ></td>
                        </tr>
        </table>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
            <%--</tr>
        </table>--%>
	</div>
	<!-- End All Pages -->

</asp:Content>
