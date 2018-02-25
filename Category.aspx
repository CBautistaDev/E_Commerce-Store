<%@ Page Title="" Language="VB" MasterPageFile="~/Layout.master" AutoEventWireup="false" CodeFile="Category.aspx.vb" Inherits="Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- *** LEFT COLUMN ***
			_________________________________________________________ -->

                    <div class="col-sm-3">

                        <!-- *** MENUS AND FILTERS ***
 _________________________________________________________ -->
                        <div class="panel panel-default sidebar-menu">
<!-- Sub Category Start -->
                            <div class="panel-heading">
                                <h3 class="panel-title">Categories<%--<asp:Label ID="lblMainCategoryName" runat="server" Text="Label"></asp:Label>--%></h3>
                            </div>
              
                            <ul class="nav nav-pills nav-stacked category-menu">
                                <li>
                                    <a href="Category.aspx"><asp:Label ID="lblMainCategoryName" runat="server" Text="Label"></asp:Label> <span class="badge pull-right"></span></a>
                                  <%--<h3 class="panel-title">Categories<asp:Label ID="lblMainCategoryName" runat="server" Text="Label"></asp:Label></h3>--%>
                                    <asp:SqlDataSource ID="sqlDSSubCategory" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionStringOnlineStore %>' SelectCommand=""></asp:SqlDataSource>
                                        <asp:DataList ID="dlSubCategory" runat="server" DataSourceID="sqlDSSubCategory" 
	                                        RepeatDirection="Vertical">
			                                    <ItemTemplate>
                                                    <div class="panel-body">                         
                                                        <ul>
                                                            <li><a href="Category.aspx?SubCategoryId=<%# Eval("CategoryID")%>&SubCategoryName=<%# Eval("CategoryName")%>&MainCategoryID=<% = Request.QueryString("MainCategoryID")%>&&MainCategoryName=<% = Request.QueryString("MainCategoryName")%>"><%# Trim(Eval("CategoryName"))%></a></li>
                                                            <%--<li><a href="#"><%# Trim(Eval("CategoryName"))%></a>
                                                            </li>--%>
                                                        </ul>
                                </li>                                    
                                </ul>
                            </div>                
			                           </ItemTemplate>
		                        </asp:DataList>
<!-- Sub Category End -->
                            <%--<div class="panel-body">
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
                                </ul>
                            </div>--%>
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
                    <!-- /.col-md-3 -->

                    <!-- *** LEFT COLUMN END *** -->

                    <!-- *** RIGHT COLUMN ***
			_________________________________________________________ -->

                    <div class="col-sm-9">

                        <p class="text-muted lead"><%--Featured Items--%><asp:Label ID="lblProductList" runat="server" Text="Featured Products"></asp:Label></p>

                        <div class="row products">
<!-- Product List Start-->
                            <asp:SqlDataSource ID="SqlDSProductList" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionStringOnlineStore %>' SelectCommand=""></asp:SqlDataSource>
                            <asp:DataList ID="dlProductList" runat="server" DataSourceID="SqlDSProductList" 
	                                    RepeatDirection="Horizontal">
			                        <ItemTemplate>
                                         <div class="col-md-10 <%--col-sm-6--%>">
                                            <div class="product">
                                                <div class="image">
                                                    <a href="shop-detail.html">
                                                        <img src="img/15.jpg" alt="" class="img-responsive image1">
                                                    </a>
                                                </div>
                                                <!-- /.image -->
                                                <div class="text">
                                                    <h3><%--<%# Eval("ProductName")%>--%><a href="Product-Detail.aspx?ProductID=<%# Eval("ProductID")%>"><%# Eval("ProductName")%></a></h3>
                                                    <p class="price">$<%# Eval("Price")%></p>
                                                    <p class="buttons">
                                                        <a href="shop-detail.html" class="btn btn-default">View detail</a>
                                                        <a href="shop-basket.html" class="btn btn-template-main"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                    </p>
                                                </div>
                                                <!-- /.text -->
                                            </div>
                                            <!-- /.product -->
                                        </div>
			                        </ItemTemplate>
		                    </asp:DataList>
<!-- Product List End -->
                            <%--<div class="col-md-4 col-sm-6">
                                <div class="product">
                                    <div class="image">
                                        <a href="shop-detail.html">
                                            <img src="img/product1.jpg" alt="" class="img-responsive image1">
                                        </a>
                                    </div>
                                    <!-- /.image -->
                                    <div class="text">
                                        <h3><a href="shop-detail.html">Fur coat with very but very very long name</a></h3>
                                        <p class="price">$143.00</p>
                                        <p class="buttons">
                                            <a href="shop-detail.html" class="btn btn-default">View detail</a>
                                            <a href="shop-basket.html" class="btn btn-template-main"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                        </p>
                                    </div>
                                    <!-- /.text -->
                                </div>
                                <!-- /.product -->
                            </div>--%>

                            <%--<div class="col-md-4 col-sm-6">
                                <div class="product">
                                    <div class="image">
                                        <a href="shop-detail.html">
                                            <img src="img/product2.jpg" alt="" class="img-responsive image1">
                                        </a>
                                    </div>
                                    <!-- /.image -->
                                    <div class="text">
                                        <h3><a href="shop-detail.html">White Blouse Armani</a></h3>
                                        <p class="price"><del>$280</del> $143.00</p>
                                        <p class="buttons">
                                            <a href="shop-detail.html" class="btn btn-default">View detail</a>
                                            <a href="shop-basket.html" class="btn btn-template-main"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                        </p>
                                    </div>
                                    <!-- /.text -->

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
                                <!-- /.product -->
                            </div>--%>

                            <%--<div class="col-md-4 col-sm-6">
                                <div class="product">
                                    <div class="image">
                                        <a href="shop-detail.html">
                                            <img src="img/product3.jpg" alt="" class="img-responsive image1">
                                        </a>
                                    </div>
                                    <!-- /.image -->
                                    <div class="text">
                                        <h3><a href="shop-detail.html">Black Blouse Versace</a></h3>
                                        <p class="price">$143.00</p>
                                        <p class="buttons">
                                            <a href="shop-detail.html" class="btn btn-default">View detail</a>
                                            <a href="shop-basket.html" class="btn btn-template-main"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                        </p>

                                    </div>
                                    <!-- /.text -->
                                </div>
                                <!-- /.product -->
                            </div>--%>

                            <%--<div class="col-md-4 col-sm-6">
                                <div class="product">
                                    <div class="image">
                                        <a href="shop-detail.html">
                                            <img src="img/product3.jpg" alt="" class="img-responsive image1">
                                        </a>
                                    </div>
                                    <!-- /.image -->
                                    <div class="text">
                                        <h3><a href="shop-detail.html">Black Blouse Versace</a></h3>
                                        <p class="price">$143.00</p>
                                        <p class="buttons">
                                            <a href="shop-detail.html" class="btn btn-default">View detail</a>
                                            <a href="shop-basket.html" class="btn btn-template-main"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                        </p>

                                    </div>
                                    <!-- /.text -->
                                </div>
                                <!-- /.product -->
                            </div>--%>

                            <%--<div class="col-md-4 col-sm-6">
                                <div class="product">
                                    <div class="image">
                                        <a href="shop-detail.html">
                                            <img src="img/product2.jpg" alt="" class="img-responsive image1">
                                        </a>
                                    </div>
                                    <!-- /.image -->
                                    <div class="text">
                                        <h3><a href="shop-detail.html">White Blouse Versace</a></h3>
                                        <p class="price">$143.00</p>
                                        <p class="buttons">
                                            <a href="shop-detail.html" class="btn btn-default">View detail</a>
                                            <a href="shop-basket.html" class="btn btn-template-main"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                        </p>

                                    </div>
                                    <!-- /.text -->

                                    <div class="ribbon new">
                                        <div class="theribbon">NEW</div>
                                        <div class="ribbon-background"></div>
                                    </div>
                                    <!-- /.ribbon -->
                                </div>
                                <!-- /.product -->
                            </div>--%>

                            <%--<div class="col-md-4 col-sm-6">
                                <div class="product">
                                    <div class="image">
                                        <a href="shop-detail.html">
                                            <img src="img/product1.jpg" alt="" class="img-responsive image1">
                                        </a>
                                    </div>
                                    <!-- /.image -->
                                    <div class="text">
                                        <h3><a href="shop-detail.html">Fur coat</a></h3>
                                        <p class="price">$143.00</p>
                                        <p class="buttons">
                                            <a href="shop-detail.html" class="btn btn-default">View detail</a>
                                            <a href="shop-basket.html" class="btn btn-template-main"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                        </p>

                                    </div>
                                    <!-- /.text -->
                                </div>
                                <!-- /.product -->
                            </div>--%>
                            <!-- /.col-md-4 -->
                        </div>
                        <!-- /.products -->

                        <%--<div class="row">

                            <div class="col-md-12 banner">
                                <a href="#">
                                    <img src="img/banner2.jpg" alt="" class="img-responsive">
                                </a>
                            </div>

                        </div>--%>


                        <div class="pages">

                            <%--<p class="loadMore">
                                <a href="#" class="btn btn-template-main"><i class="fa fa-chevron-down"></i> Load more</a>
                            </p>--%>

                            <ul class="pagination">
                                <li><a href="#">&laquo;</a>
                                </li>
                                <li class="active"><a href="#">1</a>
                                </li>
                                <li><a href="#">2</a>
                                </li>
                                <li><a href="#">3</a>
                                </li>
                                <li><a href="#">4</a>
                                </li>
                                <li><a href="#">5</a>
                                </li>
                                <li><a href="#">&raquo;</a>
                                </li>
                            </ul>
                        </div>


                    </div>
                    <!-- /.col-md-9 -->

                    <!-- *** RIGHT COLUMN END *** -->

</asp:Content>

