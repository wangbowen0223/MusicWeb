<%--
  Created by IntelliJ IDEA.
  User: 39239
  Date: 2018/7/2
  Time: 11:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Stylish Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //Custom Theme files -->
    <link href="css/style.css" type="text/css" rel="stylesheet" media="all">
    <link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
    <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
    <script src="js/jquery-1.11.1.min.js"></script>
    <!-- //js -->
    <!-- start-smoth-scrolling-->
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <!--//end-smoth-scrolling-->
    <!--pop-up-->
    <script src="js/menu_jquery.js"></script>
    <script src="js/jquery-1.11.1.min.js"></script>


</head>

<body>
<%--header--%>
<div class="header" id="header1">

    <div class="container" id="Container1">
        <div class="header-left">
            <ul>
                <li><a href="Account.jsp">账户</a></li>
                <li class="login" >
                    <div id="loginContainer"><a href="#" id="loginButton"><span>登录</span></a>
                        <div id="loginBox">
                            <form id="loginForm">
                                <fieldset id="body">
                                    <fieldset>
                                        <label for="email">Email Address</label>
                                        <input type="text" name="email" id="email">
                                    </fieldset>
                                    <fieldset>
                                        <label for="password">Password</label>
                                        <input type="password" name="password" id="password">
                                    </fieldset>
                                    <input type="submit" id="login" value="Sign in">
                                    <label for="checkbox"><input type="checkbox" id="checkbox"> <i>Remember me</i></label>
                                </fieldset>
                                <span><a href="#">Forgot your password?</a></span>
                            </form>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
        <div class="logo">
            <a href="index.html"> <img src="images/logo1.png" alt=""/></a>
        </div>
        <div class="top-nav">
            <span class="menu"><img src="images/menu.png" alt=""/></span>
            <ul>
                <li><a class="active" href="index.jsp">主页</a></li>
                <li><a href="about.html">电影</a></li>
                <li><a href="gallery.html">资讯</a></li>
                <li><a href="news.html">预定</a></li>
                <li><a href="codes.html">关于</a></li>
                <li><a href="contact.html">联系我们</a></li>
            </ul>
            <!-- script-for-menu -->
            <script>
                $("span.menu").click(function(){
                    $(".top-nav ul").slideToggle("slow" , function(){
                    });
                });
            </script>
            <!-- script-for-menu -->
        </div>
        <div class="search-box">
            <div id="sb-search" class="sb-search">
                <form>
                    <input class="sb-search-input" placeholder="search term..." type="search" name="search" id="search">
                    <input class="sb-search-submit" type="submit" value="">
                    <span class="sb-icon-search"> </span>
                </form>
            </div>
        </div>
        <div class="clearfix"> </div>
        <!-- search-scripts -->
        <script src="js/classie.js"></script>
        <script src="js/uisearch.js"></script>
        <script>
            new UISearch( document.getElementById( 'sb-search' ) );
        </script>
        <!-- //search-scripts -->
    </div>

</div>



<div class="banner">
    <!-- banner-text Slider starts Here -->
    <script src="js/responsiveslides.min.js"></script>
    <script>
        // You can also use "$(window).load(function() {"
        $(function () {
            // Slideshow 3
            $("#slider3").responsiveSlides({
                auto: true,
                pager:true,
                nav:true,
                speed: 500,
                namespace: "callbacks",
                before: function () {
                    $('.events').append("<li>before event fired.</li>");
                },
                after: function () {
                    $('.events').append("<li>after event fired.</li>");
                }
            });
        });
    </script>
    <!--//End-slider-script -->
    <div  id="top" class="callbacks_container">
        <ul class="rslides" id="slider3">
            <li>
                <div class="banner1">
                </div>
            </li>
            <li>
                <div class="banner1 banner2">
                </div>
            </li>
            <li>
                <div class="banner1 banner3">
                </div>
            </li>
        </ul>
        <div class="clearfix"> </div>
    </div>
</div>
<!--//banner-->
<div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >企业网站模板</a></div>
<div class="bottom_xf" id="xf">
    <p>bottom sssssssssssssssssssssssssssssssssssss</p>
</div>
<!--welcome-->
<div class="welcome">
    <div class="container">
        <h1 class="hdng">Welcome</h1>
        <p>让一个人置身于变幻无穷的环境中，让他与数不尽或远或近的人物错身而过，让他与整个世界发生关系：这就是电影的意义。 </p>
        <div class="welcome-info">
            <div class="col-md-3 welcome-grids">
                <img src="images/动物世界.jpg" alt="" width="620" height="200"/>
                <h2>《动物世界》上周五内地首映</h2>
                <p>《动物世界》以2.53亿的成绩拿下周票房冠军，成为4月《后来的我们》（首周票房5.62亿）之后首周票房最高的国产电影，并压轴拿下6月国产片票房季军。</p>
            </div>
            <div class="col-md-3 welcome-grids">
                <img src="images/超人.jpg" alt="" width="620" height="200"/>
                <h2>皮克斯动画《超人总动员2》位居周票房季军</h2>
                <p>自1996年的《玩具总动员》起，皮克斯已有15部作品在内地上映，《超人总动员2》是其中第四部票房突破2亿的作品，并暂居票房亚军。</p>
            </div>

            <div class="col-md-3 welcome-grids">
                <img src="images/超人.jpg" alt="" width="620" height="200"/>
                <h2>皮克斯动画《超人总动员2》位居周票房季军</h2>
                <p>自1996年的《玩具总动员》起，皮克斯已有15部作品在内地上映，《超人总动员2》是其中第四部票房突破2亿的作品，并暂居票房亚军。</p>
            </div>

            <div class="col-md-3 welcome-grids">
                <img src="images/超人.jpg" alt="" width="620" height="200"/>
                <h2>皮克斯动画《超人总动员2》位居周票房季军</h2>
                <p>自1996年的《玩具总动员》起，皮克斯已有15部作品在内地上映，《超人总动员2》是其中第四部票房突破2亿的作品，并暂居票房亚军。</p>
            </div>
            <div class="clearfix"> </div>
        </div>
        <div class="welcome-info">
            <div class="col-md-3 welcome-grids">
                <img src="images/动物世界.jpg" alt="" width="620" height="200"/>
                <h2>《动物世界》上周五内地首映</h2>
                <p>《动物世界》以2.53亿的成绩拿下周票房冠军，成为4月《后来的我们》（首周票房5.62亿）之后首周票房最高的国产电影，并压轴拿下6月国产片票房季军。</p>
            </div>
            <div class="col-md-3 welcome-grids">
                <img src="images/超人.jpg" alt="" width="620" height="200"/>
                <h2>皮克斯动画《超人总动员2》位居周票房季军</h2>
                <p>自1996年的《玩具总动员》起，皮克斯已有15部作品在内地上映，《超人总动员2》是其中第四部票房突破2亿的作品，并暂居票房亚军。</p>
            </div>

            <div class="col-md-3 welcome-grids">
                <img src="images/超人.jpg" alt="" width="620" height="200"/>
                <h2>皮克斯动画《超人总动员2》位居周票房季军</h2>
                <p>自1996年的《玩具总动员》起，皮克斯已有15部作品在内地上映，《超人总动员2》是其中第四部票房突破2亿的作品，并暂居票房亚军。</p>
            </div>

            <div class="col-md-3 welcome-grids">
                <img src="images/超人.jpg" alt="" width="620" height="200"/>
                <h2>皮克斯动画《超人总动员2》位居周票房季军</h2>
                <p>自1996年的《玩具总动员》起，皮克斯已有15部作品在内地上映，《超人总动员2》是其中第四部票房突破2亿的作品，并暂居票房亚军。</p>
            </div>
            <div class="clearfix"> </div>
        </div>
        <div class="welcome-info">
            <div class="col-md-3 welcome-grids">
                <img src="images/动物世界.jpg" alt="" width="620" height="200"/>
                <h2>《动物世界》上周五内地首映</h2>
                <p>《动物世界》以2.53亿的成绩拿下周票房冠军，成为4月《后来的我们》（首周票房5.62亿）之后首周票房最高的国产电影，并压轴拿下6月国产片票房季军。</p>
            </div>
            <div class="col-md-3 welcome-grids">
                <img src="images/超人.jpg" alt="" width="620" height="200"/>
                <h2>皮克斯动画《超人总动员2》位居周票房季军</h2>
                <p>自1996年的《玩具总动员》起，皮克斯已有15部作品在内地上映，《超人总动员2》是其中第四部票房突破2亿的作品，并暂居票房亚军。</p>
            </div>

            <div class="col-md-3 welcome-grids">
                <img src="images/超人.jpg" alt="" width="620" height="200"/>
                <h2>皮克斯动画《超人总动员2》位居周票房季军</h2>
                <p>自1996年的《玩具总动员》起，皮克斯已有15部作品在内地上映，《超人总动员2》是其中第四部票房突破2亿的作品，并暂居票房亚军。</p>
            </div>

            <div class="col-md-3 welcome-grids">
                <img src="images/超人.jpg" alt="" width="620" height="200"/>
                <h2>皮克斯动画《超人总动员2》位居周票房季军</h2>
                <p>自1996年的《玩具总动员》起，皮克斯已有15部作品在内地上映，《超人总动员2》是其中第四部票房突破2亿的作品，并暂居票房亚军。</p>
            </div>
            <div class="clearfix"> </div>
        </div>

    </div>
</div>
<!--//welcome-->
<!--banner-bottom-->
<div class="banner-bottom">
    <div class="container">
        <div class="col-md-4 banner-bottom-grids">
            <h2>Who We Are ?</h2>
        </div>
        <div class="col-md-4 banner-bottom-grids">
            <h4>天河欢乐汇影城</h4>
            <p> 天河欢乐汇影城是由武汉市电影发行放映公司（天河院线）投资并倾力打造的全数字化高端品质影城，位于书城路18号欢乐汇创意大楼五层。
                影城按照五星级国际标准，由香港设计师设计，共有8个国际标准影厅及1个巨幕厅，可容纳1500人同时观影。
                影城特设VIP会员购票专区以及会员专属休息区 ，提供免费咖啡、书籍、wifi，让会员感受无微不至的贴心服务。 </p>
        </div>
        <div class="col-md-4 banner-bottom-grids">
            <h4>地址</h4>
            <p>武汉市洪山区书城路18号欢乐汇创意大楼5楼（瑞安王朝酒店旁） </p>
        </div>
        <div class="col-md-4 banner-bottom-grids">
            <h4>电话</h4>
            <p>027-87200010 </p>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
<!--//banner-bottom-->
<!--work-->
<div class="work">
    <div class="col-md-8 work-grids work-img">
    </div>
    <div class="col-md-4 work-grids">
        <h3>What We Do ?</h3>
        <p></p>
        <ul>
            <li><span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span><a href="#">电影</a>  </li>
            <li><span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span><a href="#">资讯</a> </li>
            <li><span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span><a href="#">查询</a></li>
            <li><span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span><a href="#">选座购票</a></li>

        </ul>

    </div>
    <div class="clearfix"> </div>
</div>
<div class="work">
    <div class="col-md-4 work-grids work-grids-left">
        <h3>Why You Choose Us ?</h3>
        <p>影城按照五星级国际标准，由香港设计师设计，共有8个国际标准影厅及1个巨幕厅，可容纳1500人同时观影。</p>
        <ul>
            <li><span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>特色影厅：3D，4K</li>
            <li><span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>特色服务：停车，刷卡，Wifi</li>
            <li><span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>周边设施：游戏厅</li>
            <li><span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>周边餐饮：奇火锅，天椒尚品</li>
            <li><span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>周边休闲：畅想KTV</li>
        </ul>

    </div>
    <div class="col-md-8 work-grids work-img work-img-btm">
    </div>
    <div class="clearfix"> </div>
</div>
<!--//work-->
<!--services-->
<%--<div class="services">
    <div class="container">
        <section class="slider">
            <div class="flexslider">
                <ul class="slides">
                    <li>
                        <div class="services-grids">
                            <div class="srvc-img">
                                <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                            </div>
                            <h4>Dltrices</h4>
                            <p>Claritas est etiam processus dynaicus qui Mirum est notare quam </p>
                        </div>
                    </li>
                    <li>
                        <div class="services-grids">
                            <div class="srvc-img">
                                <span class="glyphicon glyphicon-camera" aria-hidden="true"></span>
                            </div>
                            <h4>Notareq</h4>
                            <p>Claritas est etiam processus dynaicus qui Mirum est notare quam </p>
                        </div>
                    </li>
                    <li>
                        <div class="services-grids">
                            <div class="srvc-img">
                                <span class="glyphicon glyphicon-heart-empty" aria-hidden="true"></span>
                            </div>
                            <h4>Mirumest</h4>
                            <p>Claritas est etiam processus dynaicus qui Mirum est notare quam </p>
                        </div>
                    </li>
                    <li>
                        <div class="services-grids">
                            <div class="srvc-img">
                                <span class="glyphicon glyphicon-certificate" aria-hidden="true"></span>
                            </div>
                            <h4>Processus</h4>
                            <p>Claritas est etiam processus dynaicus qui Mirum est notare quam </p>
                        </div>
                    </li>
                </ul>
            </div>
        </section>
        <!--FlexSlider-->
        <script defer src="js/jquery.flexslider.js"></script>
        <script type="text/javascript">
            $(window).load(function(){
                $('.flexslider').flexslider({
                    animation: "slide",
                    start: function(slider){
                        $('body').removeClass('loading');
                    }
                });
            });
        </script>
        <!--End-slider-script-->
    </div>
</div>--%>
<!--//services-->
<!--footer-->
<div class="footer">
    <div class="container">
        <div class="footer-left">
            <p>Copyright &copy; 2018.Company name All rights reserved.</p>
        </div>
        <div class="social-icons">
            <ul>
                <li><a href="#" class="fb"></a></li>
                <li><a href="#"></a></li>
                <li><a href="#" class="gg"></a></li>
                <li><a href="#" class="pn"></a></li>
            </ul>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
<!--//footer-->
<!--smooth-scrolling-of-move-up-->
<script type="text/javascript">
    $(document).ready(function() {
        /*
        var defaults = {
            containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 1200,
            easingType: 'linear'
        };
        */

        $().UItoTop({ easingType: 'easeOutQuart' });

    });
</script>
<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!--//smooth-scrolling-of-move-up-->
<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="js/bootstrap.js"></script>
</body>
</html>


