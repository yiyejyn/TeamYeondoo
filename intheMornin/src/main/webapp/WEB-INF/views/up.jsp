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

  //]]></script>

<script>
         
        $(function(){
            //모달을 전역변수로 선언
            var modalContents = $(".modal-contents");
            var modal = $("#defaultModal");
             
            //------- 검사하여 상태를 class에 적용
            $('#type').keyup(function(event){
                 
                var divType = $('#divType');
                 
                if($('#type').val()==""){
                    divType.removeClass("has-success");
                    divType.addClass("has-error");
                }else{
                    divType.removeClass("has-error");
                    divType.addClass("has-success");
                }
            });
             
            $('#color').keyup(function(event){
                 
                var divColor = $('#divColor');
                 
                if($('#color').val()==""){
                    divColor.removeClass("has-success");
                    divColor.addClass("has-error");
                }else{
                    divColor.removeClass("has-error");
                    divColor.addClass("has-success");
                }
            });

			$('#season').keyup(function(event){
                 
				 var divSeason = $('#divSeason');
				  
				 if($('#season').val()==""){
					divSeason.removeClass("has-success");
					divSeason.addClass("has-error");
				 }else{
					divSeason.removeClass("has-error");
					divSeason.addClass("has-success");
				 }
			 });
			
			 $( "form" ).submit(function( event ) {
                
				 var divType = $('#divType');
				 var divColor = $('#divColor');
				 var divSeason = $('#divSeason');
			
				if($('#type').val()==""){
                    modalContents.text("옷 종류를 입력해주세요");
                    modal.modal('show');
                     
                    divType.removeClass("has-success");
                    divType.addClass("has-error");
                    $('#type').focus();
                    return false;
                }else{
                    divType.removeClass("has-error");
                    divType.addClass("has-success");
                }

				if($('#color').val()==""){
                    modalContents.text("옷 색상를 입력해주세요");
                    modal.modal('show');
                     
                    divColor.removeClass("has-success");
                    divColor.addClass("has-error");
                    $('#color').focus();
                    return false;
                }else{
                    divColor.removeClass("has-error");
                    divColor.addClass("has-success");
                }

				if($('#season').val()==""){
                    modalContents.text("옷 계절를 입력해주세요");
                    modal.modal('show');
                     
                    divSeason.removeClass("has-success");
                    divSeason.addClass("has-error");
                    $('#season').focus();
                    return false;
                }else{
                    divSeason.removeClass("has-error");
                    divSeason.addClass("has-success");
                }
			});
             
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
                        <li class="active">
                            <a href="home.html">TODAY</a>
                        </li>
                        <li>
                            <a href="mycloset.html">MY CLOSET</a>
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
		<div class="modal fade" id="defaultModal">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
						<h4 class="modal-title">알림</h4>
					</div>
					<div class="modal-body">
						<p class="modal-contents"></p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					</div>
				</div><!-- /.modal-content -->
			</div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
		<!--// 모달창 -->
		<form style="display: inline-block;" class="form-horizontal" role="form" method="post" action="javascript:alert( '의상이 등록되었습니다.' );">
			<div class="form-group" id="divType">
				<label for="inputType" class="col-lg-2 control-label">타입</label>
					<div class="col-lg-10">
						<input type="text" class="form-control" id="type" data-rule-required="true" placeholder="옷의 타입" maxlength="50">
					</div>
			</div>
			<div class="form-group" id="divColor">
				<label for="inputColor" class="col-lg-2 control-label">색상</label>
					<div class="col-lg-10">
						<input type="text" class="form-control" id="color" data-rule-required="true" placeholder="옷의 색상" maxlength="50">
					</div>
			</div>
			<div class="form-group" id="divSeason">
				<label for="inputSeason" class="col-lg-2 control-label">계절</label>
					<div class="col-lg-10">
						<input type="text" class="form-control" id="season" data-rule-required="true" placeholder="옷의 계절" maxlength="50">
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