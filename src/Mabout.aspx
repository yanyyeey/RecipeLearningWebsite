<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMember.Master" AutoEventWireup="true" CodeBehind="Mabout.aspx.cs" Inherits="Assignment.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Start header -->
	<div class="all-page-title page-breadcrumb">
		<div class="container text-center">
			<div class="row">
				<div class="col-lg-12">
					<h1>About Us</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End header -->
	
	<!-- Start About -->
	<div class="about-section-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6 text-center">
					<div class="inner-column">
						<h1>We are <span>Chop Chop Cooking</span></h1>
						<h4>Our Little Story</h4>
						<p>Chop Chop Cooking is an online cooking site that offers delicious, quick, and easy recipes to all! Chop Chop Cooking aspires to provide a platform where every individual can learn and experience cooking with joy. </p>
						<p>We celebrate the joy of food with recipes that provide a stress-free kitchen experience made for real, actual, everyday life. So, start chopping and cook with us now! </p>
						<p>The aim of our website is to provide a wide range of recipes that are quick, easy, and reliable for both members and non-members to explore the culinary world with an affordable and enjoyable experience.  </p>
						<a class="btn btn-lg btn-circle btn-outline-new-white" href="MemberRecipe.aspx">Browse Recipes</a>
					</div>
				</div>
				<div class="col-lg-6 col-md-6">
					<img src="../images/cutting.jpg" alt="" class="img-fluid">
				</div>
			</div>
		</div>
	</div>
	<!-- End About -->



	<!-- Start Team -->
	<div class="stuff-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="heading-title text-center">
						<h2>Meet The Team</h2>
					</div>
				</div>
			</div>
			<div class="row">
                <div class="col-md-4 col-sm-6">
                    <div class="our-team">
                        <div class="pic">
                            <img src="images/pp-ljy.png"/>
                            <ul class="social">
                                <li><a href="https://www.linkedin.com/in/leong-jin-yong-013a1b1b8/" class="fa fa-linkedin"></a></li>
                            </ul>
                        </div>
                        <div class="team-content">
                            <h3 class="title">Leong Jin Yong</h3>
                            <span class="post">Web Developer</span>
                        </div>
                    </div>
                </div>

                <div class="col-md-4 col-sm-6">
                    <div class="our-team">
                        <div class="pic">
                            <img src="images/pp-nic.jpg"/>
                            <ul class="social">                
                                <li><a href="https://www.linkedin.com/in/nicoleee/" class="fa fa-linkedin"></a></li>
                            </ul>
                        </div>
                        <div class="team-content">
                            <h3 class="title">Nicole Ee Sze Mien</h3>
                            <span class="post">Web Designer</span>
                        </div>
                    </div>
                </div>

                <div class="col-md-4 col-sm-6">
                    <div class="our-team">
                        <div class="pic">
                            <img src="images/pp-sxy.jpg"/>
                            <ul class="social">
                                <li><a href="https://www.linkedin.com/in/xing-yan-sia-287641198/" class="fa fa-linkedin"></a></li>
                            </ul>
                        </div>
                        <div class="team-content">
                            <h3 class="title">Sia Xing Yan</h3>
                            <span class="post">Web Developer</span>
                        </div>
                    </div>
                </div>
				
				<div class="col-md-4 col-sm-6">
                    <div class="our-team">
                        <div class="pic">
                            <img src="images/pp-yyy.jpg"/>
                            <ul class="social">
                                <li><a href="https://www.linkedin.com/in/yapyanyee/" class="fa fa-linkedin"></a></li>
                            </ul>
                        </div>
                        <div class="team-content">
                            <h3 class="title">Yap Yan Yee</h3>
                            <span class="post">Web Developer</span>
                        </div>
                    </div>
                </div>
            </div>
		</div>
	</div>
	<!-- End Team -->

</asp:Content>
