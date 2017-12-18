<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 	<meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>List || Clothing</title>
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
    	.fenye{height:80px;width:1000px;}
    	
		.fenye1{width:60px;}
		.clothes{
			width:400px;
			margin-right:10px;
			display:inline-block;
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
        <div class="breadcumb-area breadcumb-2 overlay pos-rltv">
            <div class="bread-main">
                <div class="bred-hading text-center">
                    <h5>Products Details</h5> </div>
                <ol class="breadcrumb">
                    <li class="home"><a title="Go to Home Page" href="${ctx }/index.jsp">Home</a></li>
                    <li class="active">List</li>
                </ol>
            </div>
        </div>
        <!--breadcumb area end -->

 <!--blog main area are start-->
	<div class="shop-main-area pt-70 pb-40">
		<div class="container">
			<div class="row">
                    <!--shop sidebar start-->
                    <div class="col-md-3 col-sm-4 col-xs-12">
                        <div class="shop-sidebar blog-sidebar">
                           <!--single aside start-->
                            <aside class="single-aside search-aside search-box">
                                <form action="${ctx }/clothes/findClothesDetail" name="selectForm">
                                    <div class="input-box">
                                        <input class="single-input" placeholder="Search...." type="text" name="clothesname">
                                     	<a href="javascript:myselect()"><button class="src-btn sb-2"><i class="fa fa-search"></i></button></a>
                                    </div>
                                </form>
                             </aside>
                            <!--single aside end-->

                            <!--single aside start-->
                            <aside class="single-aside catagories-aside">
                                <div class="heading-title aside-title pos-rltv">
                                    <h5 class="uppercase">categories</h5> 
                                </div>
                                <div id="cat-treeview" class="product-cat">
                                    <ul>
                                        <li class="closed"><a href="${ctx }/clothes/findByTypeid?typeid=1">Shirts</a></li>
                                        <li class="closed"><a href="${ctx }/clothes/findByTypeid?typeid=2">Coats</a></li>
                                        <li class="closed"><a href="${ctx }/clothes/findByTypeid?typeid=3">Pants</a></li>
                                        <li class="closed"><a href="${ctx }/clothes/findByTypeid?typeid=4">Skirts</a></li>
                                    </ul>
                                </div>
                            </aside>
                            <!--single aside end-->

                            <!--single aside start-->
                            <aside class="single-aside tag-aside">
                                <div class="heading-title aside-title pos-rltv">
                                    <h5 class="uppercase">Product Tags</h5> 
                                </div>
                                <ul class="tag-filter mt-30">
                                    <li><a href="#">Fashion</a></li>
                                    <li><a href="#">Women</a></li>
                                    <li><a href="#">Winter</a></li>
                                    <li><a href="#">Street Style</a></li>
                                    <li><a href="#">Style</a></li>
                                    <li><a href="#">Shop</a></li>
                                    <li><a href="#">Collection</a></li>
                                    <li><a href="#">Spring 2016</a></li>
                                </ul>
                            </aside>
                            <!--single aside end-->
                            <!--single aside start-->
                            <aside class="single-aside add-aside">
                                 <a href="${ctx }/clothes/list2"><img src="${ctx }/front/images/banner/add.jpg" alt=""></a>
                            </aside>
                            <!--single aside end-->
                        </div>
                    </div>
                    <!--shop sidebar end-->
                    
                    <!--main-shop-product start-->
                    <div class="col-md-9 col-sm-8 col-xs-12">
						<c:forEach items="${list2}" var="clothes">	 
							<div class="clothes">
								<a href="${ctx }/clothes/findAllClothesDetail?id=${clothes.clothesDetail.id}"><img src="${ctx}/${clothes.img1}" /></a>
								<p>${clothes.name }</p>
								<p>${clothes.price }</p>
							</div>											
						</c:forEach>
                    </div>                
			</div>
		</div>
	</div>    
<!--blog main area are end-->  
    
	<!--pagination start-->
		<div class="col-md-12 col-sm-12 col-xs-12">
			<div class="pagination-btn text-center">
				<table class="fenye">
      					 <tr>
            				<td colspan="6" align="center" bgcolor="white"><p>共${page.totalRecords}条记录 共${page.totalPages}页 当前第${page.pageNo}页</p>       
			                <a href="${ctx }/clothes/list2?pageNo=${page.topPageNo}"><input type="button" name="fristPage" value="首页"  class="fenye1"/></a>&nbsp;
			                <c:choose>
			                  <c:when test="${page.pageNo!=1}">             
			                      <a href="${ctx }/clothes/list2?pageNo=${page.previousPageNo }" ><input type="button" name="previousPage" value="上一页" class="fenye1"/></a> &nbsp;               
			                  </c:when>
			                  <c:otherwise>   
			                      <input type="button" disabled="disabled" name="previousPage" value="上一页" class="fenye1"/>       
			                  </c:otherwise>
			                </c:choose>
			                <c:choose>
			                  <c:when test="${page.pageNo != page.totalPages}">
			                    <a href="${ctx }/clothes/list2?pageNo=${page.nextPageNo }" ><input type="button" name="nextPage" value="下一页" class="fenye1"/></a>&nbsp;
			                  </c:when>
			                  <c:otherwise>    
			                      <input type="button" disabled="disabled" name="nextPage" value="下一页" class="fenye1"/>
			                  </c:otherwise>
			                </c:choose>
			                <a href="${ctx }/clothes/list2?pageNo=${page.bottomPageNo}"><input type="button" name="lastPage" value="尾页"  class="fenye1"/></a>&nbsp;
			            </td>
        			</tr>
     			</table>  
          	</div>
        </div>
   <!--pagination end-->
        	
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