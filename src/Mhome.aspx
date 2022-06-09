<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMember.Master" AutoEventWireup="true" CodeBehind="Mhome.aspx.cs" Inherits="Assignment.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

				<div class="containerrr">
					<img src="../images/Welcome.png" alt="">
					
				</div>

	
	<!-- Start Annoucement -->
	<div class="text-center">		
			<div class="row">
				<div class="col-lg-12">
					<div class="heading-title text-center">
						<h2>Announcement</h2>
						<p>The latest news from admins of Chop Chop Cooking!</p>
					</div>
				</div>
			</div>
			<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Annc_Id" DataSourceID="SqlDataSource1" AllowPaging="True" HorizontalAlign="Center" BorderStyle="None" GridLines="None" PageSize="2" Width="519px">
				<Columns>
					<asp:TemplateField>
                        <ItemTemplate>
                            <br />
                            <table class="w-100">
                                <tr>
                                    <td>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Annc_title") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Annc_datetime") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Annc_text") %>'></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:TemplateField>
									</Columns>

												<PagerSettings PageButtonCount="4" />

					 </asp:GridView>
			<br />
            <asp:Label ID="AnncView" runat="server" Text="Register As Member to View Announcement!" Visible="False"></asp:Label>
			<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Announcement]"></asp:SqlDataSource>
	</div>
		<!-- End Annoucement -->

	<!-- Start About -->
	<div class="about-section-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6 col-sm-12 text-center">
					<div class="inner-column">
						<h1>We are<span> Chop Chop Cooking</span></h1>
						<h4>Our Little Story</h4>
						<p>Chop Chop Cooking is an online cooking site that offers delicious, quick, and easy recipes to all! Chop Chop Cooking aspires to provide a platform where every individual can learn and experience cooking with joy.</p>
						<p>We celebrate the joy of food with recipes that provide a stress-free kitchen experience made for real, actual, everyday life. So, start chopping and cook with us now! </p>
						<a class="btn btn-lg btn-circle btn-outline-new-white" href="Mabout.aspx">About Us</a>
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-12">
					<img src="../images/cutting.jpg" alt="" class="img-fluid">
				</div>
			</div>
		</div>
	</div>
	<!-- End About -->
	
		<!-- Start QT -->
	<div class="qt-box qt-background">
		<div class="container">
			<div class="row">
				<div class="col-md-8 ml-auto mr-auto text-center">
					<p class="lead ">
						" Simple ingredients prepared in a simple way - that's the best way to take your everyday cooking to a higher level."
					</p>
					<span class="lead">Jose Andres</span>
				</div>
			</div>
		</div>
	</div>
	<!-- End QT -->

	<!-- Start Recipe -->
	<div class="about-section-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6 col-sm-12 text-center">
					<div class="inner-column">
						<h1>Browse<span> Recipe</span></h1>
						<p>Browse through the list of deliciously quick and easy recipes below & start chopping.</p>
						
						<a class="btn btn-lg btn-circle btn-outline-new-white" href="MemberRecipe.aspx">Recipe</a>
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-12">
					<img src="../images/cutting.jpg" alt="" class="img-fluid">
				</div>
			</div>
		</div>
	</div>
	<!-- End Recipe -->

	<!-- Start Gallery -->
	<div class="gallery-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="heading-title text-center">
						<h2>Gallery</h2>
						<p>Browse through the dishes made by the CCC community!</p>
					</div>
				</div>
			</div>
			<div class="tz-gallery">
				<div class="row">
					<div class="col-sm-12 col-md-4 col-lg-4">
						<a class="lightbox" href="../images/gallery-img-01.jpg">
							<img class="img-fluid" src="../images/gallery-img-01.jpg" alt="Gallery Images">
						</a>
					</div>
					<div class="col-sm-6 col-md-4 col-lg-4">
						<a class="lightbox" href="../images/gallery-img-02.jpg">
							<img class="img-fluid" src="../images/gallery-img-02.jpg" alt="Gallery Images">
						</a>
					</div>
					<div class="col-sm-6 col-md-4 col-lg-4">
						<a class="lightbox" href="../images/gallery-img-03.jpg">
							<img class="img-fluid" src="../images/gallery-img-03.jpg" alt="Gallery Images">
						</a>
					</div>
					<div class="col-sm-12 col-md-4 col-lg-4">
						<a class="lightbox" href="../images/gallery-img-04.jpg">
							<img class="img-fluid" src="../images/gallery-img-04.jpg" alt="Gallery Images">
						</a>
					</div>
					<div class="col-sm-6 col-md-4 col-lg-4">
						<a class="lightbox" href="../images/gallery-img-05.jpg">
							<img class="img-fluid" src="../images/gallery-img-05.jpg" alt="Gallery Images">
						</a>
					</div> 
					<div class="col-sm-6 col-md-4 col-lg-4">
						<a class="lightbox" href="../images/gallery-img-06.jpg">
							<img class="img-fluid" src="../images/gallery-img-06.jpg" alt="Gallery Images">
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Gallery -->
	
	<!-- Start Media Reviews -->
	<div class="customer-reviews-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="heading-title text-center">
						<h2>Media Reviews</h2>
						<p>Check out the reviews by our community partners! </p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-8 mr-auto ml-auto text-center">
					<div id="reviews" class="carousel slide" data-ride="carousel">
						<div class="carousel-inner mt-4">
							<div class="carousel-item text-center active">
								<div class="img-box p-1 border rounded-circle m-auto">
									<img class="d-block w-100 rounded-circle" src="../images/quotations-button.png" alt="">
								</div>
								<h5 class="mt-4 mb-0"><strong class="text-warning text-uppercase">Paul Mitchel</strong></h5>
								<h6 class="text-dark m-0">Beginner</h6>
								<p class="m-0 pt-3">I love how simple the recipes are with ingredients listed and video guidance!</p>
							</div>
							<div class="carousel-item text-center">
								<div class="img-box p-1 border rounded-circle m-auto">
									<img class="d-block w-100 rounded-circle" src="../images/quotations-button.png" alt="">
								</div>
								<h5 class="mt-4 mb-0"><strong class="text-warning text-uppercase">Jane Fonsi</strong></h5>
								<h6 class="text-dark m-0">Housewife</h6>
								<p class="m-0 pt-3">The CCC community is very helpful when it comes to helping one another in cooking situations. Highly recommended!</p>
							</div>
							<div class="carousel-item text-center">
								<div class="img-box p-1 border rounded-circle m-auto">
									<img class="d-block w-100 rounded-circle" src="../images/quotations-button.png" alt="">
								</div>
								<h5 class="mt-4 mb-0"><strong class="text-warning text-uppercase">Amy Wusher</strong></h5>
								<h6 class="text-dark m-0">Teacher</h6>
								<p class="m-0 pt-3">Made 3 recipes from this website so far, everything is super delicious and easy to make!</p>
							</div>
						</div>
						<a class="carousel-control-prev" href="#reviews" role="button" data-slide="prev">
							<i class="fa fa-angle-left" aria-hidden="true"></i>
							<span class="sr-only">Previous</span>
						</a>
						<a class="carousel-control-next" href="#reviews" role="button" data-slide="next">
							<i class="fa fa-angle-right" aria-hidden="true"></i>
							<span class="sr-only">Next</span>
						</a>
                    </div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Media Reviews -->
</asp:Content>
