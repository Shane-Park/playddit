<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="utf-8" />
		<jsp:include page="/preScript.jsp"></jsp:include>
		<meta name="viewport" content="initial-scale=1, width=device-width" />
		<meta name="author" content="playddit" />
		<meta name="description" content="대덕인재개발원 학생들을 위한 스터디그룹, 소모임, 학급 공지사항, 주변 맛집 검색 등 다양한
                                            커뮤니티 서비스를 제공합니다." />
		<meta name="keywords" content="대덕인재개발원, 대전 중구 대덕인재개발원, 대덕인재, 개발자과정, 프로그래머, 자바" />
		<title>playddit</title>
		<link href="favicon.ico" rel="icon shortcut" />
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
        <link href="css/common.css" rel="stylesheet"/>
        <link href="css/user.css" rel="stylesheet" />
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="script/modal.js"></script>
		<script src="script/join.js"></script>
		<script src="script/badwords.js"></script>
		<script src="js/jquery.serializejson.min.js"></script>
	</head>
    <body class="sky over">
	    <div id="wrap" class="cen">
            <div id="header">
                <a href="index.jsp" id="back">
                    <i class="fas fa-arrow-left"></i>
                </a>
                <img src="images/logo1.png" alt="logo" />
            </div>
            <div id="content">
                <div class="title">
                    <h2>SIGN UP</h2>
                    <p class="subtitle">Please enter your registration details</p>
                </div>
                <form action="join.jsp" method="post" id="joinForm">
                    <div id="joinLeft" class="joinBox">
                        <div class="box">
                            <p><span class="red">*</span> Email<span class="msg"></span></p>
                            <div class="item">
                                <input type="text" name="mail" placeholder="Please enter your email" />
                                <span id="idDbtn" class="double">중복확인</span>
                            </div>
                        </div>
                        
                        <div class="box">
                            <p><span class="red">*</span> Nickname<span class="msg"></span></p>
                            <div class="item">
                                <input type="text" name="nickname" placeholder="Please enter your nickname" />
                                <span id="nickDbtn" class="double">중복확인</span>
                            </div>
                        </div>
                        
                        <div class="box">
                            <p><span class="red">*</span> Password<span class="msg"></span></p>
                            <div class="item">
                                <input type="password" name="pass" placeholder="Please enter your password" />
                                <svg class="eye" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 80 80">
                                    <path d="M39.5 49.5C31.688 49.5 25 42.258 25 40c0-1.862 6.514-9.5 14.5-9.5S54 38.138 54 40c0 2.661-6.894 9.5-14.5 9.5zm-12.491-9.453c.319 1.366 5.78 7.453 12.491 7.453 6.804 0 12.234-6.101 12.493-7.461-.436-1.315-5.808-7.539-12.493-7.539-6.553 0-12 6.208-12.491 7.547z" />
                                    <path d="M39.5 45.5c-3.033 0-5.5-2.467-5.5-5.5s2.467-5.5 5.5-5.5c3.032 0 5.5 2.467 5.5 5.5s-2.468 5.5-5.5 5.5zm0-9c-1.93 0-3.5 1.57-3.5 3.5s1.57 3.5 3.5 3.5S43 41.93 43 40s-1.57-3.5-3.5-3.5z" />
                                </svg>
                            </div>
                        </div>
                        
                        <div class="box">
                            <p><span class="red">*</span> Confirm Password<span class="msg"></span></p>
                            <div class="item">
                                <input type="password" name="passchk" placeholder="Please enter your password" />
                                <svg class="eye" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 80 80">
                                    <path d="M39.5 49.5C31.688 49.5 25 42.258 25 40c0-1.862 6.514-9.5 14.5-9.5S54 38.138 54 40c0 2.661-6.894 9.5-14.5 9.5zm-12.491-9.453c.319 1.366 5.78 7.453 12.491 7.453 6.804 0 12.234-6.101 12.493-7.461-.436-1.315-5.808-7.539-12.493-7.539-6.553 0-12 6.208-12.491 7.547z" />
                                    <path d="M39.5 45.5c-3.033 0-5.5-2.467-5.5-5.5s2.467-5.5 5.5-5.5c3.032 0 5.5 2.467 5.5 5.5s-2.468 5.5-5.5 5.5zm0-9c-1.93 0-3.5 1.57-3.5 3.5s1.57 3.5 3.5 3.5S43 41.93 43 40s-1.57-3.5-3.5-3.5z" />
                                </svg>
                            </div>
                        </div>
                    </div>

                    <div id="joinRight" class="joinBox">
                        <div class="box">
                            <p>&nbsp;&nbsp;Name<span class="msg"></span></p>
                            <div class="item">
                                <input type="text" name="name" placeholder="Please enter your name" />
                            </div>
                        </div>
                        
                        <div class="box">
                            <p>&nbsp;&nbsp;Phone number<span class="msg"></span></p>
                            <div class="item">
                                <input type="tel" name="phone" placeholder="Please enter your phone number" />
                            </div>
                        </div>
                        
                        <div class="box">
                            <p>&nbsp;&nbsp;Birthday<span class="msg"></span></p>
                            <div class="item">
                            	<input type="date" name="birth" date-placeholder="Choose your birthday" required aria-required="true"/>
                            </div> 
                        </div>

                        <p>&nbsp;&nbsp;Class<span class="msg"></span></p>
							<div id="tagChange" class="item">
								<!-- <input name="itemclass" type="text" placeholder="Choose your class"> -->
							</div>
                    </div>
                    
                    <div style="clear: both;"></div>
                    
                    <button type="button" id="joinBtn" class="skyBtn">SIGN UP</button>
                </form>
            </div>
        </div>
        
        <p id="copy">&copy; PLAYDDIT All Rights Reserved</p>
        
        <!-- code Modal -->
        <div id="modal" class="code">
            <div id="codeModal" class="cen fullModal">
                <div id="closeBox">
                    <button type="button" id="close" style="color : #a8ccfd;">
                        <i class="fas fa-times"></i>
                    </button>
                </div>
                
                <div style="clear: both;"></div>
                
                <div id="codeTop">
                    <img src="images/code.png" alt="이메일인증" />
                    <div class="title">
                        <h2>Welcome to playddit!</h2>
                        <p class="subtitle">
                            Email authentication is required
                        </p>
                    </div>
                </div>

                <div id="codeBottom">
                    <p class="cont">
                    환영합니다! 회원가입 완료를 위한 이메일 인증을 진행 해 주세요.<br/><span id="codeMail"></span> 메일함을 확인해주세요!
                    </p>

                    <form action="code.jsp" id="codeCont" method="post">
                        <h2>인증 코드 입력</h2>
                        <input type="text" name="code" />
                        <br/>
                        <button type="reset" id="remail">인증코드 재발송</button>
                        <button type="submit" id="subCode">이메일 인증 확인</button>
                    </form>
                </div>
            </div>
        </div>
        
        <script>
            $(document).ready(function(){
                $('.eye').on('click',function(){
                    $(this).toggleClass("active");
                    if($(".eye").hasClass("active")){
                        $(this).prev("input").attr("type", "text");
                    }else{
                        $(this).prev("input").attr("type", "password");
                    }
                });

            });
        </script>
    </body>
</html>

