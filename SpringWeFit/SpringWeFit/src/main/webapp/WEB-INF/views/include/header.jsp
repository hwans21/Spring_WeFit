<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WeFit</title>
    <!--reset.css (css 초기화)-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css">
    
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>
    
    <style>
        /* 부트스트랩 메뉴바설정  */
        .navbar {
            min-height: 130px;
        }

        .navbar a {
            font-size: 20px;
            font-weight: 800;
        }

        .navbar > .container-fluid > .collapse {
            padding-top: 80px;
            padding-left: 250px;

        }

        .navbar>.container-fluid>.navbar-header>button {
            height: 120px;
            width: 120px;
        }

        .navbar>.container-fluid>.navbar-header>button>span {
            margin: 0 auto;
            margin-bottom: 25px;
            width: 70px;
            height: 10px;
        }

        .navbar>.container-fluid>.navbar-header>button>span:first-child {
            margin-top: 30px;
        }

        .navbar>.container-fluid>.navbar-header>button>span:last-child {
            margin-bottom: 0px;
        }
    </style>

</head>

<body>
    <!-- 부트스트랩 메뉴바 -->
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <!-- 메뉴에서 가장 왼쪽, 모바일에서 표시되는 제목 -->
            <div class="navbar-header">
                <!-- 모바일때 표시되는 메뉴 버튼(PC 버젼에서는 보이지 않는다.)  -->
                <button type="button" class="navbar-toggle collapsed btn btn-lg" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!-- 메뉴의 홈페이지 이름 -->
                <a class="navbar-brand" href="<c:url value='/' />"><img src="${pageContext.request.contextPath }/resources/img/logo/logo2.png"
                        width="230px" alt="logo"></a>
            </div>

            <!-- 메뉴의 리스트 -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <!-- Link 메뉴 (class가 active가 포함되어 있기 때문에 선택된 메뉴 뜻) -->
                    <li>
                        <a href="<c:url value='/placeBoard/placeList' />">함께 운동해요 <span class="sr-only">(current)</span></a>
                    </li>
                    <!-- Link 메뉴 -->
                    <li><a href='<c:url value='/courseBoard/' />'>운동강의</a></li>
                    <li><a href="<c:url value='/dietBoard/dietList' />">오늘먹은식단</a></li>
                    <li><a href="<c:url value='/noticeBoard/' />">게시판</a></li>
                    <li><a href="<c:url value='/marketBoard/market_board' />">장터</a></li>
                </ul>

                <!-- 오른쪽 정렬의 메뉴 -->
                <ul class="nav navbar-nav navbar-right">
                    <!-- Link 메뉴 -->

                     <!-- 로그인 했을경우 -->
                     <c:if test="${loginuser != null }">
                    
	                    <li class="dropdown">
	                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
	                            aria-expanded="false">${loginuser.memberNick }님 <span class="caret"></span></a>
	                        <ul class="dropdown-menu">
	                            <li><a href="#"><span class="glyphicon glyphicon-map-marker"
	                                        aria-hidden="true">&nbsp;대흥동</span></a></li>
	                            <li role="separator" class="divider"></li>
	                            <li><a href="/FRONT/views/board/user/mypage.html"><span class="glyphicon glyphicon-pencil"
	                                        aria-hidden="true">&nbsp;마이페이지</span></a></li>
	                            <li><a href="#"><span class="glyphicon glyphicon-log-out"
	                                        aria-hidden="true">&nbsp;로그아웃</span></a></li>
	                        </ul>
	                    </li>
                    </c:if>
                    <!-- 로그인을 안했을 경우 -->
                    <c:if test="${loginuser == null }">
	                    <li class="dropdown">
	                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
	                            aria-expanded="false">로그인하기 <span class="caret"></span></a>
	                        <ul class="dropdown-menu">
	                            <li><a href="#"><span class="glyphicon glyphicon-remove"
	                                        aria-hidden="true">&nbsp;위치정보없음</span></a></li>
	                            <li role="separator" class="divider"></li>
	                            <li><a href="#" data-toggle="modal" data-target="#modal-login"><span class="glyphicon glyphicon-pencil"
	                                        aria-hidden="true">&nbsp;로그인</span></a></li>
	                            <li><a href="#"><span class="glyphicon glyphicon-log-out"
	                                        aria-hidden="true" data-toggle="modal" data-target="#modal-join">&nbsp;회원가입</span></a></li>
	                        </ul>
	                    </li>
                    
                    </c:if>
                </ul>
            </div>
        </div>
    </nav>






    <!-- Modal login창 -->
    <div id="modal-login" class="modal fade">
        <div class="modal-dialog">

            <!-- Modal Content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">로그인</h4>
                </div>
                <div class="modal-body">


                    <form action="<c:url value="/user/login" />" method="post" id="form-login" class="form-horizontal">

                        <div class="form-group">
                            <label for="login-email" class="col-sm-3 control-label">이메일</label>
                            <div class="col-sm-9">
                                <input type="email" class="form-control" id="login-email" name="memberEmail" placeholder="이메일을 입력해주세요">
                            </div>

                        </div>
                       
                        <div class="form-group">
                            <label for="login-password" class="col-sm-3 control-label">비밀번호</label>
                            <div class="col-sm-9">
                                <input type="password" class="form-control" id="login-password" name="memberPasswd"

                                    placeholder="비밀번호를 입력해주세요">
                            </div>

                        </div>
                        <div class="form-group">
                            <label for="auto-login-check" class="col-sm-3 control-label">자동로그인</label>
                            <div class="col-sm-1">


                                <input type="checkbox" class="form-control" id="auto-login-check" name="autoLoginCheck">


                            </div>

                        </div>


                    </form>


                </div>
                <div class="modal-footer">


                    <button type="button" class="btn btn-info" data-dismiss="modal" id="loginBtn">로그인</button>

                    <button type="button" class="btn btn-default" data-dismiss="modal" data-toggle="modal" data-target="#modal-pwsearch" >비밀번호 찾기</button>
                </div>


            </div>
        </div>
    </div>
    <!-- Modal join창-->


    <div  id="modal-join" class="modal fade">

        <div class="modal-dialog">

            <!-- Modal Content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">회원가입</h4>
                </div>
                <div class="modal-body">


                    <form id="form-join" action="<c:url value='/user/join' />" method="post" role="form" class="form-horizontal">
                        <div class="form-group">
                            <label for="memail" class="col-sm-3 control-label">이메일</label>
                            <div class="col-sm-6">
                                <input type="email" class="form-control" id="join-email" name="memberEmail" placeholder="이메일을 입력해주세요">
                            </div>
                            <div class="col-sm-3">
                                <button id="emailCheckBtn" type="button" class="form-control">이메일확인</button>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="mnick" class="col-sm-3 control-label">닉네임</label>
                            <div class="col-sm-6">
                                <input type="text" class="form-control" id="join-nick" name="memberNick" placeholder="닉네임을 입력해주세요">
                            </div>
                            <div class="col-sm-3">
                                <button id="nickCheckBtn" type="button" class="form-control">닉네임확인</button>

                            </div>

                        </div>
                        <div class="form-group">


                            <label for="mpasswd" class="col-sm-3 control-label">비밀번호</label>
                            <div class="col-sm-9">
                                <input type="password" class="form-control" id="join-passwd" name="memberPasswd"

                                    placeholder="비밀번호를 입력해주세요">
                            </div>

                        </div>
                        <div class="form-group">


                            <label for="passwordchk" class="col-sm-3 control-label">비밀번호확인</label>
                            <div class="col-sm-9">
                                <input type="password" class="form-control" id="passwordchk"

                                    placeholder="비밀번호를 확인해주세요">
                            </div>

                        </div>

                        <div class="form-group">


                            <label for="mphone" class="col-sm-3 control-label">핸드폰 번호</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="join-phone" name="memberPhone"
                                    placeholder="'-'빼고 입력해주세요">
                            </div>

                        </div>


                    </form>
                </div>



                <div class="modal-footer">


                    <button id="joinBtn" type="button" class="btn btn-primary">가입하기</button>

                    <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                </div>


            </div>
        </div>
    </div>
     <!-- Modal pwsearch창 -->
     <div id="modal-pwsearch" class="modal fade">
        <div class="modal-dialog">

            <!-- Modal Content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">비밀번호찾기</h4>
                </div>
                <div class="modal-body">
                    <form action="" method="post" id="form-join" class="form-horizontal">
                       
                        <div class="form-group">
                            <label for="input-email" class="col-sm-3 control-label">이메일</label>
                            <div class="col-sm-9">
                                <input type="email" class="form-control" id="input-email" placeholder="이메일을 입력해주세요">
                            </div>
                           
                        </div>
                        
                        

                        
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-info" data-dismiss="modal">인증메일 발송</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                </div>


            </div>
        </div>
    </div>

    <script defer>
		
		// 비밀번호 규칙 정규식
		// : 숫자, 특문 각 1회 이상, 영문은 2개 이상 사용하여 8자리 이상 입력
		const regExpPw = /^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{8,16}$/;
		// 이메일 정규표현식
		const regExpEmail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		
		// 핸드폰 정규표현식
		const regExpPhone = /^[0-9]*$/;
        /*부트스트랩 jquery*/
        $(document).ready(function () {
        	
        	
            menuBarLocation();
            $(window).resize(function () {
                console.log($(window).width())
                menuBarLocation();
            });

            
            let emailChk = false;
            let nickChk = false;
            let passwdChk = false;
           	
            const msg = '${msg }';
           	if(msg === "복구 필요"){
           		if(confirm("계정이 복구가 필요합니다.\n복구를 진행하시겠습니까?")){
           			$('#login-email').val('${login.memberEmail }');
           			$('#form-login').attr("action","<c:url value='/user/recovery'/>");
           			$('#form-login').submit();
           		}
           	}
           	else if(msg !== ""){
            	
            	alert(msg);
            }
            
            $('#emailCheckBtn').click(function(){
            	
            	if ($('#join-email').val() === "") {
            		alert('이메일을 입력해주세요');
            		return;
            		
            	} else if(!regExpEmail.test($('#join-email').val())){
            		alert('이메일 형식에 맞게 입력해주세요');
            		return;
            	}
            	
            	$.ajax({
                    type: "POST",
                    url: "<c:url value='/user/emailChk' />",
                    headers: {
                        "Content-Type": "application/json"
                    },
                    dataType: "text", //서버로부터 어떤 형식으로 받을지(생략가능)
                    data: $('#join-email').val(),
                    success: function (data) {
                        console.log('통신성공!' + data);
                      	if(data==="success"){
                      		alert('사용 가능한 이메일입니다.')
                      		emailChk = true;
                      		$('#join-email').attr("readonly","true");
                      	} else{
                      		$('#join-email').val('');
                      		alert('이미 사용중인 이메일입니다.')
                      	}
                    },
                    error: function () {
                        alert('통신에 실패했습니다. 관리자에게 문의하세요');
                    }
                }); //이메일 체크 비동기 통신 끝
            }); //이메일 체크 이벤트 끝
            
			$('#nickCheckBtn').click(function(){
				if ($('#join-nick').val() === "") {
            		alert('닉네임을 입력해주세요');
            		return;
            		
            	}
				
            	$.ajax({
                    type: "POST",
                    url: "<c:url value='/user/nickChk' />",
                    headers: {
                        "Content-Type": "application/json"
                    },
                    dataType: "text", //서버로부터 어떤 형식으로 받을지(생략가능)
                    data: $('#join-nick').val(),
                    success: function (data) {
                        console.log('통신성공!' + data);

                      	if(data==="success"){
                      		alert('사용 가능한 닉네임입니다.')
                      		$('#join-nick').attr("readonly","true")
                      		nickChk = true;
                      	} else{
                      		alert('이미 사용중인 닉네임입니다.')
                      	}
                    },
                    error: function () {
                        alert('통신에 실패했습니다. 관리자에게 문의하세요');
                    }
                }); //닉네임 체크 비동기 통신 끝
            }); //닉네임 체크 이벤트 끝

           $('#join-passwd').keyup(function(){
        	   if(!regExpPw.test($('#join-passwd').val())){
        		   $('#join-passwd').css("background-color","pink");
        		   passwdChk = false;
        	   } else {
        		   $('#join-passwd').css("background-color","skyblue");
        		   passwdChk = true;
        	   }
        	   
           });
            
           $('#passwordchk').keyup(function(){
        	   if($('#join-passwd').val() !== $('#passwordchk').val()){
        		   $('#passwordchk').css("background-color","pink");
        	   } else {
        		   $('#passwordchk').css("background-color","skyblue");
        	   }
        	   
           });
           
           $('#join-phone').keyup(function(){
        	  if(!regExpPhone.test($('#join-phone').val())){
        		  alert("'-'은 입력하지마세요");
        		  $('#join-phone').val('');
        	  } 
           });
         
            $('#joinBtn').click(function(){
            	if (!emailChk){
            		alert('이메일 중복확인이 필요합니다.');
            		return;
            	} else if(!nickChk){
            		alert('닉네임 중복확인이 필요합니다.');
            		return;
            	} else if($('#join-passwd').val() === ""){
           			alert('비밀번호는 필수값입니다.');
           			return;
           		} else if ($('#passwordchk').val() === ""){
           			alert('비밀번호확인을 입력해주세요');
           			return;
           		} else if(!passwdChk){
           			alert('최소 8 자, 특수문자, 영문 및  숫자섞어서 써주세요')
           			$('#join-passwd').val('');
           			$('#passwordchk').val('');
           			return;
           		}
            	$('#form-join').submit();
            	
            	
            	
            }); // 가입버튼 클릭 이벤트
            
            $('#loginBtn').click(function(){
            	if($('#login-email').val() === ""){
            		alert('이메일을 입력해주세요!');
            	} else if($('#login-password').val() === ""){
            		alert('비밀번호를 입력해주세요!');
            	} else{
            		
            		$('#form-login').submit();
            	}
            }); // 로그인 클릭 이벤트
            

        });
        function menuBarLocation(){
            if ($(window).width() < 755) {
                $('.navbar > .container-fluid > .collapse').css('padding-left', '0px');
                $('.navbar > .container-fluid > .collapse').css('padding-top', '0px');
            } else {
                $('.navbar > .container-fluid > .collapse').css('padding-left', '250px');
                $('.navbar > .container-fluid > .collapse').css('padding-top', '80px');
            }
        }
            



    </script>
</body>

</html>