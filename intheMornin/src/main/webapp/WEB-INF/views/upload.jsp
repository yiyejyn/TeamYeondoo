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

<script type="text/javascript" src="//code.jquery.com/jquery-1.9.1.js"></script>
<link rel="stylesheet" type="text/css" href="/css/result-light.css">
<style id="compiled-css" type="text/css"></style>
<script type="text/javascript">//<![CDATA[
    $(window).load(function(){  
        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
            
                reader.onload = function (e) {
                $('#blah').attr('src', e.target.result);
            }
            
            reader.readAsDataURL(input.files[0]);
        }
    }
    
    $("#imgInp").change(function(){
        readURL(this);
    });

    });

  //]]>
</script>
<script type="text/javascript">
    $(document).ready(function(){
        switch($('#selecttype option:selected').val()) {
            case outer:

            break;
            case top:
                
            break;
            case bottom:

            break;
            default:
                //
        }
    });
</script>
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
                    <a class="navbar-brand" href="#">
                        #OOTD
                    </a>
                </div>
                <div class="collapse navbar-collapse" id="nav_menu">
                    <ul class="nav navbar-nav navbar-right" >
                        <li>
                            <a href="home.html">TODAY</a>
                        </li>
                        <li>
                            <a href="mycloset.html">MY PAGE</a>
                        </li>
                        <li>
                            <a href="login.html"><span class="glyphicon glyphicon-log-in"></span> LOG-IN</a>
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
		<form id="form1" style="display: inline-block; width: 50%;">
			<img id="blah" src="#" alt="이미지 미리보기" width="400" height="400" />
			<input type='file' id="imgInp" class="inp-img" accept=".jpg, .png" />
		</form>
		
		<form style="display: inline-block; width: 40%;" class="form-horizontal" role="form" method="post" action="javascript:alert( '의상이 등록되었습니다.' );">
			<div class="form-group" id="divType">
				<label for="inputType" class="col-lg-2 control-label">타입</label>
					<div class="col-lg-10" style="width: 140px;">
                        <select name="type" id="selecttype" class="form-control" data-rule-required="true">
                            <option value="outer">OUTER</option>
                            <option value="top">TOP</option>
                            <option value="bottom">BOTTOM</option>
                        </select>    
					</div>
			</div>
			<div class="form-group" id="divColor">
				<label for="inputColor" class="col-lg-2 control-label">색상</label>
					<div class="col-lg-10" style="width: 140px;">
						<input type="color" value="#ff000" class="form-control" id="color" data-rule-required="true">
					</div>
			</div>
			<div class="form-group" id="divSeason">
				<label for="inputSeason" class="col-lg-2 control-label">계절</label>
					<div class="col-lg-10" style="width: 140px;">
                        <select name="season" id="season" class="form-control" data-rule-required="true">
                            <option value="spring">봄</option>
                            <option value="summer">여름</option>
                            <option value="autumn">가을</option>
                            <option value="winter">겨울</option>
                        </select>
					</div>
			</div>
			<div class="form-group">
				<div class="col-lg-offset-2 col-lg-10">
					<button type="submit" class="btn btn-default">등록</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>