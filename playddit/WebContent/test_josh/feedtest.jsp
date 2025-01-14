<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="favicon.ico" rel="icon shortcut" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css"
	href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<link href="../css/common.css" rel="stylesheet" />
<link href="../css/style.css" rel="stylesheet" />
<link href="../css/feed.css" rel="stylesheet" />


<title>Feed Test here!!</title>
<script src="../js/jquery-3.5.1.min.js"></script>
<style>
</style>

<script type="text/javascript">
	$(function() {

		//delete feed 내 피드 삭제하기 모달

		var modal2 = true;

		$("#showfeed").on("click", ".myFeed", function() {
			feedno = $(this).parents(".feed").attr("idx");

			if (modal2) {
				$("#feedDel").show();
				$("#feedDelModal").slideDown(500);
				modal2 = true;
			}

		});

		$("#reportBack, #goCancel").click(
				function() {
					$("#feedDelModal").slideUp(500);
					$("#feedDel").delay(200).hide();
					$("#reportBack").hide();
					modal2 = true;
					$('body').removeClass('scrollOff').off(
							'scroll touchmove mousewheel');
				});

		$('#getfeed').on('click', function() {
			
			getfeed();

		})
		$('#goDel').on('click', function() {
			
			goDel(feedno);

		})
		
		$("#goModi").on("click",function(){
			alert(feedno);
			location.href='feedModifyTest.jsp?feedno=' + feedno;
		});
		
		function goNum(){
			return feedno;
		}
	 	

		$("#showfeed").on("click",".like",function() {
					var likeCount = parseInt($(this).parents('.feed').find(
							'.likeCount').children('span').text());
					var like = $(this).hasClass("on");

					feedno = $(this).parents(".feed").attr("idx");

					if (like) {
						$(this).removeClass("on");
						$(this).html('<i class="far fa-heart"></i>');
						like = false;

						$(this).parents('.feed').find('.likeCount').html(
								'좋아요 <span>' + (likeCount - 1) + ' </span>개 ');

						deleteLike(feedno);
					} else {
						$(this).addClass("on");
						$(this).html('<i class="fas fa-heart"></i>');
						like = true;

						$(this).parents('.feed').find('.likeCount').html(
								'좋아요 <span>' + (likeCount + 1) + ' </span>개 ');

						insertLike(feedno);

					}

				})
		// 좋아요 누르기 insert
		var insertLike = function(feedno) {

			$.ajax({
				url : '/playddit/feed/insertLike.do',
				type : 'post',
				data : {'feedno' : feedno},

				success : function(res) {

				},
				error : function(xhr) {
					alert("status : " + xhr.status);

				},
				dataType : 'json'

			})

		}

		// 좋아요 취소 delete
		var deleteLike = function(feedno) {

			$.ajax({
				url : '/playddit/feed/deleteLike.do',
				type : 'post',
				data : {
					'feedno' : feedno
				},

				success : function(res) {

				},
				error : function(xhr) {
					alert("status : " + xhr.status);

				},
				dataType : 'json'

			})

		}

	})

	// 피드 삭제 function 생성
	var goDel = function(feedno) {
		
		$.ajax({
			url : '/playddit/feed/deleteFeed.do',
			type : 'post',
			data : {
				'feedno' : feedno
			},

			success : function(res) {
				alert(feedno + "피드삭제")
				$("#feedDelModal").slideUp(500);
				$("#feedDel").delay(200).hide();
				$("#reportBack").hide();
				modal2 = true;
				$('body').removeClass('scrollOff').off(
						'scroll touchmove mousewheel');

			},
			error : function(xhr) {
				alert("status : " + xhr.status);

			},
			dataType : 'json'

		})

	}

	// 피드 불러오기 function 생성
	var getfeed = function() {
		//alert("피드불러오기")
		$('#showfeed').empty();
		$.ajax({
					url : '/playddit/feed/getFeed.do',
					dataType : 'json',
					success : function(res) {

						var feeds = "";

						$.each(res,function(i, v) {

											var feed = "";
											v.cont = v.cont.replace(/\n/g,"<br>");

											feed += '<div class="feed" idx="'+v.feedno+'">'
											feed += '<div class="proBox" action="'+v.id+'">'
											feed += '  <div class="proCir">'
											feed += '        <img src="../images/profile/'+v.profile+'" alt="프로필사진" />'
											feed += '   </div>'
											feed += '              <p class="proName">'
											feed += v.nickname
											feed += '                  <span class="proClass"> '
													+ v.classname + ' </span>'
											feed += '              </p>'

											if (v.ismine == "true") {

												feed += '<button type="button" class="myFeed"><i class="fas fa-ellipsis-h"></i></button>'

											} else {

												feed += '<button type="button" class="myFeed" style ="display:none"><i class="fas fa-ellipsis-h"></i></button>'
											}

											feed += '          </div>'

											if (v.feedpic != "feedpictest") {

												word = (v.feedpic).split(",");
												for (i = 0; i < word.length; i++) {
													feed += '          <div class="feedPic">'
													feed += '              <div class="slider">'
													feed += '                  <div class="slide">'
													feed += '                      <img src="../images/feed/'+word[i]+'" />'
													feed += '                  </div>'
													feed += '              </div>'
													feed += '          </div>'
												}

											} else {

												feed += '          <div class="txt">'

												feed += '              <p class="txtCont">'
												feed += v.cont
												feed += '              </p>'
												feed += '          </div>'

											}

											feed += '          <div class="icon">'

											if (v.islike == 0) {
												feed += '              <button type="submit" class="like">'
												feed += '                  <i class="far fa-heart"></i>'
												feed += '              </button>'
											} else {
												feed += '              <button type="submit" class="like on">'
												feed += '                  <i class="fas fa-heart"></i>'
												feed += '              </button>'

											}

											feed += '              <button type="button" class="comment">'
											feed += '                  <i class="far fa-comment-dots"></i>'
											feed += '              </button>'
											feed += '              <button type="button" class="dm">'
											feed += '                  <i class="fas fa-paper-plane"></i>'
											feed += '              </button>'
											feed += '                                                                                                 '
											feed += '              <button type="button" class="report">'
											feed += '                  <i class="fas fa-exclamation-circle"></i>'
											feed += '              </button>'
											feed += '          </div>'
											feed += '                                                                                                 '
											feed += '          <div class="likeCount">'
											feed += '              좋아요 <span>'
													+ v.countlike
													+ ' </span>개 '
											feed += '          </div>'
											feed += '                                                                                                 '

											if (v.feedpic != "feedpictest") {
												feed += '          <div class="txt">'
												feed += '              <a href="#" class="proName"> '
														+ v.nickname + ' </a>'
												feed += '              <p class="txtCont">'
												feed += v.cont
												feed += '              </p>'
												feed += '          </div>'

											} else {

												feed += '          <div class="txt" style="display:none">'
												feed += '              <a href="#" class="proName"> '
														+ v.nickname + ' </a>'
												feed += '              <p class="txtCont">'
												feed += v.cont
												feed += '              </p>'
												feed += '          </div>'

											}

											feed += '                                                                                                 '

											feed += '          <div class="countComm">'
											feed += '              댓글 <span class="count"> '
													+ v.comcount + '</span>개'
											feed += '          </div>'
											feed += '                                                                                                 '

											feed += '          <div class="commentBox">'
											feed += '<ul>';

											$.each(v.replyList,function(i, v) {

																feed += '<li class="comm"><a href="#" class="commUser">'
																		+ v.nickname
																		+ '</a> <span>'
																		+ v.comcont
																feed += '</span></li>'

															})

											feed += '       </ul></div>'
											feed += '      </div>'

											/* 		feed += '<p>' + "피드번호 : " + v.feedno + '</p>';
													feed += '<p>' + "아이디 : " + v.id + '</p>';
													feed += '<p>' + "프로필사진 : " + v.profile + '</p>';
													feed += '<p>' + "피드사진 : " + v.feedpic + '</p>';
													feed += '<p>' + "학급번호 : " + v.classname + '</p>';
													feed += '<p>' + "좋아요 수 : " + v.countlike + '</p>';
													feed += '<p>' + "좋아요 유무 : " + v.islike + '</p>';
													feed += '<p>' + "신고유무 : " + v.isreport + '</p>';
													feed += '<p>' + "닉네임 : " + v.nickname + '</p>';
													feed += '<p>' + "피드 신고 수 : " + v.reportcount + '</p>';
													feed += '<br><br>';	 */

											feeds += feed;

										})
						$('#showfeed').append(feeds);

						$("#showfeed").find('.txt').each(function() {
											var content = $(this).children(
													'.txtCont');
											var index = content.width();
											var content_txt = content.text();
											var content_txt_short = content_txt
													.substring(0, 200)
													+ "...";
											var btn_more = $('<a href="javascript:void(0)" class="more">더보기</a>');
											$(this).append(btn_more);
											if (content_txt.length >= 200) {
												content.html(content_txt_short);
											} else {
												btn_more.hide();
											}
											btn_more.click(toggle_content);
											function toggle_content() {
												if ($(this).hasClass('short')) {
													// 접기 상태
													$(this).html('더보기');
													content
															.html(content_txt_short)
													$(this)
															.removeClass(
																	'short');
												} else {
													// 더보기 상태
													$(this).html('접기');
													content.html(content_txt);
													$(this).addClass('short');
												}
											}
										});

					},
					error : function(xhr) {
						alert("status : " + xhr.status);

					}
				})

	}

	var getreply = function(feedno) {
		reply = "";
		reply += '<ul><li class="comm"><a href="#" class="commUser">abce4</a> <span>프로그래머스'
		reply += '!!!!!!!!!!!!!!!!!!!!!!!!!!!!!</span></li></ul>'
		//alert(feedno);
		//alert(reply);

		$('.commentBox').after(reply);
	}
</script>



</head>



<body>
	<h2>FEED</h2>
	<a href="../index.html">세션필요할때(500에러) 로그인 하고오기</a>
	<hr>

	<button type="button" name="getfeed" ID="getfeed">피드불러오기</button>
	<button type="button" onclick="location.href='feedInsertTest.html'" id="newfeed">새로운피드작성</button>

	<br>
	<br>

	<div id="showfeed"></div>




	<!--본인 글 삭제 확인 모달-->
	<div id="feedDel">
		<div id="feedDelModal">
			<p>피드를 삭제 하시겠습니까?</p> 
			<div id="feedDelBtn">
				<button type="submit" id="goModi">수정</button>
				<button type="button" id="goDel">삭제</button>
				<button type="button" id="goCancel">취소</button>
			</div>
		</div>
	</div>


	<script type="text/javascript">
		
	</script>


</body>




</html>