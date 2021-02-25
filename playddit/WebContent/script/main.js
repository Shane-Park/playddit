$(function(){
	loadProfile();
	
	$('#logout').on('click', function(){
		logout();
	})
	
})

function logout(){
	$.ajax({
		url : '/playddit/login/logout.do',
		error : function(xhr){
			alert("status : " + xhr.status);
		}
	})
	location.href="./index.html";
}

function loadProfile(){
	
	$.ajax({
		url : '/playddit/login/login.do',
		type : 'post',
		success : function(res){
			$('#userName').append(res.user_nickname);	
			$('#userMail').append(res.user_id);	
			$('#allFeed').append(res.allfeed);	
			$('#Follower').append(res.follower);	
			$('#Following').append(res.following);	
			$('#className').append(res.className);	
			$('#self').append(res.user_bio);	
			
		},
		error : function(xhr){
			alert("상태 : " + xhr.status);
		},
		dataType : 'json'
	})

}