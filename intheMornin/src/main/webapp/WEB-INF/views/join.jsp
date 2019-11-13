<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" rel="stylesheet" />
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>

    <script>
         
        $(function(){
            //모달을 전역변수로 선언
            var modalContents = $(".modal-contents");
            var modal = $("#defaultModal");
             
            $('.onlyAlphabetAndNumber').keyup(function(event){
                if (!(event.keyCode >=37 && event.keyCode<=40)) {
                    var inputVal = $(this).val();
                    $(this).val($(this).val().replace(/[^_a-z0-9]/gi,'')); //_(underscore), 영어, 숫자만 가능
                }
            });
             
            $(".onlyHangul").keyup(function(event){
                if (!(event.keyCode >=37 && event.keyCode<=40)) {
                    var inputVal = $(this).val();
                    $(this).val(inputVal.replace(/[a-z0-9]/gi,''));
                }
            });
         
            $(".onlyNumber").keyup(function(event){
                if (!(event.keyCode >=37 && event.keyCode<=40)) {
                    var inputVal = $(this).val();
                    $(this).val(inputVal.replace(/[^0-9]/gi,''));
                }
            });
             
            //------- 검사하여 상태를 class에 적용
            $('#id').keyup(function(event){
                 
                var divId = $('#divId');
                 
                if($('#id').val()==""){
                    divId.removeClass("has-success");
                    divId.addClass("has-error");
                }else{
                    divId.removeClass("has-error");
                    divId.addClass("has-success");
                }
            });
             
            $('#password').keyup(function(event){
                 
                var divPassword = $('#divPassword');
                 
                if($('#password').val()==""){
                    divPassword.removeClass("has-success");
                    divPassword.addClass("has-error");
                }else{
                    divPassword.removeClass("has-error");
                    divPassword.addClass("has-success");
                }
            });
             
            $('#passwordCheck').keyup(function(event){
                 
                var passwordCheck = $('#passwordCheck').val();
                var password = $('#password').val();
                var divPasswordCheck = $('#divPasswordCheck');
                 
                if((passwordCheck=="") || (password!=passwordCheck)){
                    divPasswordCheck.removeClass("has-success");
                    divPasswordCheck.addClass("has-error");
                }else{
                    divPasswordCheck.removeClass("has-error");
                    divPasswordCheck.addClass("has-success");
                }
            });
             
            $('#name').keyup(function(event){
                 
                var divName = $('#divName');
                 
                if($.trim($('#name').val())==""){
                    divName.removeClass("has-success");
                    divName.addClass("has-error");
                }else{
                    divName.removeClass("has-error");
                    divName.addClass("has-success");
                }
            });
             
            $('#addres').keyup(function(event){
                 
                var divAddress = $('#divAddress');
                 
                if($.trim($('#address').val())==""){
                    divAddress.removeClass("has-success");
                    divAddress.addClass("has-error");
                }else{
                    divAddress.removeClass("has-error");
                    divAddress.addClass("has-success");
                }
            });
             
            
             
            
             
             
            //------- validation 검사
            $( "form" ).submit(function( event ) {
                 
                var provision = $('#provision');
                var memberInfo = $('#memberInfo');
                var divId = $('#divId');
                var divPassword = $('#divPassword');
                var divPasswordCheck = $('#divPasswordCheck');
                var divName = $('#divName');
                var divNickname = $('#divAddres');
                 
                //회원가입약관
                if($('#provisionYn:checked').val()=="N"){
                    modalContents.text("회원가입약관에 동의하여 주시기 바랍니다."); //모달 메시지 입력
                    modal.modal('show'); //모달 띄우기
                     
                    provision.removeClass("has-success");
                    provision.addClass("has-error");
                    $('#provisionYn').focus();
                    return false;
                }else{
                    provision.removeClass("has-error");
                    provision.addClass("has-success");
                }
                 
                //개인정보취급방침
                if($('#memberInfoYn:checked').val()=="N"){
                    modalContents.text("개인정보취급방침에 동의하여 주시기 바랍니다.");
                    modal.modal('show');
                     
                    memberInfo.removeClass("has-success");
                    memberInfo.addClass("has-error");
                    $('#memberInfoYn').focus();
                    return false;
                }else{
                    memberInfo.removeClass("has-error");
                    memberInfo.addClass("has-success");
                }
                 
                //아이디 검사
                if($('#id').val()==""){
                    modalContents.text("아이디를 입력하여 주시기 바랍니다.");
                    modal.modal('show');
                     
                    divId.removeClass("has-success");
                    divId.addClass("has-error");
                    $('#id').focus();
                    return false;
                }else{
                    divId.removeClass("has-error");
                    divId.addClass("has-success");
                }
                 
                //패스워드 검사
                if($('#password').val()==""){
                    modalContents.text("패스워드를 입력하여 주시기 바랍니다.");
                    modal.modal('show');
                     
                    divPassword.removeClass("has-success");
                    divPassword.addClass("has-error");
                    $('#password').focus();
                    return false;
                }else{
                    divPassword.removeClass("has-error");
                    divPassword.addClass("has-success");
                }
                 
                //패스워드 확인
                if($('#passwordCheck').val()==""){
                    modalContents.text("패스워드 확인을 입력하여 주시기 바랍니다.");
                    modal.modal('show');
                     
                    divPasswordCheck.removeClass("has-success");
                    divPasswordCheck.addClass("has-error");
                    $('#passwordCheck').focus();
                    return false;
                }else{
                    divPasswordCheck.removeClass("has-error");
                    divPasswordCheck.addClass("has-success");
                }
                 
                //패스워드 비교
                if($('#password').val()!=$('#passwordCheck').val() || $('#passwordCheck').val()==""){
                    modalContents.text("패스워드가 일치하지 않습니다.");
                    modal.modal('show');
                     
                    divPasswordCheck.removeClass("has-success");
                    divPasswordCheck.addClass("has-error");
                    $('#passwordCheck').focus();
                    return false;
                }else{
                    divPasswordCheck.removeClass("has-error");
                    divPasswordCheck.addClass("has-success");
                }
                 
                //이름
                if($('#name').val()==""){
                    modalContents.text("이름을 입력하여 주시기 바랍니다.");
                    modal.modal('show');
                     
                    divName.removeClass("has-success");
                    divName.addClass("has-error");
                    $('#name').focus();
                    return false;
                }else{
                    divName.removeClass("has-error");
                    divName.addClass("has-success");
                }
                 
                //주소
                if($('#address').val()==""){
                    modalContents.text("주소을 입력하여 주시기 바랍니다.");
                    modal.modal('show');
                     
                    divNickname.removeClass("has-success");
                    divNickname.addClass("has-error");
                    $('#address').focus();
                    return false;
                }else{
                    divNickname.removeClass("has-error");
                    divNickname.addClass("has-success");
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
                    <a class="navbar-brand" href="">
                        #OOTD
                    </a>
                </div>
            <div class="collapse navbar-collapse" id="nav_menu">
            <ul class="nav navbar-nav navbar-right" >
                <li class="active">
                    <a href="#">TODAY</a>
                </li>
                <li>
                    <a href="mycloset.jsp">MY CLOSET</a>
                </li>
                <li>
                    <a href="<c:url value='/login.jsp'/>"><span class="glyphicon glyphicon-log-in"></span> LOG-IN</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
</div>
        
        <div class="container"><!-- 좌우측의 공간 확보 -->
            <!--// 헤더 들어가는 부분 -->
            <!-- 모달창 -->
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
            <hr/>
                <!-- 본문 들어가는 부분 -->
                 
 
 
        <form class="form-horizontal" role="form" method="post" action="./add">
            <div class="form-group">
                <label for="provision" class="col-lg-2 control-label">회원가입약관</label>
                <div class="col-lg-10" id="provision">
                    <textarea class="form-control" rows="8" style="resize:none" placeholder="Readonly input here…" readonly>
                        제 1 장 총 칙

 

                        제 1 조 (목적)
                        이 약관은 {COMPANY_NAME}(이하 "사이트"라 합니다)에서 제공하는 인터넷서비스(이하 "서비스"라 합니다)의 이용 조건 및 절차에 관한 기본적인 사항을 규정함을 목적으로 합니다.
                        
                         
                        
                        제 2 조 (약관의 효력 및 변경)
                        ① 이 약관은 서비스 화면이나 기타의 방법으로 이용고객에게 공지함으로써 효력을 발생합니다.
                        ② 사이트는 이 약관의 내용을 변경할 수 있으며, 변경된 약관은 제1항과 같은 방법으로 공지 또는 통지함으로써 효력을 발생합니다.
                        
                         
                        
                        제 3 조 (용어의 정의)
                        이 약관에서 사용하는 용어의 정의는 다음과 같습니다.
                        ① 회원 : 사이트와 서비스 이용계약을 체결하거나 이용자 아이디(ID)를 부여받은 개인 또는 단체를 말합니다.
                        ② 신청자 : 회원가입을 신청하는 개인 또는 단체를 말합니다.
                        ③ 아이디(ID) : 회원의 식별과 서비스 이용을 위하여 회원이 정하고 사이트가 승인하는 문자와 숫자의 조합을 말합니다.
                        ④ 비밀번호 : 회원이 부여 받은 아이디(ID)와 일치된 회원임을 확인하고, 회원 자신의 비밀을 보호하기 위하여 회원이 정한 문자와 숫자의 조합을 말합니다.
                        ⑤ 해지 : 사이트 또는 회원이 서비스 이용계약을 취소하는 것을 말합니다.
                        
                         
                        
                        제 2 장 서비스 이용계약
                        
                         
                        
                        제 4 조 (이용계약의 성립)
                        ① 이용약관 하단의 동의 버튼을 누르면 이 약관에 동의하는 것으로 간주됩니다.
                        ② 이용계약은 서비스 이용희망자의 이용약관 동의 후 이용 신청에 대하여 사이트가 승낙함으로써 성립합니다.
                        
                         
                        
                        제 5 조 (이용신청)
                        ① 신청자가 본 서비스를 이용하기 위해서는 사이트 소정의 가입신청 양식에서 요구하는 이용자 정보를 기록하여 제출해야 합니다.
                        ② 가입신청 양식에 기재하는 모든 이용자 정보는 모두 실제 데이터인 것으로 간주됩니다. 실명이나 실제 정보를 입력하지 않은 사용자는 법적인 보호를 받을 수 없으며, 서비스의 제한을 받을 수 있습니다.
                        
                         
                        
                        제 6 조 (이용신청의 승낙)
                        ① 사이트는 신청자에 대하여 제2항, 제3항의 경우를 예외로 하여 서비스 이용신청을 승낙합니다.
                        ② 사이트는 다음에 해당하는 경우에 그 신청에 대한 승낙 제한사유가 해소될 때까지 승낙을 유보할 수 있습니다.
                        가. 서비스 관련 설비에 여유가 없는 경우
                        나. 기술상 지장이 있는 경우
                        다. 기타 사이트가 필요하다고 인정되는 경우
                        ③ 사이트는 신청자가 다음에 해당하는 경우에는 승낙을 거부할 수 있습니다.
                        가. 다른 개인(사이트)의 명의를 사용하여 신청한 경우
                        나. 이용자 정보를 허위로 기재하여 신청한 경우
                        다. 사회의 안녕질서 또는 미풍양속을 저해할 목적으로 신청한 경우
                        라. 기타 사이트 소정의 이용신청요건을 충족하지 못하는 경우
                        
                         
                        
                        제 7 조 (이용자정보의 변경)
                        회원은 이용 신청시에 기재했던 회원정보가 변경되었을 경우에는, 온라인으로 수정하여야 하며 변경하지 않음으로 인하여 발생되는 모든 문제의 책임은 회원에게 있습니다.
                        
                         
                        
                        제 3 장 계약 당사자의 의무
                        
                         
                        
                        제 8 조 (사이트의 의무)
                        ① 사이트는 회원에게 각 호의 서비스를 제공합니다.
                        가. 신규서비스와 도메인 정보에 대한 뉴스레터 발송
                        나. 추가 도메인 등록시 개인정보 자동 입력
                        다. 도메인 등록, 관리를 위한 각종 부가서비스
                        ② 사이트는 서비스 제공과 관련하여 취득한 회원의 개인정보를 회원의 동의없이 타인에게 누설, 공개 또는 배포할 수 없으며, 서비스관련 업무 이외의 상업적 목적으로 사용할 수 없습니다. 단, 다음 각 호의 1에 해당하는 경우는 예외입니다.
                        가. 전기통신기본법 등 법률의 규정에 의해 국가기관의 요구가 있는 경우
                        나. 범죄에 대한 수사상의 목적이 있거나 정보통신윤리 위원회의 요청이 있는 경우
                        다. 기타 관계법령에서 정한 절차에 따른 요청이 있는 경우
                        ③ 사이트는 이 약관에서 정한 바에 따라 지속적, 안정적으로 서비스를 제공할 의무가 있습니다.
                        
                         
                        
                        제 9 조 (회원의 의무)
                        ① 회원은 서비스 이용 시 다음 각 호의 행위를 하지 않아야 합니다.
                        가. 다른 회원의 ID를 부정하게 사용하는 행위
                        나. 서비스에서 얻은 정보를 사이트의 사전승낙 없이 회원의 이용 이외의 목적으로 복제하거나 이를 변경, 출판 및 방송 등에 사용하거나 타인에게 제공하는 행위
                        다. 사이트의 저작권, 타인의 저작권 등 기타 권리를 침해하는 행위
                        라. 공공질서 및 미풍양속에 위반되는 내용의 정보, 문장, 도형 등을 타인에게 유포하는 행위
                        마. 범죄와 결부된다고 객관적으로 판단되는 행위
                        바. 기타 관계법령에 위배되는 행위
                        ② 회원은 관계법령, 이 약관에서 규정하는 사항, 서비스 이용 안내 및 주의 사항을 준수하여야 합니다.
                        ③ 회원은 내용별로 사이트가 서비스 공지사항에 게시하거나 별도로 공지한 이용 제한 사항을 준수하여야 합니다.
                        
                         
                        
                        제 4 장 서비스 제공 및 이용
                        
                         
                        
                        제 10 조 (회원 아이디(ID)와 비밀번호 관리에 대한 회원의 의무)
                        ① 아이디(ID)와 비밀번호에 대한 모든 관리는 회원에게 책임이 있습니다. 회원에게 부여된 아이디(ID)와 비밀번호의 관리소홀, 부정사용에 의하여 발생하는 모든 결과에 대한 전적인 책임은 회원에게 있습니다.
                        ② 자신의 아이디(ID)가 부정하게 사용된 경우 또는 기타 보안 위반에 대하여, 회원은 반드시 사이트에 그 사실을 통보해야 합니다.
                        
                         
                        
                        제 11 조 (서비스 제한 및 정지)
                        ① 사이트는 전시, 사변, 천재지변 또는 이에 준하는 국가비상사태가 발생하거나 발생할 우려가 있는 경우와 전기통신사업법에 의한 기간통신 사업자가 전기통신서비스를 중지하는 등 기타 불가항력적 사유가 있는 경우에는 서비스의 전부 또는 일부를 제한하거나 정지할 수 있습니다.
                        ② 사이트는 제1항의 규정에 의하여 서비스의 이용을 제한하거나 정지할 때에는 그 사유 및 제한기간 등을 지체없이 회원에게 알려야 합니다.
                        
                         
                        
                        제5장 계약사항의 변경, 해지
                        
                         
                        
                        제 12 조 (정보의 변경)
                        회원이 주소, 비밀번호 등 고객정보를 변경하고자 하는 경우에는 홈페이지의 회원정보 변경 서비스를 이용하여 변경할 수 있습니다.
                        
                         
                        
                        제 13 조 (계약사항의 해지)
                        회원은 서비스 이용계약을 해지할 수 있으며, 해지할 경우에는 본인이 직접 서비스를 통하거나 전화 또는 온라인 등으로 사이트에 해지신청을 하여야 합니다. 사이트는 해지신청이 접수된 당일부터 해당 회원의 서비스 이용을 제한합니다. 사이트는 회원이 다음 각 항의 1에 해당하여 이용계약을 해지하고자 할 경우에는 해지조치 7일전까지 그 뜻을 이용고객에게 통지하여 소명할 기회를 주어야 합니다.
                        ① 이용고객이 이용제한 규정을 위반하거나 그 이용제한 기간 내에 제한 사유를 해소하지 않는 경우
                        ② 정보통신윤리위원회가 이용해지를 요구한 경우
                        ③ 이용고객이 정당한 사유 없이 의견진술에 응하지 아니한 경우
                        ④ 타인 명의로 신청을 하였거나 신청서 내용의 허위 기재 또는 허위서류를 첨부하여 이용계약을 체결한 경우
                        사이트는 상기 규정에 의하여 해지된 이용고객에 대해서는 별도로 정한 기간동안 가입을 제한할 수 있습니다.
                        
                         
                        
                        제6장 손해배상
                        
                         
                        
                        제 14 조 (면책조항)
                        ① 사이트는 회원이 서비스 제공으로부터 기대되는 이익을 얻지 못하였거나 서비스 자료에 대한 취사선택 또는 이용으로 발생하는 손해 등에 대해서는 책임이 면제됩니다.
                        ② 사이트는 회원의 귀책사유나 제3자의 고의로 인하여 서비스에 장애가 발생하거나 회원의 데이터가 훼손된 경우에 책임이 면제됩니다.
                        ③ 사이트는 회원이 게시 또는 전송한 자료의 내용에 대해서는 책임이 면제됩니다.
                        ④ 상표권이 있는 도메인의 경우, 이로 인해 발생할 수도 있는 손해나 배상에 대한 책임은 구매한 회원 당사자에게 있으며, 사이트는 이에 대한 일체의 책임을 지지 않습니다.
                        
                         
                        
                        제 15 조 (관할법원)
                        
                         
                        
                        서비스와 관련하여 사이트와 회원간에 분쟁이 발생할 경우 사이트의 본사 소재지를 관할하는 법원을 관할법원으로 합니다.
                        
                         
                        
                        [부칙]
                        
                         
                        
                        (시행일) 이 약관은 2019년 11월부터 시행합니다.
                    </textarea>
                    <div class="radio">
                        <label>
                            <input type="radio" id="provisionYn" name="provisionYn" value="Y" autofocus="autofocus" checked>
                            동의합니다.
                        </label>
                    </div>
                    <div class="radio">
                        <label>
                            <input type="radio" id="provisionYn" name="provisionYn" value="N">
                            동의하지 않습니다.
                        </label>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label for="memberInfo" class="col-lg-2 control-label">개인정보취급방침</label>
                <div class="col-lg-10" id="memberInfo">
                    <textarea class="form-control" rows="8" style="resize:none" placeholder="Readonly input here…" readonly>
                        ﻿'OOO'은 (이하 '회사'는) 고객님의 개인정보를 중요시하며, "정보통신망 이용촉진 및 정보보호"에 관한 법률을 준수하고 있습니다.
                        회사는 개인정보취급방침을 통하여 고객님께서 제공하시는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며, 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다.
                        회사는 개인정보취급방침을 개정하는 경우 웹사이트 공지사항(또는 개별공지)을 통하여 공지할 것입니다.
                        
                        ■ 수집하는 개인정보 항목
                        
                        회사는 회원가입, 상담, 서비스 신청 등등을 위해 아래와 같은 개인정보를 수집하고 있습니다.
                        
                        ο 수집항목 : 이름 , 생년월일 , 성별 , 로그인ID , 비밀번호 , 비밀번호 질문과 답변 , 자택 전화번호 , 자택 주소 , 휴대전화번호 , 이메일 , 직업 , 회사명 , 부서 , 직책 , 회사전화번호 , 취미 , 결혼여부 , 기념일 , 법정대리인정보 , 주민등록번호 , 서비스 이용기록 , 접속 로그 , 접속 IP 정보 , 결제기록
                        ο 개인정보 수집방법 : 홈페이지(회원가입) , 서면양식
                        
                        ■ 개인정보의 수집 및 이용목적
                        
                        회사는 수집한 개인정보를 다음의 목적을 위해 활용합니다.
                        
                        ο 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산 콘텐츠 제공 , 구매 및 요금 결제 , 물품배송 또는 청구지 등 발송
                        ο 회원 관리
                        회원제 서비스 이용에 따른 본인확인 , 개인 식별 , 연령확인 , 만14세 미만 아동 개인정보 수집 시 법정 대리인 동의여부 확인 , 고지사항 전달 ο 마케팅 및 광고에 활용
                        접속 빈도 파악 또는 회원의 서비스 이용에 대한 통계
                        
                        ■ 개인정보의 보유 및 이용기간
                        
                        회사는 개인정보 수집 및 이용목적이 달성된 후에는 예외 없이 해당 정보를 지체 없이 파기합니다.
                        
                        ■ 개인정보의 파기절차 및 방법
                        
                        회사는 원칙적으로 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체없이 파기합니다. 파기절차 및 방법은 다음과 같습니다.
                        
                        ο 파기절차
                        회원님이 회원가입 등을 위해 입력하신 정보는 목적이 달성된 후 별도의 DB로 옮겨져(종이의 경우 별도의 서류함) 내부 방침 및 기타 관련 법령에 의한 정보보호 사유에 따라(보유 및 이용기간 참조) 일정 기간 저장된 후 파기되어집니다.
                        
                        별도 DB로 옮겨진 개인정보는 법률에 의한 경우가 아니고서는 보유되어지는 이외의 다른 목적으로 이용되지 않습니다.
                        
                        ο 파기방법
                        - 전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다.
                        
                        ■ 개인정보 제공
                        
                        회사는 이용자의 개인정보를 원칙적으로 외부에 제공하지 않습니다. 다만, 아래의 경우에는 예외로 합니다.
                        - 이용자들이 사전에 동의한 경우
                        - 법령의 규정에 의거하거나, 수사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관의 요구가 있는 경우
                        
                        ■ 수집한 개인정보의 위탁
                        
                        회사는 서비스 제공 및 향상을 위하여 아래와 같이 개인정보를 위탁하고 있으며, 관계 법령에 따라 위탁계약시 개인정보가 안전하게 관리될 수 있도록 필요한 사항을 규정하고 있습니다.
                        화사의 개인정보 수탁업체 및 위탁업무의 내용은 아래와 같습니다.
                        
                        ───────────────────────────────────
                        수탁업체 : 위탁업무 내용
                        ───────────────────────────────────
                        　　　　　　ⅩⅩ　　　　　: 상품배송
                        ───────────────────────────────────
                        　　　　　　ⅩⅩ　　　　　: 결제, 구매안전서비스 제공등
                        ───────────────────────────────────
                        　　　　　　ⅩⅩ　　　　　: 실명확인, 본인인증
                        ───────────────────────────────────
                        
                        
                        ■ 이용자 및 법정대리인의 권리와 그 행사방법
                        
                        이용자 및 법정 대리인은 언제든지 등록되어 있는 자신 혹은 당해 만 14세 미만 아동의 개인정보를 조회하거나 수정할 수 있으며 가입해지를 요청할 수도 있습니 다.
                        이용자 혹은 만 14세 미만 아동의 개인정보 조회?수정을 위해서는 ‘개인정보변 경’(또는 ‘회원정보수정’ 등)을 가입해지(동의철회)를 위해서는 “회원탈퇴”를 클릭 하여 본인 확인 절차를 거치신 후 직접 열람, 정정 또는 탈퇴가 가능합니다. 혹은 개인정보관리책임자에게 서면, 전화 또는 이메일로 연락하시면 지체없이 조 치하겠습니다.
                        귀하가 개인정보의 오류에 대한 정정을 요청하신 경우에는 정정을 완료하기 전까 지 당해 개인정보를 이용 또는 제공하지 않습니다. 또한 잘못된 개인정보를 제3자 에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체없이 통지하여 정정이 이루어지도록 하겠습니다.
                        oo는 이용자 혹은 법정 대리인의 요청에 의해 해지 또는 삭제된 개인정보는 “oo 가 수집하는 개인정보의 보유 및 이용기간”에 명시된 바에 따라 처리하고 그 외의 용도로 열람 또는 이용할 수 없도록 처리하고 있습니다.
                        
                        ■ 개인정보 자동수집 장치의 설치, 운영 및 그 거부에 관한 사항
                        
                        회사는 귀하의 정보를 수시로 저장하고 찾아내는 ‘쿠키(cookie)’ 등을 운용합니다. 쿠키란 oo의 웹사이트를 운영하는데 이용되는 서버가 귀하의 브라우저에 보내는 아주 작은 텍스트 파일로서 귀하의 컴퓨터 하드디스크에 저장됩니다. 회사은(는) 다음과 같은 목적을 위해 쿠키를 사용합니다.
                        
                        ▶ 쿠키 등 사용 목적
                        - 회원과 비회원의 접속 빈도나 방문 시간 등을 분석, 이용자의 취향과 관심분야를 파악 및 자취 추적, 각종 이벤트 참여 정도 및 방문 회수 파악 등을 통한 타겟 마케팅 및 개인 맞춤 서비스 제공
                        
                        귀하는 쿠키 설치에 대한 선택권을 가지고 있습니다. 따라서, 귀하는 웹브라우저에서 옵션을 설정함으로써 모든 쿠키를 허용하거나, 쿠키가 저장될 때마다 확인을 거치거나, 아니면 모든 쿠키의 저장을 거부할 수도 있습니다.
                        
                        ▶ 쿠키 설정 거부 방법
                        예: 쿠키 설정을 거부하는 방법으로는 회원님이 사용하시는 웹 브라우저의 옵션을 선택함으로써 모든 쿠키를 허용하거나 쿠키를 저장할 때마다 확인을 거치거나, 모든 쿠키의 저장을 거부할 수 있습니다.
                        
                        설정방법 예(인터넷 익스플로어의 경우)
                        : 웹 브라우저 상단의 도구 > 인터넷 옵션 > 개인정보
                        
                        단, 귀하께서 쿠키 설치를 거부하였을 경우 서비스 제공에 어려움이 있을 수 있습니다.
                        
                        ■ 개인정보에 관한 민원서비스
                        
                        회사는 고객의 개인정보를 보호하고 개인정보와 관련한 불만을 처리하기 위하여 아래와 같이 관련 부서 및 개인정보관리책임자를 지정하고 있습니다.
                        
                        고객서비스담당 부서 :OOO
                        전화번호 : OO-OOOO-OOOO
                        이메일 : OOOOO@OOOO
                        
                        개인정보관리책임자 성명 : OOO
                        전화번호 : OO-OOOO-OOOO
                        이메일 : OOOOO@OOOO
                        
                        귀하께서는 회사의 서비스를 이용하시며 발생하는 모든 개인정보보호 관련 민원을 개인정보관리책임자 혹은 담당부서로 신고하실 수 있습니다. 회사는 이용자들의 신고사항에 대해 신속하게 충분한 답변을 드릴 것입니다.
                        
                        기타 개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다.
                        1.개인분쟁조정위원회 (www.1336.or.kr/1336)
                        2.정보보호마크인증위원회 (www.eprivacy.or.kr/02-580-0533~4)
                        3.대검찰청 인터넷범죄수사센터 (http://icic.sppo.go.kr/02-3480-3600)
                        4.경찰청 사이버테러대응센터 (www.ctrc.go.kr/02-392-0330)
                    </textarea>
                    <div class="radio">
                        <label>
                            <input type="radio" id="memberInfoYn" name="memberInfoYn" value="Y" checked>
                            동의합니다.
                        </label>
                    </div>
                    <div class="radio">
                        <label>
                            <input type="radio" id="memberInfoYn" name="memberInfoYn" value="N">
                            동의하지 않습니다.
                        </label>
                    </div>
                </div>
            </div>
            <div class="form-group" id="divId">
                <label for="inputId" class="col-lg-2 control-label">아이디</label>
                <div class="col-lg-10">
                    <input type="email" name="cust_id" class="form-control" id="id" data-rule-required="true" placeholder="이메일 형식으로 작성" maxlength="40">
                </div>
            </div>
            <div class="form-group" id="divPassword">
                <label for="inputPassword" class="col-lg-2 control-label">패스워드</label>
                <div class="col-lg-10">
                    <input type="password" class="form-control" id="password" name="cust_password" data-rule-required="true" placeholder="패스워드" maxlength="30">
                </div>
            </div>
            <div class="form-group" id="divPasswordCheck">
                <label for="inputPasswordCheck" class="col-lg-2 control-label">패스워드 확인</label>
                <div class="col-lg-10">
                    <input type="password" class="form-control" id="passwordCheck" data-rule-required="true" placeholder="패스워드 확인" maxlength="30">
                </div>
            </div>
            <div class="form-group" id="divName">
                <label for="inputName" class="col-lg-2 control-label">이름</label>
                <div class="col-lg-10">
                    <input type="text" name="cust_name" class="form-control onlyHangul" id="name" data-rule-required="true" placeholder="한글만 입력 가능합니다." maxlength="15">
                </div>
            </div>
             
            <div class="form-group" id="divAddress">
                <label for="inputAddress" class="col-lg-2 control-label">주소</label>
                <div class="col-lg-10">
                    <input type="text" name="cust_address" class="form-control" id="address" data-rule-required="true" placeholder="주소" maxlength="50">
                </div>
            </div>
            <div class="form-group">
                <label for="inputPhoneNumber" class="col-lg-2 control-label">성별</label>
                <div class="col-lg-10">
                    <select class="form-control" id="gender">
                        <option value="M">남</option>
                        <option value="F">여</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="inputEmailReceiveYn" class="col-lg-2 control-label">이메일 수신여부</label>
                <div class="col-lg-10">
                    <label class="radio-inline">
                        <input type="radio" id="emailReceiveYn" name="emailReceiveYn" value="Y" checked> 동의합니다.
                    </label>
                    <label class="radio-inline">
                        <input type="radio" id="emailReceiveYn" name="emailReceiveYn" value="N"> 동의하지 않습니다.
                    </label>
                </div>
            </div>
            <div class="form-group">
                <label for="inputPhoneNumber" class="col-lg-2 control-label">SMS수신여부</label>
                <div class="col-lg-10">
                    <label class="radio-inline">
                        <input type="radio" id="smsReceiveYn" name="smsReceiveYn" value="Y" checked> 동의합니다.
                    </label>
                    <label class="radio-inline">
                        <input type="radio" id="smsReceiveYn" name="smsReceiveYn" value="N"> 동의하지 않습니다.
                    </label>
                </div>
            </div>
            <div class="form-group">
                <div class="col-lg-offset-2 col-lg-10">
                    <button type="submit" class="btn btn-default">Sign in</button>
                </div>
            </div>
        </form>
       </div>     
</body>
</html>