$(function(){
	loadPlay();
	
	
	// follow 버튼 토글 이벤트
    $("#followBox").on("click", ".miniBox", function(){
		var targetId = $(this).attr("user_id");
		
		if($(this).children('span').hasClass('follow')){
			unfollow(targetId);
		}else{
			follow(targetId);
		}
		
        $("span", this).toggleClass("follow");
    });

	$('#join').on('click',function(){
		
		// 입력된 학급 정보대로 학급 정보 변경 및 해당 학급 관리자에게 승인알람 보내기
		
		
		// 이후 feed.jsp로 리다이렉트
		location.href="feed.jsp";
		
	})
	
})



/************************************************************************** 

							여기부터 함수 선언부입니다. 
		
 ***************************************************************************/

follow = function(targetId){
	$.ajax({
		url : '/playddit/users/followUser.do',
		type : 'post',
		data : {'targetId' : targetId},
		success : function(res){
			// 프로필 쪽 숫자 바꾸기
			$('#Following').empty();
			$('#Following').append(res);

		},
		error : function(xhr){
			alert("status : " + xhr.status);
		},
		dataType : "text"
	})
}

unfollow = function(targetId){
	$.ajax({
		url : '/playddit/users/unfollowUser.do',
		type : 'post',
		data : {'targetId' : targetId},
		success : function(res){
			// 모달창 숫자 바꾸기 
			$('.followTitle').find('span').empty();
			$('.followTitle').find('span').append(res);
			
			// 프로필쪽 숫자 바꾸기
			$('#Following').empty();
			$('#Following').append(res);	
			
		},
		error : function(xhr){
			alert("status : " + xhr.status);
		},
		dataType : "text"
	})
}

function loadPlay(){
	$.ajax({
		url : '/playddit/login/loadPlay.do',
		type : 'post',
		success : function(res){
			
			// 로그인 성공하며 쿠키에 아이디 값을 기록한다. 
			// 회원가입 성공시 서블릿에서 이미 세션에는 기록했으니, 결과적으로 로그인 필요충분조건 모두 달성
			setCookie("user_id", res.user_id, 1);
			
			// 아이디, 닉네임을 화면에 찍어준다.
			$('#name').text(res.user_nickname);
			$('#mail').text(res.user_id);
			
			// 클래스는 option을 동적으로 붙여준다.
			$.each(res.classList, function(i,v){
				var option = '<option value='+v.class_id+'>'+v.classname+'</option>';
				$('#welcomBottom').find('select').append(option);
			})
			
			// 추천 친구 리스트도 miniBox들을 동적으로 붙여준다.
			$.each(res.followList, function(i,v){
				
				if(v.user_pic === undefined){
					v.user_pic = 'default.png';
				}
				
				var miniBox = '<div class="miniBox" user_id='+v.user_id+'>'
							+	'<div class="smallPic">'
							+		'<img src="images/profile/'+v.user_pic+'" alt="프로필사진"/>'
							+	'</div>'
							+	'<p class="followName">'+v.user_nickname+'</p>'
							+	'<p class="followClass">'+v.classname2+'</p>'
							+	'<span>'
							+		'<i class="fas fa-plus"></i>'
							+		'<i class="fas fa-user-check"></i>'
							+	'</span>'
							+'</div>'
               $('#followBox').append(miniBox);         
				
			})
			
		},
		error : function(xhr){
			alert("status : " + xhr.status);
		},
		dataType : 'json'
	})
}

function setCookie(name, value, exp){
	var date = new Date();
	date.setTime(date.getTime() + exp*24*60*60*1000);
	document.cookie = name+'='+escape(value)+';expires='+date.toUTCString()+';path=1';
}

function getCookie(name) {
  const value = `; ${document.cookie}`;
  const parts = value.split(`; ${name}=`);
  if (parts.length === 2) return unescape(parts.pop()).split(';').shift();
}