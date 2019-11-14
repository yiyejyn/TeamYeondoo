<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>#OOTD</title>
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" rel="stylesheet" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<link rel="shortcut icon" href="https://ssl.pstatic.net/static.checkout/layout/201911010009/images/customer/favicon.ico" />
<link type="text/css" rel="stylesheet" href="https://ssl.pstatic.net/static.checkout/layout/201911010009/css/customer/chk_n_common.css">
<link type="text/css" rel="stylesheet" href="//img.pay.naver.net/o/wstatic/css/service/front/order/orderlist.css?1573540153871">
<script type="text/javascript" language="javascript" charset="utf-8">
	document.domain = "naver.com";
</script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.pay/o/c/commonjs/static/js/common_timeline/jindo_2_11_0/jindo.desktop.js" charset="utf-8"></script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.pay/o/c/commonjs/static/js/common/nmp.js" charset="utf-8"></script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.pay/o/c/commonjs/static/js/common/nmp.base.js" charset="utf-8"></script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.pay/o/c/commonjs/static/js/common/nmp.variables.js" charset="utf-8"></script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.pay/o/c/commonjs/static/js/common/nmp.utility.js" charset="utf-8"></script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.pay/o/c/commonjs/static/js/service/front/order/nmp/nmp.layer.js" charset="utf-8"></script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.pay/o/c/commonjs/static/js/common/nmp.event_delegator.js" charset="utf-8"></script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.pay/o/c/commonjs/static/js/common/nmp.window.js" charset="utf-8"></script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.pay/o/c/commonjs/static/js/common_timeline/jindo_component_1_14_0/jindo-component.js" charset="utf-8"></script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.pay/o/c/commonjs/static/js/component/nmp.component.Base.js" charset="utf-8"></script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.pay/o/c/commonjs/static/js/component/nmp.component.Grid.js" charset="utf-8"></script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.pay/o/c/commonjs/static/js/component/nmp.component.DataRequester.js" charset="utf-8"></script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.pay/o/c/commonjs/static/js/component/nmp.component.ExtendGrid.js" charset="utf-8"></script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.pay/o/c/commonjs/static/js/component/nmp.component.CategorySelectorBase.js" charset="utf-8"></script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.pay/o/c/commonjs/static/js/component/nmp.component.CategorySelectorForSelectBox.js" charset="utf-8"></script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.pay/o/c/commonjs/static/js/component/nmp.component.FormHelper.js" charset="utf-8"></script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.pay/o/c/commonjs/static/js/component/nmp.component.AffiliateLayerLoader.js" charset="utf-8"></script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.pay/o/c/commonjs/static/js/component/nmp.component.RollingList.js" charset="utf-8"></script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.pay/o/c/commonjs/static/js/common/lcslog.0.7.0.js" charset="utf-8"></script>
<script type="text/javascript" src="//img.pay.naver.net/o/wstatic/js/service/front/order.js?1573540153871" charset="utf-8"></script>
<script type="text/javascript" src="//img.pay.naver.net/o/wstatic/js/service/front/order/ui.js?1573540153871" charset="utf-8"></script>
<script type="text/javascript" src="//img.pay.naver.net/o/wstatic/js/service/front/order/layer.js?1573540153871" charset="utf-8"></script>
<script type="text/javascript" src="//img.pay.naver.net/o/wstatic/js/service/front/order/timeline/timeline.js?1573540153871" charset="utf-8"></script>
<script type="text/javascript" src="//img.pay.naver.net/o/wstatic/js/service/front/order/timeline/home/home.js?1573540153871" charset="utf-8"></script>
<script type="text/javascript" src="//img.pay.naver.net/o/wstatic/js/service/front/order/timeline/home/summary.js?1573540153871" charset="utf-8"></script>
<script type="text/javascript" src="//img.pay.naver.net/o/wstatic/js/service/front/order/timeline/home/list.js?1573540153871" charset="utf-8"></script>
<script type="text/javascript" src="//img.pay.naver.net/o/wstatic/js/service/front/order/timeline/home/date.js?1573540153871" charset="utf-8"></script>
<script type="text/javascript" src="//img.pay.naver.net/o/wstatic/js/service/front/order/timeline/home/floatingBanner.js?1573540153871" charset="utf-8"></script>
<script type="text/javascript">
lcs_do();
nmp.registerModule(nmp.front.order);
nmp.registerModule(nmp.front.order.ui);
nmp.registerModule(nmp.front.order.layer);
nmp.registerModule(nmp.front.order.timeline);
nmp.registerModule(nmp.front.order.timeline.home);
nmp.registerModule(nmp.front.order.timeline.home.summary, {
"isShowSummary" : true,
"isShowZzim" : true
});
nmp.registerModule(nmp.front.order.timeline.home.list, {
"lastId" : "20171216182506CHK2017121687392481",
"isSearch" : false,
"isPointMenu" : false,
"htParameter" : {},
"overrideHtParameter" : {
"tabMenu" : "SHOPPING",
"serviceGroup" : "SHOPPING",
"statusGroup" : ""
},
"bookingCommandHeadUrl" : "https://api.booking.naver.com/v3.1/custom/naver-pay/redirect/",
"npointOnlineReceiptPopupUrl" : "https://pay.naver.com/npoint/pay/wallet/inqReceipt.nhn?decorator=out&viewPgcd=false&SID=",
"etaxDetailPopupUrl": "https://taxpayment.pay.naver.com/detail/pc/etax/",
"wetaxDetailPopupUrl": "https://taxpayment.pay.naver.com/detail/pc/wetax/",
"":""
});
nmp.registerModule(nmp.front.order.timeline.home.list.date, {
"fromDate" : "2017.11.12",
"toDate" : "2019.11.12"
});
nmp.registerModule(nmp.front.order.timeline.home.floatingBanner, {
"banner" : {"imageUrl":"https://phinf.pstatic.net/checkout/20191108_126/1573195714737uvo7c_PNG/176x176.png","linkUrl":"https://campaign.naver.com/event/pointgift_howto"},
"tabMenu" : "SHOPPING"
});
</script>
<script type="text/javascript" language="JavaScript" src="https://ssl.pstatic.net/static.checkout/layout/201911010009/js/customer/layout.variable.real.js"></script>
<script type="text/javascript" language="JavaScript" src="https://ssl.pstatic.net/static.checkout/layout/201911010009/js/customer/layout.gnb.js"></script>
<script type="text/javascript" language="JavaScript" src="https://ssl.pstatic.net/static.checkout/layout/201911010009/js/customer/layout.lnb.js"></script>
<script type="text/javascript" language="JavaScript" src="https://ssl.pstatic.net/static.checkout/layout/201911010009/js/customer/layout.snb.js"></script>
<script type="text/javascript" language="JavaScript" src="https://ssl.pstatic.net/static.checkout/layout/201911010009/js/customer/checkout.nclktag.js"></script>

</head>
<body>
	<div>
		<nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <!-- 오른쪽 메뉴바 -->
                    <button type="button" class="collapsed navbar-toggle" data-toggle="collapse" data-target="#nav_menu" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span> 
                        <span class="icon-bar"></span> 
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="./">
                        #OOTD
                    </a>
                </div>
                <div class="collapse navbar-collapse" id="nav_menu">
                    <ul class="nav navbar-nav navbar-right" >
                        <li>
                            <a href="#">TODAY</a>
                        </li>
                        <li>
                            <a href="<c:url value='myPage'/>">MY PAGE</a>
                        </li>
                        <li>
                            <a href="<c:url value='login'/>"><span class="glyphicon glyphicon-log-in"></span> LOG-IN</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
    <div id="container">
        <div class="snb">
            <div class="member_sc">
                <div class="profile_img">
                    <span class="mask"></span>
                </div>
                <div class="profile_txt">
                    <span class="name" style="font-size: 13px;">이름 연동</span>
                </div>
            </div>
            <div class="s_sc">
                <dl class="my_npoint" style="text-align: center;">
                    <dt style="font-size: 15px;">성별</dt>
                    <dd style="font-size: 13px; margin: 10%">성별 연동</dd>
                </dl>
                <dl class="my_npoint" style="text-align: center;">
                    <dt style="font-size: 15px;">TOTAL CLOTHES</dt>
                    <dd style="font-size: 13px; margin-top: 10%;">옷 갯수 연동</dd>
                </dl>
            </div>
		</div>
   </div>
        
        <!-- content -->
	<div id="content" class="subpg _root">
		<div>
			<div class="ask_sc">
			    <div style="display: inline-block; margin-left: 28%;">
			        <a href="<c:url value='myClosetO'/>" style="font-size: 20px; color: black; font-weight: 500;">OUTER</a>
			    </div>
			    <div style="display: inline-block; margin-left: 10%;">
			            <a href="<c:url value='myClosetT'/>" style="font-size: 20px; color: black; font-weight: 500;">TOP</a>
			    </div>
			    <div style="display: inline-block; margin-left: 10%;">
			        <a href="<c:url value='myClosetB'/>" style="font-size: 20px; color: black; font-weight: 500;">BOTTOM</a>
                </div>
                <button type="button" class="btn btn-defualt" style="float: right;" onclick="location.href='editT'">EDIT</button>
			</div>
			<div>
			    <div class="tit_month" style="width: 33%; height: 50%; display: inline-block;">
			        <ul style="margin-top: 10%;">
			            <li class="goods_pay_item ">
			                <a href="/orderStatus/2019103137492141" class="goods_thumb">
			                    <img src="./resources/img/t_1.png" width="170" height="237">				
			                </a>
			            </li>
			        </ul>
			    </div>
			    <div class="tit_month" style="width: 33%; height: 50%; display: inline-block;">
			        <ul style="margin-top: 10%;">
			            <li class="goods_pay_item ">
			                <a href="/orderStatus/2019103137492141" class="goods_thumb">
			                    <img src="./resources/img/t_2.png" width="170" height="237">				
			                </a>
			            </li>
			        </ul>
			    </div>
			    <div class="tit_month" style="width: 33%; height: 50%; display: inline-block;">
			        <ul style="margin-top: 10%;">
			            <li class="goods_pay_item ">
			                <a href="/orderStatus/2019103137492141" class="goods_thumb">
			                    <img src="./resources/img/t_3.png" width="170" height="237">				
			                </a>
			            </li>
			        </ul>
			    </div>
			    <div class="tit_month" style="width: 33%; height: 50%; display: inline-block;">
		            <ul style="margin-top: 10%;">
		                <li class="goods_pay_item ">
		                    <a href="/orderStatus/2019103137492141" class="goods_thumb">
		                        <img src="./resources/img/top_1.PNG" width="170" height="237">				
		                    </a>
		                </li>
		            </ul>
			    </div>
			    <div class="tit_month" style="width: 33%; height: 50%; display: inline-block;">
			        <ul style="margin-top: 10%;">
			            <li class="goods_pay_item ">
			                <a href="/orderStatus/2019103137492141" class="goods_thumb">
			                    <img src="./resources/img/top_2.PNG" width="170" height="237">				
			                </a>
			            </li>
			        </ul>
			    </div>
			    <div class="tit_month" style="width: 33%; height: 50%; display: inline-block;">
			        <ul style="margin-top: 10%;">
			            <li class="goods_pay_item ">
			                <a href="/orderStatus/2019103137492141" class="goods_thumb">
			                    <img src="./resources/img/top_3.PNG" width="170" height="237">				
			                </a>
			            </li>
			        </ul>
			    </div>
			</div>
		</div>
	</div>
</body>
</html>