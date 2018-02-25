﻿<%@ Page Title="" Language="VB" MasterPageFile="~/Layout.master" AutoEventWireup="false" CodeFile="Product-Detail.aspx.vb" Inherits="Product_Detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- *** RIGHT COLUMN ***
		  _________________________________________________________ -->

                    <div class="col-sm-3">

                        <!-- *** MENUS AND FILTERS ***
 _________________________________________________________ -->
                        <div class="panel panel-default sidebar-menu">

                            <div class="panel-heading">
                                <h3 class="panel-title">Categories</h3>
                            </div>

                            <div class="panel-body">
                                <ul class="nav nav-pills nav-stacked category-menu">
                                    <li>
                                        <a href="shop-category.html">Men <span class="badge pull-right">42</span></a>
                                        <ul>
                                            <li><a href="shop-category.html">T-shirts</a>
                                            </li>
                                            <li><a href="shop-category.html">Shirts</a>
                                            </li>
                                            <li><a href="shop-category.html">Pants</a>
                                            </li>
                                            <li><a href="shop-category.html">Accessories</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="active">
                                        <a href="shop-category.html">Ladies  <span class="badge pull-right">123</span></a>
                                        <ul>
                                            <li><a href="shop-category.html">T-shirts</a>
                                            </li>
                                            <li><a href="shop-category.html">Skirts</a>
                                            </li>
                                            <li><a href="shop-category.html">Pants</a>
                                            </li>
                                            <li><a href="shop-category.html">Accessories</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="shop-category.html">Kids  <span class="badge pull-right">11</span></a>
                                        <ul>
                                            <li><a href="shop-category.html">T-shirts</a>
                                            </li>
                                            <li><a href="shop-category.html">Skirts</a>
                                            </li>
                                            <li><a href="shop-category.html">Pants</a>
                                            </li>
                                            <li><a href="shop-category.html">Accessories</a>
                                            </li>
                                        </ul>
                                    </li>

                                </ul>

                            </div>
                        </div>

                        <div class="panel panel-default sidebar-menu">

                            <div class="panel-heading">
                                <h3 class="panel-title">Brands</h3>
                                <a class="btn btn-xs btn-danger pull-right" href="#"><i class="fa fa-times-circle"></i> <span class="hidden-sm">Clear</span></a>
                            </div>

                            <div class="panel-body">

                                <form>
                                    <div class="form-group">
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox">Armani (10)
                                            </label>
                                        </div>
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox">Versace (12)
                                            </label>
                                        </div>
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox">Carlo Bruni (15)
                                            </label>
                                        </div>
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox">Jack Honey (14)
                                            </label>
                                        </div>
                                    </div>

                                    <button class="btn btn-default btn-sm btn-template-main"><i class="fa fa-pencil"></i> Apply</button>

                                </form>

                            </div>
                        </div>

                        <div class="panel panel-default sidebar-menu">

                            <div class="panel-heading">
                                <h3 class="panel-title clearfix">Colours</h3>
                                <a class="btn btn-xs btn-danger pull-right" href="#"><i class="fa fa-times-circle"></i> <span class="hidden-sm">Clear</span></a>
                            </div>

                            <div class="panel-body">

                                <form>
                                    <div class="form-group">
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox"> <span class="colour white"></span> White (14)
                                            </label>
                                        </div>
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox"> <span class="colour blue"></span> Blue (10)
                                            </label>
                                        </div>
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox"> <span class="colour green"></span> Green (20)
                                            </label>
                                        </div>
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox"> <span class="colour yellow"></span> Yellow (13)
                                            </label>
                                        </div>
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox"> <span class="colour red"></span> Red (10)
                                            </label>
                                        </div>
                                    </div>

                                    <button class="btn btn-default btn-sm btn-template-main"><i class="fa fa-pencil"></i> Apply</button>

                                </form>

                            </div>
                        </div>

                        <!-- *** MENUS AND FILTERS END *** -->

                        <div class="banner">
                            <a href="shop-category.html">
                                
                            </a>
                        </div>
                        <!-- /.banner -->
                    </div> 
    
    <div class="col-md-9">
                
              
<!-- Product Detail Part? -->
                <div class="row" id="productMain">
                    <div class="col-sm-6">
                        <div id="mainImage">
                            <img src="img/17.jpg" alt="" class="img-responsive">
                           
                        </div>

                        <div class="ribbon sale">
                            <div class="theribbon">SALE</div>
                            <div class="ribbon-background"></div>
                        </div>
                        <!-- /.ribbon -->

                        <div class="ribbon new">
                            <div class="theribbon">NEW</div>
                            <div class="ribbon-background"></div>
                        </div>
                        <!-- /.ribbon -->

                    </div>
<!-- Product Detail Part Start -->
                    <div class="col-sm-6">
                        <div class="box">

                           <%-- <form>--%>
                                <div class="sizes">
                                    <%--<asp:Image ID="imgProduct" runat="server" />--%>
					                <h2><asp:Label ID="lblProductName" runat="server" Text=""></asp:Label></h2>
                                    <h3><asp:Label ID="lblProductDescription" runat="server" Text=""></asp:Label></h3>
					                <p>Web ID: <asp:Label ID="lblProductNo" runat="server" Text=""></asp:Label></p>
                                    <%--<h3>Available sizes</h3>

                                    <label for="size_s">
                                        <a href="#">S</a>
                                        <input type="radio" id="size_s" name="size" value="s" class="size-input">
                                    </label>
                                    <label for="size_m">
                                        <a href="#">M</a>
                                        <input type="radio" id="size_m" name="size" value="m" class="size-input">
                                    </label>
                                    <label for="size_l">
                                        <a href="#">L</a>
                                        <input type="radio" id="size_l" name="size" value="l" class="size-input">
                                    </label>--%>

                                </div>

                                <p class="price">$<asp:Label ID="lblPrice" runat="server" Text=""></asp:Label></p>

                                <p class="text-center">
                                    <label>Quantity:</label>
                                    <input type="text" id="tbQuantity" runat="server" Width ="10px" />                  
                                    <asp:Button ID="btnAdd" runat="server" Text="Add to Cart" />
                                  <%--  <button type="submit" class="btn btn-template-main"><i class="fa fa-shopping-cart"></i> Add to cart</button>
                                    <button type="submit" class="btn btn-default" data-toggle="tooltip" data-placement="top" title="Add to wishlist"><i class="fa fa-heart-o"></i>
                                    </button>--%>
                                </p>

                      <%--      </form>--%>
                        </div>
<!-- Product Detail Part end -->
                        <%--<div class="row" id="thumbs">
                            <div class="col-xs-4">
                                <a href="img/detailbig1.jpg" class="thumb">
                                    <img src="img/detailsquare.jpg" alt="" class="img-responsive">
                                </a>
                            </div>
                            <div class="col-xs-4">
                                <a href="img/detailbig2.jpg" class="thumb">
                                    <img src="img/detailsquare2.jpg" alt="" class="img-responsive">
                                </a>
                            </div>
                            <div class="col-xs-4">
                                <a href="img/detailbig3.jpg" class="thumb">
                                    <img src="img/detailsquare3.jpg" alt="" class="img-responsive">
                                </a>
                            </div>
                        </div>--%>
                    </div>

                </div>



                <div class="box social" id="product-social">
                    <h4>Show it to your friends</h4>
                    <p>
                        <a href="#" class="external facebook" data-animate-hover="pulse"><i class="fa fa-facebook"></i></a>
                        <a href="#" class="external gplus" data-animate-hover="pulse"><i class="fa fa-google-plus"></i></a>
                        <a href="#" class="external twitter" data-animate-hover="pulse"><i class="fa fa-twitter"></i></a>
                        <a href="#" class="email" data-animate-hover="pulse"><i class="fa fa-envelope"></i></a>
                    </p>
                </div>

                <div class="row">
                    <div class="col-md-3 col-sm-6">
                        <div class="box text-uppercase">
                            <h3>You may also like these products</h3>
                        </div>
                    </div>

                    <div class="col-md-3 col-sm-6">
                        <div class="product">
                            <div class="image">
                                <a href="#">
                                    <img src="img/c6.jpg" alt="" class="img-responsive image1">
                                </a>
                            </div>
                            <div class="text">
                                <h3>Fur coat</h3>
                                <p class="price">$143</p>

                            </div>
                        </div>
                        <!-- /.product -->
                    </div>

                    <div class="col-md-3 col-sm-6">
                        <div class="product">
                            <div class="image">
                                <a href="#">
                                    <img src="img/c4.jpg" alt="" class="img-responsive image1">
                                </a>
                            </div>
                            <div class="text">
                                <h3>Fur coat</h3>
                                <p class="price">$143</p>
                            </div>
                        </div>
                        <!-- /.product -->
                    </div>

                    <div class="col-md-3 col-sm-6">
                        <div class="product">
                            <div class="image">
                                <a href="#">
                                    <img src="img/c1.jpg" alt="" class="img-responsive image1">
                                </a>
                            </div>
                            <div class="text">
                                <h3>Fur coat</h3>
                                <p class="price">$143</p>
                            </div>
                        </div>
                        <!-- /.product -->
                    </div>

                </div>

               
            </div>
            <!-- /.col-md-9 -->


            <!-- *** LEFT COLUMN END *** -->
</asp:Content>

