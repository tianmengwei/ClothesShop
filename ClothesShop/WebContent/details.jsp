<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js" lang="en"> 
<head>
	 
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Product details || Clothing</title>
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="${ctx }/front/images/icons/favicon.ico">
    <!-- Place favicon.ico in the root directory -->

    <!-- All css files are included here. -->
    <!-- Bootstrap fremwork main css -->
    <link rel="stylesheet" href="${ctx }/front/css/bootstrap.min.css">
    <!-- This core.css file contents all plugings css file. -->
    <link rel="stylesheet" href="${ctx }/front/css/core.css">
    <!-- Theme shortcodes/elements style -->
    <link rel="stylesheet" href="${ctx }/front/css/shortcode/shortcodes.css">
    <!-- Theme main style -->
    <link rel="stylesheet" href="${ctx }/front/style.css">
    <!-- Responsive css -->
    <link rel="stylesheet" href="${ctx }/front/css/responsive.css">
    <!-- User style -->
    <link rel="stylesheet" href="${ctx }/front/css/custom.css">  
    <link rel="stylesheet" href="${ctx }/front/css/color/skin-default.css">

    
    <!-- Modernizr JS -->
    <script src="${ctx }/front/js/vendor/modernizr-2.8.3.min.js"></script>
    <style type="text/css">
    	.col-md-2.col-sm-2{
    		float:none;
    	}
    	.col-md-7.col-sm-10.hidden-xs{
    		float:right;
    	}
    	
    	/*.col-md-3.hidden-sm.hidden-xs{
    		float:right;
    	}*/
    	.img-0{
    		height:700px;
    	}
    </style>
    <script type="text/javascript">
     	function myselect(){
     		document.selectForm.submit();
     	}
    </script>
</head>

<body>
    <!-- Body main wrapper start -->
    <div class="wrapper home-one">
       
        <!-- Start of header area -->
        <header class="header-area header-wrapper">
            <div class="header-top-bar black-bg clearfix">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3 col-sm-3 col-xs-6">
                            <div class="login-register-area">
                                <ul>
                                    <li><a href="${ctx }/login.jsp">Login</a></li>
                                    <li><a href="${ctx }/login.jsp">Register</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6 hidden-xs">
                            <div class="social-search-area text-center">
                                <div class="social-icon socile-icon-style-2">
                                    <ul>
                                        <li><a href="#" title="facebook"><i class="fa fa-facebook"></i></a> </li>
                                        <li><a href="#" title="twitter"><i class="fa fa-twitter"></i></a> </li>
                                        <li> <a href="#" title="dribble"><i class="fa fa-dribbble"></i></a></li>
                                        <li> <a href="#" title="behance"><i class="fa fa-behance"></i></a> </li>
                                        <li> <a href="#" title="rss"><i class="fa fa-rss"></i></a> </li>
                                    </ul>
                                 </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-6">
                            <div class="cart-currency-area login-register-area text-right">
                                <ul>
                                    <li>
                                        <div class="header-currency">
                                            <select>
                                                <option value="1">USD</option>
                                                <option value="2">Pound</option>
                                                <option value="3">Euro</option>
                                                <option value="4">Dinar</option>
                                            </select>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="header-cart">
                                            <div class="cart-icon"> <a href="${ctx }/cart.jsp">Cart<i class="zmdi zmdi-shopping-cart"></i></a></div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="sticky-header"  class="header-middle-area">
                <div class="container">
                    <div class="full-width-mega-dropdown">
                        <div class="row">
                            <div class="col-md-2 col-sm-2">
                                <div class="logo ptb-20"><a href="${ctx }/index.jsp"> 
									<img src="${ctx }/front/images/logo/logo.png" alt="main logo"></a>
								</div>
                            </div>
                            <div class="col-md-7 col-sm-10 hidden-xs">
                                <nav id="primary-menu">
                                    <ul class="main-menu">
                                        <li class="current"><a class="active" href="${ctx }/index.jsp">Home</a></li>
                                        <li class="mega-parent pos-rltv"><a href="shop.html">Man</a>
                                            <div class="mega-menu-area mma-800">
                                                <ul class="single-mega-item">
                                                   <li class="menu-title uppercase">Shirts</li>
                                                    <li><a href="${ctx }/front/shop.html">Shirt 01</a></li>
                                                    <li><a href="${ctx }/front/shop.html">Shirt 02</a></li>
                                                </ul>
                                                <ul class="single-mega-item">
                                                   <li class="menu-title uppercase">Coats</li>
                                                    <li><a href="${ctx }/front/shop.html">Coat 01</a></li>
                                                    <li><a href="${ctx }/front/shop.html">Coat 02</a></li>
                                                </ul>
                                                <ul class="single-mega-item">
                                                   <li class="menu-title uppercase">Pants</li>
                                                    <li><a href="${ctx }/front/shop.html">Pant 01</a></li>
                                                    <li><a href="${ctx }/front/shop.html">Pant 02</a></li>
                                                </ul>                                               
                                               
                                                <div class="mega-banner-img">
                                                    <a href="single-product.html"><img src="${ctx }/front/images/banner/banner-fashion-02.jpg" alt=""></a>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="mega-parent pos-rltv"><a href="${ctx }/front/shop.html">Women</a>
                                            <div class="mega-menu-area mma-700">
                                                <ul class="single-mega-item">
                                                   <li class="menu-title uppercase">Skirts</li>
                                                    <li><a href="${ctx }/front/shop.html">skirt 01</a></li>
                                                    <li><a href="${ctx }/front/shop.html">skirt 02</a></li>
                                                </ul>
                                                 <ul class="single-mega-item">
                                                   <li class="menu-title uppercase">Shirts</li>
                                                    <li><a href="${ctx }/front/shop.html">Shirt 01</a></li>
                                                    <li><a href="${ctx }/front/shop.html">Shirt 02</a></li>
                                                </ul>
                                                 <ul class="single-mega-item">
                                                   <li class="menu-title uppercase">Pants</li>
                                                    <li><a href="${ctx }/front/shop.html">Pants 01</a></li>
                                                    <li><a href="${ctx }/front/shop.html">Pants 02</a></li>
                                                </ul>
                                                
                                                <div class="mega-banner-img">
                                                    <a href="single-product.html"><img src="${ctx }/front/images/banner/banner-fashion.jpg" alt=""></a>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="mega-parent"><a href="${ctx }/front/shop.html">Shortcut</a>
                                       
                                        </li>
                                        <li class="mega-parent"><a href="index.html">Pages</a>
                                            
                                        </li>                     
                                        <li><a href="${ctx }/clothes/list2">List</a></li>
                                        <li><a href="${ctx }/front/about-us.html">ABOUT</a></li>
                                    </ul>
                                </nav>
                            </div>
                            <div class="col-md-3 hidden-sm hidden-xs">
                                <div class="search-box global-table">
                                    <div class="global-row">
                                        <div class="global-cell">
                                             <form action="${ctx }/clothes/findClothesDetail" name="selectForm">
                                                <div class="input-box">
                                                    <input class="single-input" placeholder="Search anything" type="text" name="clothesname">
                                                    <a href="javascript:myselect()"><button class="src-btn"><i class="fa fa-search"></i></button></a>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- End of header area -->
        
        <!--breadcumb area start -->
        <div class="breadcumb-area overlay pos-rltv">
            <div class="bread-main">
                <div class="bred-hading text-center">
                    <h5>Prodcut Details</h5> </div>
                <ol class="breadcrumb">
                    <li class="home"><a title="Go to Home Page" href="${ctx }/index.jsp">Home</a></li>
                    <li class="active">product-details</li>
                </ol>
            </div>
        </div>
        <!--breadcumb area end -->
 
  <!--single-protfolio-area are start-->
        <div class="single-protfolio-area ptb-70">
          <div class="container">
              <div class="row">
              <c:forEach items="${detailList }" var="detail">
              	<form action="${ctx }/cart/addShoppingCart">
                    <div class="col-md-7 col-sm-12 col-xs-12">
                       <div class="portfolio-thumbnil-area">
                        <div class="product-more-views">
                            <div class="tab_thumbnail" data-tabs="tabs">
                                <div class="thumbnail-carousel">
                                    <ul>
                                       <li class="active">
                                        <a href="#view11" class="shadow-box" aria-controls="view11" data-toggle="tab"><img src="${ctx}/${detail.img1}" alt="" /></a></li>
                                       <li>
                                        <a href="#view22" class="shadow-box" aria-controls="view22" data-toggle="tab"><img src="${ctx}/${detail.img2}" alt="" /></a></li>
                                       <li>
                                        <a href="#view33" class="shadow-box" aria-controls="view33" data-toggle="tab"><img src="${ctx}/${detail.img3}" alt="" /></a></li>
                                       <li>
                                        <a href="#view44" class="shadow-box" aria-controls="view44" data-toggle="tab"><img src="${ctx}/${detail.img4}" alt="" /></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="tab-content active-portfolio-area pos-rltv">
                           <div class="social-tag">
                              <a href="#"><i class="zmdi zmdi-share"></i></a>
                           </div>
                            <div role="tabpanel" class="tab-pane active" id="view11">
                                <div class="product-img">
                                    <a class="fancybox" data-fancybox-group="group" href="${ctx}/${detail.img1}"><img src="${ctx}/${detail.img1}" alt="Single portfolio" /></a>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="view22">
                                <div class="product-img">
                                    <a class="fancybox" data-fancybox-group="group" href="${ctx}/${detail.img2}"><img src="${ctx}/${detail.img2}" alt="Single portfolio" /></a>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="view33">
                                <div class="product-img">
                                    <a class="fancybox" data-fancybox-group="group" href="${ctx}/${detail.img3}"><img src="${ctx}/${detail.img3}" alt="Single portfolio" /></a>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="view44">
                                <div class="product-img">
                                    <a class="fancybox" data-fancybox-group="group" href="${ctx}/${detail.img4}"/><img src="${ctx}/${detail.img4}" alt="Single portfolio" /></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                    <div class="col-md-5 col-sm-12 col-xs-12">
                        <div class="single-product-description">
                           <div class="sp-top-des">
                                <h3>${detail.clothesname }</span></h3>
                                <div class="prodcut-ratting-price">
                                    <div class="prodcut-price">
                                        <div class="new-price"> ${detail.clothesprice } </div>
                                    </div>
                                </div>
                            </div>                            
                            <div class="sp-des">
                                <p>${detail.introduce }</p>
                            </div>
                            <div class="sp-bottom-des">
                            <div class="single-product-option">
                                <div class="sort product-type">
                                    <label>Size: </label>
                                    <select id="input-sort-size">
                                        <option value="#">S</option>
                                        <option value="#">M</option>
                                        <option value="#">L</option>
                                        <option value="#">XL</option>
                                        <option value="#" selected="">Chose Your Size</option>
                                    </select>
                                </div>
                            </div>
                            <div class="quantity-area">
                                <label>Qty :</label>
                                <div class="cart-quantity">
                                    <form action="#" method="POST" id="myform">
                                        <div class="product-qty">
                                            <div class="cart-quantity">
                                                <div class="cart-plus-minus">
                                                    <div class="dec qtybutton">-</div>
                                                        <input type="text" value="01" name="qtybutton" class="cart-plus-minus-box">
                                                    <div class="inc qtybutton">+</div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="social-icon socile-icon-style-1">
                                <ul>
                                    <li><input type="submit" value="Add To Cart" class="add-cart add-cart-text" data-placement="left" tabindex="0"></li>
                                </ul>
                            </div>
                      </div>
                  </div>
              </div>
            </form>
          </c:forEach>
          </div>  
        </div>
        </div>
        <!--single-protfolio-area are end-->
        
        <!--descripton-area start -->
        <div class="descripton-area">
            <div class="container">
                <div class="row">
                    <div class="product-area tab-cars-style">
                        <div class="title-tab-product-category">
                            <div class="col-md-12 text-center">
                                <ul class="nav mb-40 heading-style-2" role="tablist">
                                    <li role="presentation"><a href="#newarrival" aria-controls="newarrival" role="tab" data-toggle="tab">Description</a></li>
                                    <li role="presentation" class="active"><a href="#bestsellr" aria-controls="bestsellr" role="tab" data-toggle="tab">Review</a></li>
                                    <li role="presentation"><a href="#specialoffer" aria-controls="specialoffer" role="tab" data-toggle="tab">Tags</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <div class="col-sm-12">
                            <div class="content-tab-product-category">
                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div role="tabpanel" class="tab-pane fix fade in" id="newarrival">
                                    <div class="review-wraper">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
                                            <br> veniam, quis nostrud exercitation.</p>
                                        <h5>ABOUT ME</h5>
                                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English</p>
                                        <h5>SIZE & FIT</h5>
                                        <ul>
                                            <li>Model wears: Style Photoliya U2980</li>
                                            <li>Model's height: 185”66</li>
                                        </ul>
                                        <h5>Overview</h5>
                                        <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form.</p>
                                    </div>
                                </div>
                                <div role="tabpanel" class="tab-pane fix fade in active" id="bestsellr">
                                    <div class="review-wraper">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim <br> veniam, quis nostrud exercitation.</p>
                                       <h5>SIZE & FIT</h5>
                                       <ul>
                                           <li>Model wears: Style Photoliya U2980</li>
                                           <li>Model's height: 185”66</li>
                                       </ul>
                                        <h5>ABOUT ME</h5>
                                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English</p>
                                       <h5>Overview</h5>
                                       <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form.</p>
                                    </div>
                                </div>
                                <div role="tabpanel" class="tab-pane fix fade in" id="specialoffer">
                                    <ul class="tag-filter">
                                        <li><a href="#">Fashion</a></li>
                                        <li><a href="#">Women</a></li>
                                        <li><a href="#">Winter</a></li>
                                        <li><a href="#">Street Style</a></li>
                                        <li><a href="#">Style</a></li>
                                        <li><a href="#">Shop</a></li>
                                        <li><a href="#">Collection</a></li>
                                        <li><a href="#">Spring 2016</a></li>
                                        <li><a href="#">Street Style</a></li>
                                        <li><a href="#">Style</a></li>
                                        <li><a href="#">Shop</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>    
        <!--descripton-area end-->        
                                     
	<!--footer bottom area start-->
        <div class="footer-bottom global-table">
            <div class="global-row">
                <div class="global-cell">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <div class="copyrigth"> Copyright @ 
									<a href="devitems.com">Devitems</a> All right reserved 
								</div>
                            </div>
                           
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--footer bottom area end-->
   
    </div> 
    <!-- Body main wrapper end -->

    <!-- Placed js at the end of the document so the pages load faster -->

    <!-- jquery latest version -->
    <script src="${ctx }/front/js/vendor/jquery-1.12.0.min.js"></script>
    <!-- Bootstrap framework js -->
    <script src="${ctx }/front/js/bootstrap.min.js"></script>
    <!-- Slider js -->
    <script src="${ctx }/front/js/slider/jquery.nivo.slider.pack.js"></script>
    <script src="${ctx }/front/js/slider/nivo-active.js"></script>
    <!-- counterUp-->
    <script src="${ctx }/front/js/jquery.countdown.min.js"></script>
    <!-- All js plugins included in this file. -->
    <script src="${ctx }/front/js/plugins.js"></script>
    <!-- Main js file that contents all jQuery plugins activation. -->
    <script src="${ctx }/front/js/main.js"></script>
</body>
</html>