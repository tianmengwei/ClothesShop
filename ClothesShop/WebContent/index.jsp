<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>	
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 	<meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Home || Clothing</title>
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
                                    <li><a href="${ctx }/alogin.jsp">AdminLogin</a></li>
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
                   <!--mobile menu area end-->
                        </div>
  		</header>
<!-- End of header area -->
        
        <!--slider area start-->
        <div class="slider-area pos-rltv carosule-pagi cp-line">
            <div class="active-slider">
                <div class="single-slider pos-rltv">
                    <div class="slider-img"><img src="${ctx }/front/images/slider/slider00.jpg" alt="" class="img-0"></div>
                </div>
                <div class="single-slider pos-rltv">
                    <div class="slider-img"><img src="${ctx }/front/images/slider/slider01.jpg" alt=""></div>
                    <div class="slider-content pos-abs">
                        <h4>Best Collection</h4>
                        <h1 class="uppercase pos-rltv underline">exclusive Fashion 2016</h1>
                    </div>
                </div>
                <div class="single-slider pos-rltv">
                    <div class="slider-img"><img src="${ctx }/front/images/slider/slider02.jpg" alt=""></div>
                    <div class="slider-content pos-abs">
                        <h4>Best Collection</h4>
                        <h1 class="uppercase pos-rltv underline">exclusive Fashion 2016</h1>
                    </div>
                </div>
            </div>
        </div>
        <!--slider area start-->
      
        <!--new arrival area start-->
        <div class="new-arrival-area pt-70">
            <div class="container">
                <div class="row">
                   <div class="col-xs-12 text-center">
                       <div class="heading-title heading-style pos-rltv mb-50 text-center">
                           <h5 class="uppercase">Our Products</h5>
                       </div>
                   </div>
                    <div class="total-new-arrival new-arrival-slider-active carsoule-btn"> 
							<div class="col-md-3">
                            <!-- single product start-->
                            <div class="single-product">
                                <div class="product-img">
                                    <div class="product-label">
                                        <div class="new">New</div>
                                    </div>
                                    <div class="single-prodcut-img  product-overlay pos-rltv">
                                        <a href="${ctx }/clothes/findAllClothesDetail?id=7"> <img alt="" src="${ctx }/products/skirt01.jpg" class="primary-image"> <img alt="" src="${ctx }/products/skirt01_1.jpg" class="secondary-image"> </a>
                                    </div>
                                    <div class="product-icon socile-icon-tooltip text-center">
                                        <ul>
                                			<li><a href="#" data-tooltip="Add To Cart" class="add-cart" data-placement="left"><i class="fa fa-cart-plus"></i></a></li>
                                           	<li><a href="#" data-tooltip="Quick View" class="q-view" data-toggle="modal" data-target=".modal"><i class="fa fa-eye"></i></a></li>
                                            <li><a href="#" data-tooltip="Wishlist" class="w-list"><i class="fa fa-heart-o"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="product-text">
                                    <div class="prodcut-name"> <a href="${ctx }/clothes/findAllClothesDetail?id=7">Details</a> </div>
                                    <div class="prodcut-ratting-price">
                                        <div class="prodcut-ratting"> 
                                            <a href="#"><i class="fa fa-star"></i></a> 
                                            <a href="#"><i class="fa fa-star"></i></a> 
                                            <a href="#"><i class="fa fa-star"></i></a> 
                                            <a href="#"><i class="fa fa-star"></i></a> 
                                            <a href="#"><i class="fa fa-star-o"></i></a> 
                                        </div>
                                        <div class="prodcut-price">
                                            <div class="new-price"> $80 </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- single product end-->
                        </div>                                                    
                        <div class="col-md-3">
                            <!-- single product start-->
                            <div class="single-product">
                                <div class="product-img">
                                    <div class="product-label">
                                        <div class="new">New</div>
                                    </div>
                                    <div class="single-prodcut-img  product-overlay pos-rltv">
                                        <a href="${ctx }/clothes/findAllClothesDetail?id=3"> <img alt="" src="${ctx }/products/coat01.jpg" class="primary-image"> <img alt="" src="${ctx }/products/coat01_1.jpg" class="secondary-image"> </a>
                                    </div>
                                    <div class="product-icon socile-icon-tooltip text-center">
                                        <ul>
                                            <li><a href="#" data-tooltip="Add To Cart" class="add-cart" data-placement="left"><i class="fa fa-cart-plus"></i></a></li>
                                           	<li><a href="#" data-tooltip="Quick View" class="q-view" data-toggle="modal" data-target=".modal"><i class="fa fa-eye"></i></a></li>
                                            <li><a href="#" data-tooltip="Wishlist" class="w-list"><i class="fa fa-heart-o"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="product-text">
                                    <div class="prodcut-name"> <a href="${ctx }/clothes/findAllClothesDetail?id=3">Details</a> </div>
                                    <div class="prodcut-ratting-price">
                                        <div class="prodcut-price">
                                            <div class="new-price"> $120 </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- single product end-->
                        </div>                          
                        <div class="col-md-3">
                            <!-- single product start-->
                            <div class="single-product">
                                <div class="product-img">
                                    <div class="single-prodcut-img  product-overlay pos-rltv">
                                        <a href="${ctx }/clothes/findAllClothesDetail?id=4"> <img alt="" src="${ctx }/products/coat02.jpg" class="primary-image"> <img alt="" src="${ctx }/products/coat02_1.jpg" class="secondary-image"> </a>
                                    </div>
                                    <div class="product-icon socile-icon-tooltip text-center">
                                        <ul>
                                         	<li><a href="#" data-tooltip="Add To Cart" class="add-cart" data-placement="left"><i class="fa fa-cart-plus"></i></a></li>
                                           	<li><a href="#" data-tooltip="Quick View" class="q-view" data-toggle="modal" data-target=".modal"><i class="fa fa-eye"></i></a></li>
                                            <li><a href="#" data-tooltip="Wishlist" class="w-list"><i class="fa fa-heart-o"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="product-text">
                                    <div class="prodcut-name"> <a href="${ctx }/clothes/findAllClothesDetail?id=4">Details</a> </div>
                                    <div class="prodcut-ratting-price">
                                        <div class="prodcut-price">
                                            <div class="new-price"> $100 </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- single product end-->
                        </div>                          
   
                        <div class="col-md-3">
                            <!-- single product start-->
                            <div class="single-product">
                                <div class="product-img">
                                    <div class="single-prodcut-img  product-overlay pos-rltv">
                                        <a href="${ctx }/clothes/findAllClothesDetail?id=10"> <img alt="" src="${ctx }/products/wshirt02.jpg" class="primary-image"> <img alt="" src="${ctx }/products/wshirt02_1.jpg" class="secondary-image"> </a>
                                    </div>
                                    <div class="product-icon socile-icon-tooltip text-center">
                                        <ul>
                           					<li><a href="#" data-tooltip="Add To Cart" class="add-cart" data-placement="left"><i class="fa fa-cart-plus"></i></a></li>
                                           	<li><a href="#" data-tooltip="Quick View" class="q-view" data-toggle="modal" data-target=".modal"><i class="fa fa-eye"></i></a></li>
                                            <li><a href="#" data-tooltip="Wishlist" class="w-list"><i class="fa fa-heart-o"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="product-text">
                                    <div class="prodcut-name"> <a href="${ctx }/clothes/findAllClothesDetail?id=10">Details</a> </div>
                                    <div class="prodcut-ratting-price">
                                        <div class="prodcut-price">
                                            <div class="new-price"> $85 </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- single product end-->
                        </div>                          
                        <div class="col-md-3">
                            <!-- single product start-->
                            <div class="single-product">
                                <div class="product-img">
                                    <div class="single-prodcut-img  product-overlay pos-rltv">
                                        <a href="${ctx }/clothes/findAllClothesDetail?id=5"> <img alt="" src="${ctx }/products/pants01.jpg" class="primary-image"> <img alt="" src="${ctx }/products/pants01_1.jpg" class="secondary-image"> </a>
                                    </div>
                                    <div class="product-icon socile-icon-tooltip text-center">
                                        <ul>
                     						<li><a href="${ctx }/cart.jsp" data-tooltip="Add To Cart" class="add-cart" data-placement="left"><i class="fa fa-cart-plus"></i></a></li>
                                           	<li><a href="#" data-tooltip="Quick View" class="q-view" data-toggle="modal" data-target=".modal"><i class="fa fa-eye"></i></a></li>
                                            <li><a href="#" data-tooltip="Wishlist" class="w-list"><i class="fa fa-heart-o"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="product-text">
                                    <div class="prodcut-name"> <a href="${ctx }/clothes/findAllClothesDetail?id=5">Details</a> </div>
                                    <div class="prodcut-ratting-price">
                                        <div class="prodcut-ratting"> 
                                            <a href="#"><i class="fa fa-star"></i></a> 
                                            <a href="#"><i class="fa fa-star"></i></a> 
                                            <a href="#"><i class="fa fa-star"></i></a> 
                                            <a href="#"><i class="fa fa-star"></i></a> 
                                            <a href="#"><i class="fa fa-star-o"></i></a> </div>
                                        <div class="prodcut-price">
                                            <div class="new-price"> $70 </div>
                                            <div class="old-price"> <del>$90</del> </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- single product end-->
                    </div>
                </div>
                </div>
            </div>
        </div>
        <!--new arrival area end-->
        
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
                                <div class="copyrigth"> Copyright @ 
									<a href="devitems.com">Devitems</a> All right reserved 
								</div>
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