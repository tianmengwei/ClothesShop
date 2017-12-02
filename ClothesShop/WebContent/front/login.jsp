<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js" lang="en"> 
<head>
	 
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Login || Clothing</title>
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
    <script type="text/javascript">
    	function mysubmit(){
    		document.loginForm.submit();
    	}
    </script>
    <script type="text/javascript">
    	function myregist(){
			document.registForm.submit();
		}
    </script>
</head>

<body>
    <!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->  

    <!-- Body main wrapper start -->
    <div class="wrapper login">
       
        <!-- Start of header area -->
        <header class="header-area header-wrapper">
            <div class="header-top-bar black-bg clearfix">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3 col-sm-3 col-xs-6">
                            <div class="login-register-area">
                                <ul>
                                    <li><a href="#">Login</a></li>
                                    <li><a href="#">Register</a></li>
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
                                            <div class="cart-icon"> <a href="#">Cart<i class="zmdi zmdi-shopping-cart"></i></a> <span>2</span> </div>
                                            <div class="cart-content-wraper">
                                                <div class="cart-single-wraper">
                                                    <div class="cart-img">
                                                        <a href="#"><img src="images/product/01.jpg" alt=""></a>
                                                    </div>
                                                    <div class="cart-content">
                                                        <div class="cart-name"> <a href="#">Aenean Eu Tristique</a> </div>
                                                        <div class="cart-price"> $70.00 </div>
                                                        <div class="cart-qty"> Qty: <span>1</span> </div>
                                                    </div>
                                                    <div class="remove"> <a href="#"><i class="zmdi zmdi-close"></i></a> </div>
                                                </div>
                                                <div class="cart-single-wraper">
                                                    <div class="cart-img">
                                                        <a href="#"><img src="images/product/02.jpg" alt=""></a>
                                                    </div>
                                                    <div class="cart-content">
                                                        <div class="cart-name"> <a href="#">Aenean Eu Tristique</a> </div>
                                                        <div class="cart-price"> $70.00 </div>
                                                        <div class="cart-qty"> Qty: <span>1</span> </div>
                                                    </div>
                                                    <div class="remove"> <a href="#"><i class="zmdi zmdi-close"></i></a> </div>
                                                </div>
                                                <div class="cart-subtotal"> Subtotal: <span>$200.00</span> </div>
                                                <div class="cart-check-btn">
                                                    <div class="view-cart"> <a class="btn-def" href="cart.html">View Cart</a> </div>
                                                    <div class="check-btn"> <a class="btn-def" href="checkout.html">Checkout</a> </div>
                                                </div>
                                            </div>
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
                                <div class="logo ptb-20"><a href="${ctx }/front/index.html"> <img src="${ctx }/front/images/logo/logo.png" alt="main logo"></a></div>
                            </div>
                            <div class="col-md-7 col-sm-10 hidden-xs">
                                <nav id="primary-menu">
                                    <ul class="main-menu">
                                        <li class="current"><a class="active" href="${ctx }/front/index.html">Home</a>
                                            <ul class="dropdown">
                                                <li><a class="active" href="${ctx }/front/index.html">Home One</a></li>
                                                <li><a href="${ctx }/front/index-2.html">Home Two</a></li>
                                                <li><a href="${ctx }/front/index-boxed-01.html">Home Three (Boxed)</a></li>
                                                <li><a href="${ctx }/front/index-boxed-02.html">Home Four (Boxed)</a></li>
                                            </ul>
                                        </li>
                                        <li class="mega-parent pos-rltv"><a href="shop.html">Man</a>
                                            <div class="mega-menu-area mma-800">
                                                <ul class="single-mega-item">
                                                   <li class="menu-title uppercase">Shirts</li>
                                                    <li><a href="${ctx }/front/shop.html">Shirt 01</a></li>
                                                    <li><a href="${ctx }/front/shop.html">Shirt 02</a></li>
                                                    <li><a href="${ctx }/front/shop.html">Shirt 03</a></li>
                                                    <li><a href="${ctx }/front/shop.html">Shirt 04</a></li>
                                                </ul>
                                                <ul class="single-mega-item">
                                                   <li class="menu-title uppercase">Pants</li>
                                                    <li><a href="${ctx }/front/shop.html">Pant 01</a></li>
                                                    <li><a href="${ctx }/front/shop.html">Pant 02</a></li>
                                                    <li><a href="${ctx }/front/shop.html">Pant 03</a></li>
                                                    <li><a href="${ctx }/front/shop.html">Pant 04</a></li>
                                                </ul>
                                                <ul class="single-mega-item">
                                                   <li class="menu-title uppercase">T-Shirts</li>
                                                    <li><a href="${ctx }/front/shop.html">T-Shirt 01</a></li>
                                                    <li><a href="${ctx }/front/shop.html">T-Shirt 02</a></li>
                                                    <li><a href="${ctx }/front/shop.html">T-Shirt 03</a></li>
                                                    <li><a href="${ctx }/front/shop.html">T-Shirt 04</a></li>
                                                </ul>
                                                <div class="mega-banner-img">
                                                    <a href="${ctx }/front/single-product.html"><img src="images/banner/banner-fashion-02.jpg" alt=""></a>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="mega-parent pos-rltv"><a href="shop.html">Women</a>
                                            <div class="mega-menu-area mma-700">
                                                <ul class="single-mega-item">
                                                   <li class="menu-title uppercase">Sharees</li>
                                                    <li><a href="${ctx }/front/shop.html">Sharee 01</a></li>
                                                    <li><a href="${ctx }/front/shop.html">Sharee 02</a></li>
                                                    <li><a href="${ctx }/front/shop.html">Sharee 03</a></li>
                                                    <li><a href="${ctx }/front/shop.html">Sharee 04</a></li>
                                                    <li><a href="${ctx }/front/shop.html">Sharee 05</a></li>
                                                </ul>
                                                <ul class="single-mega-item">
                                                   <li class="menu-title uppercase">Lahenga</li>
                                                    <li><a href="${ctx }/front/shop.html">Lahenga 01</a></li>
                                                    <li><a href="${ctx }/front/shop.html">Lahenga 02</a></li>
                                                    <li><a href="${ctx }/front/shop.html">Lahenga 03</a></li>
                                                    <li><a href="${ctx }/front/shop.html">Lahenga 04</a></li>
                                                    <li><a href="${ctx }/front/shop.html">Lahenga 05</a></li>
                                                </ul>
                                                <ul class="single-mega-item">
                                                   <li class="menu-title uppercase">Sandels</li>
                                                    <li><a href="${ctx }/front/shop.html">Sandel 01</a></li>
                                                    <li><a href="${ctx }/front/shop.html">Sandel 02</a></li>
                                                    <li><a href="${ctx }/front/shop.html">Sandel 03</a></li>
                                                    <li><a href="${ctx }/front/shop.html">Sandel 04</a></li>
                                                    <li><a href="${ctx }/front/shop.html">Sandel 05</a></li>
                                                </ul>
                                                <div class="mega-banner-img">
                                                    <a href="${ctx }/front/single-product.html"><img src="images/banner/banner-fashion.jpg" alt=""></a>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="mega-parent"><a href="${ctx }/front/shop.html">Shortcut</a>
                                            <div class="mega-menu-area mma-970">
                                                <ul class="single-mega-item">
                                                   <li class="menu-title uppercase">Shortcode-01</li>
                                                    <li><a href="${ctx }/front/shortcode-banner.html" target="_blank">shortcode-banner</a></li>
                                                    <li><a href="${ctx }/front/shortcode-best-top-on-sale-slider.html" target="_blank">too-on-sale</a></li>
                                                    <li><a href="${ctx }/front/shortcode-blog-item.html" target="_blank">Short Blog Item</a></li>
                                                    <li><a href="${ctx }/front/shortcode-brand-prodcut.html" target="_blank">Brand Product</a></li>
                                                    <li><a href="${ctx }/front/shortcode-brand-slider.html" target="_blank">Brand Slider</a></li>
                                                </ul>
                                                <ul class="single-mega-item">
                                                   <li class="menu-title uppercase">Shortcode-02</li>
                                                    <li><a href="${ctx }/front/shortcode-breadcrumb.html" target="_blank">Breadcrumb</a></li>
                                                    <li><a href="${ctx }/front/shortcode-related-product.html" target="_blank">Related Product</a></li>
                                                    <li><a href="${ctx }/front/shortcode-service.html" target="_blank">Service</a></li>
                                                    <li><a href="${ctx }/front/shortcode-skill.html" target="_blank">Skill</a></li>
                                                    <li><a href="${ctx }/front/shortcode-slider.html" target="_blank">Slider</a></li>
                                                </ul>
                                                <ul class="single-mega-item">
                                                    <li class="menu-title uppercase">Shortcode-03</li>
                                                    <li><a href="${ctx }/front/shortcode-team.html" target="_blank">Team</a></li>
                                                    <li><a href="${ctx }/front/shortcode-testimonial.html" target="_blank">Testimonial</a></li>
                                                    <li><a href="${ctx }/front/shortcode-why-choose-us.html" target="_blank">Why Choose Us</a></li>
                                                </ul>
                                            </div>
                                        </li>
                                        <li class="mega-parent"><a href="${ctx }/front/index.html">Pages</a>
                                            <div class="mega-menu-area mma-970">
                                                <ul class="single-mega-item coloum-4">
                                                   <li class="menu-title uppercase">Pages-01</li>
                                                    <li><a href="${ctx }/front/about-us.html" target="_blank">About-us</a></li>
                                                    <li><a href="${ctx }/front/blog.html" target="_blank">Blog</a></li>
                                                    <li><a href="${ctx }/front/blog-right.html" target="_blank">Blog-Right</a></li>
                                                    <li><a href="${ctx }/front/single-blog.html" target="_blank">Single Blog</a></li>
                                                    <li><a href="${ctx }/front/single-blog-right.html" target="_blank">Single Blog Right</a></li>
                                                    <li><a href="${ctx }/front/blog-full.html" target="_blank">Blog-Fullwidth</a></li>
                                                </ul>
                                                <ul class="single-mega-item coloum-4">
                                                   <li class="menu-title uppercase">pages-02</li>
                                                    <li><a href="${ctx }/front/blog-full-right.html" target="_blank">Blog Ful Rightl</a></li>
                                                    <li><a href="${ctx }/front/cart.html" target="_blank">Cart</a></li>
                                                    <li><a href="${ctx }/front/checkout.html" target="_blank">Checkout</a></li>
                                                    <li><a href="${ctx }/front/compare.html" target="_blank">Compare</a></li>
                                                    <li><a href="${ctx }/front/complete-order.html" target="_blank">Complete Order</a></li>
                                                    <li><a href="${ctx }/front/contact-us.html" target="_blank">Contact US</a></li>
                                                </ul>
                                                <ul class="single-mega-item coloum-4">
                                                   <li class="menu-title uppercase">pages-03</li>
                                                    <li><a href="${ctx }/front/login.html" target="_blank">Login</a></li>
                                                    <li><a href="${ctx }/front/my-account.html" target="_blank">My Account</a></li>
                                                    <li><a href="${ctx }/front/shop-full-grid.html" target="_blank">Shop Full Grid</a></li>
                                                    <li><a href="${ctx }/front/shop-full-list.html" target="_blank">Shop Full List</a></li>
                                                    <li><a href="${ctx }/front/shop-list-right-sidebar.html" target="_blank">Shop List Right</a></li>
                                                    <li><a href="${ctx }/front/shop-list.html" target="_blank">Shop List</a></li>
                                                </ul>
                                                <ul class="single-mega-item coloum-4">
                                                   <li class="menu-title uppercase">pages-03</li>
                                                    <li><a href="${ctx }/front/shop-right-sidebar.html" target="_blank">Shop Right</a></li>
                                                    <li><a href="${ctx }/front/shop.html" target="_blank">Shop</a></li>
                                                    <li><a href="${ctx }/front/single-product.html" target="_blank">Single Prodcut</a></li>
                                                    <li><a href="${ctx }/front/wishlist.html" target="_blank">Wishlist</a></li>
                                                </ul>
                                            </div>
                                        </li>                     
                                        <li><a href="${ctx }/front/blog.html">BLOG</a></li>
                                        <li><a href="${ctx }/front/about-us.html">ABOUT</a></li>
                                    </ul>
                                </nav>
                            </div>
                            <div class="col-md-3 hidden-sm hidden-xs">
                                <div class="search-box global-table">
                                    <div class="global-row">
                                        <div class="global-cell">
                                            <form action="#">
                                                <div class="input-box">
                                                    <input class="single-input" placeholder="Search anything" type="text">
                                                    <button class="src-btn"><i class="fa fa-search"></i></button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                        
                            <!-- mobile-menu-area start -->
                            <div class="mobile-menu-area">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-xs-12">
                                            <nav id="dropdown">
                                                <ul>
                                                    <li><a href="${ctx }/front/index.html">Home</a>
                                                        <ul>
                                                            <li><a class="active" href="${ctx }/front/index.html">Home One</a></li>
                                                            <li><a href="${ctx }/front/index-2.html">Home Two</a></li>
                                                            <li><a href="${ctx }/front/index-boxed-01.html">Home Three (Boxed)</a></li>
                                                            <li><a href="${ctx }/front/index-boxed-02.html">Home Four (Boxed)</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="${ctx }/front/shop.html">Man</a>
                                                        <ul class="single-mega-item">
                                                            <li><a href="${ctx }/front/shop.html">Shirt 01</a></li>
                                                            <li><a href="${ctx }/front/shop.html">Shirt 02</a></li>
                                                            <li><a href="${ctx }/front/shop.html">Shirt 03</a></li>
                                                            <li><a href="${ctx }/front/shop.html">Shirt 04</a></li>
                                                            <li><a href="${ctx }/front/shop.html">Pant 01</a></li>
                                                            <li><a href="${ctx }/front/shop.html">Pant 02</a></li>
                                                            <li><a href="${ctx }/front/shop.html">Pant 03</a></li>
                                                            <li><a href="${ctx }/front/shop.html">Pant 04</a></li>
                                                            <li><a href="${ctx }/front/shop.html">T-Shirt 01</a></li>
                                                            <li><a href="${ctx }/front/shop.html">T-Shirt 02</a></li>
                                                            <li><a href="${ctx }/front/shop.html">T-Shirt 03</a></li>
                                                            <li><a href="${ctx }/front/shop.html">T-Shirt 04</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="shop.html">Shop</a>
                                                        <ul class="single-mega-item">
                                                            <li><a href="${ctx }/front/shop.html">Sharee 01</a></li>
                                                            <li><a href="${ctx }/front/shop.html">Sharee 02</a></li>
                                                            <li><a href="${ctx }/front/shop.html">Sharee 03</a></li>
                                                            <li><a href="${ctx }/front/shop.html">Sharee 04</a></li>
                                                            <li><a href="${ctx }/front/shop.html">Sharee 05</a></li>
                                                            <li><a href="${ctx }/front/shop.html">Lahenga 01</a></li>
                                                            <li><a href="${ctx }/front/shop.html">Lahenga 02</a></li>
                                                            <li><a href="${ctx }/front/shop.html">Lahenga 03</a></li>
                                                            <li><a href="${ctx }/front/shop.html">Lahenga 04</a></li>
                                                            <li><a href="${ctx }/front/shop.html">Lahenga 05</a></li>
                                                            <li><a href="${ctx }/front/shop.html">Sandel 01</a></li>
                                                            <li><a href="${ctx }/front/shop.html">Sandel 02</a></li>
                                                            <li><a href="${ctx }/front/shop.html">Sandel 03</a></li>
                                                            <li><a href="${ctx }/front/shop.html">Sandel 04</a></li>
                                                            <li><a href="${ctx }/front/shop.html">Sandel 05</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="#">Shortcode</a>
                                                        <ul class="single-mega-item">
                                                            <li><a href="${ctx }/front/shortcode-banner.html" target="_blank">shortcode-banner</a></li>
                                                            <li><a href="${ctx }/front/shortcode-best-top-on-sale-slider.html" target="_blank">too-on-sale</a></li>
                                                            <li><a href="${ctx }/front/shortcode-blog-item.html" target="_blank">Short Blog Item</a></li>
                                                            <li><a href="${ctx }/front/shortcode-brand-prodcut.html" target="_blank">Brand Product</a></li>
                                                            <li><a href="${ctx }/front/shortcode-brand-slider.html" target="_blank">Brand Slider</a></li>

                                                            <li><a href="${ctx }/front/shortcode-breadcrumb.html" target="_blank">Breadcrumb</a></li>
                                                            <li><a href="${ctx }/front/shortcode-related-product.html" target="_blank">Related Product</a></li>
                                                            <li><a href="${ctx }/front/shortcode-service.html" target="_blank">Service</a></li>
                                                            <li><a href="${ctx }/front/shortcode-skill.html" target="_blank">Skill</a></li>
                                                            <li><a href="${ctx }/front/shortcode-slider.html" target="_blank">Slider</a></li>

                                                            <li><a href="${ctx }/front/shortcode-team.html" target="_blank">Team</a></li>
                                                            <li><a href="${ctx }/front/shortcode-testimonial.html" target="_blank">Testimonial</a></li>
                                                            <li><a href="${ctx }/front/shortcode-why-choose-us.html" target="_blank">Why Choose Us</a></li>
                                                        </ul>
                                                    </li>
                                                    <li> <a href="#">Pages</a>                                               
                                                        <ul class="single-mega-item coloum-4">
                                                            <li><a href="${ctx }/front/about-us.html" target="_blank">About-us</a></li>
                                                            <li><a href="${ctx }/front/blog.html" target="_blank">Blog</a></li>
                                                            <li><a href="${ctx }/front/blog-right.html" target="_blank">Blog-Right</a></li>
                                                            <li><a href="${ctx }/front/single-blog.html" target="_blank">Single Blog</a></li>
                                                            <li><a href="${ctx }/front/single-blog-right.html" target="_blank">Single Blog Right</a></li>
                                                            <li><a href="${ctx }/front/blog-full.html" target="_blank">Blog-Fullwidth</a></li>
                                                           <li class="menu-title uppercase">pages-02</li>
                                                            <li><a href="${ctx }/front/blog-full-right.html" target="_blank">Blog Ful Rightl</a></li>
                                                            <li><a href="${ctx }/front/cart.html" target="_blank">Cart</a></li>
                                                            <li><a href="${ctx }/front/checkout.html" target="_blank">Checkout</a></li>
                                                            <li><a href="${ctx }/front/compare.html" target="_blank">Compare</a></li>
                                                            <li><a href="${ctx }/front/complete-order.html" target="_blank">Complete Order</a></li>
                                                            <li><a href="${ctx }/front/contact-us.html" target="_blank">Contact US</a></li>
                                                           <li class="menu-title uppercase">pages-03</li>
                                                            <li><a href="${ctx }/front/login.html" target="_blank">Login</a></li>
                                                            <li><a href="${ctx }/front/my-account.html" target="_blank">My Account</a></li>
                                                            <li><a href="${ctx }/front/shop-full-grid.html" target="_blank">Shop Full Grid</a></li>
                                                            <li><a href="${ctx }/front/shop-full-list.html" target="_blank">Shop Full List</a></li>
                                                            <li><a href="${ctx }/front/shop-list-right-sidebar.html" target="_blank">Shop List Right</a></li>
                                                            <li><a href="${ctx }/front/shop-list.html" target="_blank">Shop List</a></li>
                                                           	<li class="menu-title uppercase">pages-03</li>
                                                            <li><a href="${ctx }/front/shop-right-sidebar.html" target="_blank">Shop Right</a></li>
                                                            <li><a href="${ctx }/front/shop.html" target="_blank">Shop</a></li>
                                                            <li><a href="${ctx }/front/single-product.html" target="_blank">Single Prodcut</a></li>
                                                            <li><a href="${ctx }/front/wishlist.html" target="_blank">Wishlist</a></li>
                                                        </ul>
                                                   </li>
                                                    <li><a href="${ctx }/front/about-us.html">about</a></li>
                                                </ul>
                                            </nav>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--mobile menu area end-->
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
                    <h5>Login Register</h5> </div>
                <ol class="breadcrumb">
                    <li class="home"><a title="Go to Home Page" href="${ctx }/front/index.html">Home</a></li>
                    <li class="active">Login</li>
                </ol>
            </div>
        </div>
        <!--breadcumb area end -->
        
        <!-- Account Area Start -->
        <div class="account-area ptb-80">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-xs-12">
                        <form name="loginForm" action="/ClothesShop/user/login" class="login-side">
                            <div class="login-reg">
                                <h3>Login</h3>
                               <div class="input-box mb-20">
                                    <label class="control-label">UserName</label>
                                    <input type="text" placeholder="UserName" value="" name="name" class="info">
                                </div>
                                <div class="input-box mb-20">
                                    <label class="control-label">E-Mail</label>
                                    <input type="email" class="info" placeholder="E-Mail" value="" name="email">
                                </div>
                                <div class="input-box">
                                    <label class="control-label">Password</label>
                                    <input type="password" class="info" placeholder="Password" value="" name="password">
                                </div>
                            </div>
                            <div class="frm-action">
                                <div class="input-box tci-box">
                                    <a href="javascript:mysubmit()" class="btn-def btn2">Login</a>
                                </div>
                                <span>
                             <input class="remr" type="checkbox"> Remember me 
                         </span>
                                <a href="#" class="forgotten forg">Forgotten Password</a>
                            </div>
                        </form>
                    </div>
                    <div class="col-sm-6 col-xs-12 lr2">
                        <form action="/ClothesShop/user/regist" name="registForm">
                            <div class="login-reg">
                                <h3>Register</h3>
                                <div class="input-box mb-20">
                                    <label class="control-label">UserName</label>
                                    <input type="text" placeholder="UserName" value="" name="name" class="info">
                                </div>
                                <div class="input-box mb-20">
                                    <label class="control-label">E-Mail</label>
                                    <input type="email" class="info" placeholder="E-Mail" value="" name="email">
                                </div>
                                <div class="input-box">
                                    <label class="control-label">Password</label>
                                    <input type="password" class="info" placeholder="Password" value="" name="password">
                                </div>
                            </div>
                            <div class="frm-action">
                                <div class="input-box tci-box">
                                    <a href="javascript:myregist()" class="btn-def btn2">Register</a>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- Account Area End -->

        <!-- footer area start-->
        <div class="footer-area ptb-50">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-3 col-sm-4 col-xs-12">
                        <div class="single-footer contact-us">
                            <div class="footer-title uppercase">
                                <h5>Contact US</h5> </div>
                            <ul>
                                <li>
                                    <div class="contact-icon"> <i class="zmdi zmdi-pin-drop"></i> </div>
                                    <div class="contact-text">
                                        <p><span>777/a  Seventh Street,</span> <span>Rampura, Bonosri</span></p>
                                    </div>
                                </li>
                                <li>
                                    <div class="contact-icon"> <i class="zmdi zmdi-email-open"></i> </div>
                                    <div class="contact-text">
                                        <p><span><a href="#">company@gmail.com</a></span> <span><a href="#">admin@devitems.com</a></span></p>
                                    </div>
                                </li>
                                <li>
                                    <div class="contact-icon"> <i class="zmdi zmdi-phone-paused"></i> </div>
                                    <div class="contact-text">
                                        <p><span>+11 (019) 25184203</span> <span>+11 (018) 50950555</span></p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-2 col-sm-4 col-xs-12">
                        <div class="single-footer informaton-area">
                            <div class="footer-title uppercase">
                                <h5>Information</h5> </div>
                            <div class="informatoin">
                                <ul>
                                    <li><a href="#">My Account</a></li>
                                    <li><a href="#">Order History</a></li>
                                    <li><a href="#">Wishlist</a></li>
                                    <li><a href="#">Returnes</a></li>
                                    <li><a href="#">Private Policy</a></li>
                                    <li><a href="#">Site Map</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 hidden-sm col-xs-12">
                        <div class="single-footer instagrm-area">
                            <div class="footer-title uppercase">
                                <h5>InstaGram</h5> 
                            </div>
                            <div class="instagrm">
                                <ul>
                                    <li><a href="#"><img src="${ctx }/front/images/gallery/01.jpg" alt=""></a></li>
                                    <li><a href="#"><img src="${ctx }/front/images/gallery/02.jpg" alt=""></a></li>
                                    <li><a href="#"><img src="${ctx }/front/images/gallery/03.jpg" alt=""></a></li>
                                    <li><a href="#"><img src="${ctx }/front/images/gallery/04.jpg" alt=""></a></li>
                                    <li><a href="#"><img src="${ctx }/front/images/gallery/05.jpg" alt=""></a></li>
                                    <li><a href="#"><img src="${ctx }/front/images/gallery/06.jpg" alt=""></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-4 col-lg-offset-1 col-xs-12">
                        <div class="single-footer newslatter-area">
                            <div class="footer-title uppercase">
                                <h5>Get Newsletters</h5> 
                            </div>
                            <div class="newslatter">
                                <form action="#" method="post">
                                    <div class="input-box pos-rltv">
                                        <input placeholder="Type Your Email hear" type="text"> 
                                        <a href="#">
                                            <i class="zmdi zmdi-arrow-right"></i>
                                        </a>
                                    </div>
                                </form>
                                <div class="social-icon socile-icon-style-3 mt-40">
                                    <div class="footer-title uppercase">
                                        <h5>Social Network</h5> 
                                    </div>
                                    <ul>
                                        <li><a href="#"><i class="zmdi zmdi-facebook"></i></a></li>
                                        <li><a href="#"><i class="zmdi zmdi-linkedin"></i></a></li>
                                        <li><a href="#"><i class="zmdi zmdi-pinterest"></i></a></li>
                                        <li><a href="#"><i class="zmdi zmdi-google"></i></a></li>
                                        <li><a href="#"><i class="zmdi zmdi-twitter"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--footer area start-->
        
        <!--footer bottom area start-->
        <div class="footer-bottom global-table">
            <div class="global-row">
                <div class="global-cell">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <div class="copyrigth"> Copyright @ <a href="devitems.com">Devitems</a> All right reserved </div>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <ul class="payment-support text-right">
                                    <li>
                                        <a href="#"><img src="${ctx }/front/images/icons/pay1.png" alt="" /></a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="${ctx }/front/images/icons/pay2.png" alt="" /></a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="${ctx }/front/images/icons/pay3.png" alt="" /></a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="${ctx }/front/images/icons/pay4.png" alt="" /></a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="${ctx }/front/images/icons/pay5.png" alt="" /></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--footer bottom area end-->
        


        <!-- QUICKVIEW PRODUCT -->
        <div id="quickview-wrapper">
            <!-- Modal -->
            <div class="modal fade" id="productModal" tabindex="-1" role="dialog">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        </div>
                        <div class="modal-body">
                            <div class="modal-product">
                              <div class="product-images"> 
                                   <!--modal tab start-->
                                    <div class="portfolio-thumbnil-area-2">
                                        <div class="tab-content active-portfolio-area-2">
                                            <div role="tabpanel" class="tab-pane active" id="view1">
                                                <div class="product-img">
                                                    <a href="#"><img src="images/product/01.jpg" alt="Single portfolio" /></a>
                                                </div>
                                            </div>
                                            <div role="tabpanel" class="tab-pane" id="view2">
                                                <div class="product-img">
                                                    <a href="#"><img src="images/product/02.jpg" alt="Single portfolio" /></a>
                                                </div>
                                            </div>
                                            <div role="tabpanel" class="tab-pane" id="view3">
                                                <div class="product-img">
                                                    <a href="#"><img src="images/product/03.jpg" alt="Single portfolio" /></a>
                                                </div>
                                            </div>
                                            <div role="tabpanel" class="tab-pane" id="view4">
                                                <div class="product-img">
                                                    <a href="#"><img src="images/product/04.jpg" alt="Single portfolio" /></a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-more-views-2">
                                            <div class="thumbnail-carousel-modal-2" data-tabs="tabs">
                                                <a href="#view1" aria-controls="view1" data-toggle="tab"><img src="images/product/01.jpg" alt="" /></a>
                                                <a href="#view2" aria-controls="view2" data-toggle="tab"><img src="images/product/02.jpg" alt="" /></a>
                                                <a href="#view3" aria-controls="view3" data-toggle="tab"><img src="images/product/03.jpg" alt="" /></a>
                                                <a href="#view4" aria-controls="view4" data-toggle="tab"><img src="images/product/04.jpg" alt="" /></a>
                                            </div>
                                        </div>
                                    </div>
                                    </div>
                                    <!--modal tab end-->
                                    <!-- .product-images -->
                                    <div class="product-info">
                                        <h1>Aenean eu tristique</h1>
                                        <div class="price-box-3">
                                            <div class="s-price-box"> <span class="new-price">$160.00</span> <span class="old-price">$190.00</span> </div>
                                        </div> <a href="shop.html" class="see-all">See all features</a>
                                        <div class="quick-add-to-cart">
                                            <form method="post" class="cart">
                                                <div class="numbers-row">
                                                    <input type="number" id="french-hens" value="3" min="1"> </div>
                                                <button class="single_add_to_cart_button" type="submit">Add to cart</button>
                                            </form>
                                        </div>
                                        <div class="quick-desc"> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero.Nam fringilla tristique auctor. </div>
                                        <div class="social-sharing-modal">
                                            <div class="widget widget_socialsharing_widget">
                                                <h3 class="widget-title-modal">Share this product</h3>
                                                <ul class="social-icons-modal">
                                                    <li><a target="_blank" title="Facebook" href="#" class="facebook m-single-icon"><i class="fa fa-facebook"></i></a></li>
                                                    <li><a target="_blank" title="Twitter" href="#" class="twitter m-single-icon"><i class="fa fa-twitter"></i></a></li>
                                                    <li><a target="_blank" title="Pinterest" href="#" class="pinterest m-single-icon"><i class="fa fa-pinterest"></i></a></li>
                                                    <li><a target="_blank" title="Google +" href="#" class="gplus m-single-icon"><i class="fa fa-google-plus"></i></a></li>
                                                    <li><a target="_blank" title="LinkedIn" href="#" class="linkedin m-single-icon"><i class="fa fa-linkedin"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- .product-info -->
                                </div>
                                <!-- .modal-product -->
                            </div>
                            <!-- .modal-body -->
                        </div>
                        <!-- .modal-content -->
                    </div>
                    <!-- .modal-dialog -->
                </div>
                <!-- END Modal -->
            </div>
        <!-- END QUICKVIEW PRODUCT -->
      
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