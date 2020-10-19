<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>꿀카페 : 회원가입</title>
</head>
<body>
	<!-- header -->
	<div id="header" align="center" style="padding-top:30px">
		<a href="http://www.naver.com" target="_blank"> 
		<img src="${path}/resources/images/m_logo_naver.png">
		</a>
	</div>
	<!-- // header -->
	<div class="container" align="center">
		<h2 class="text-primary">회원가입</h2>


		<script type="text/javascript">
			function idChk() {
				var user_id = frm.user_id.value;
				if (!frm.user_id.value) {
					alert("아이디 입력 후 중복체크 버튼을 눌러주세요!");
					frm.user_id.focus();
					return false;
				}
				$.post('idChk.html', 'user_id=' + frm.user_id.value, function(
						data) {
					//$('#disp').html(data);
					alert(data);
				});
			}
			function nickChk() {
				var user_nickname = frm.user_nickname.value;
				if (!frm.user_nickname.value) {
					alert("닉네임 입력 후 중복체크 버튼을 눌러주세요!");
					frm.user_nickname.focus();
					return false;
				}
				$.post('nickChk.html', 'user_nickname='
						+ frm.user_nickname.value, function(data) {
					//$('#disp').html(data);
					alert(data);
				});
			}
			/* 	function chk() {
			 if (frm.user_pwd.value != frm.user_pwd2.value) {
			 alert("암호와 암호확인이 서로 일치하지 않습니다.");
			 frm.user_pwd.value = "";
			 frm.user_pwd.focus();
			 return false;
			 }
			 } */
			function idChk2() {
				// /^: 시작,  $/: 끝, []: 속에 글자 중에 하나
				// .*(?=.{4,8}) 점을 포함한 한글자 이상을 사용하는 4~8이내
				// (?=.*[0-9]) 숫자 하나는 포함
				// (?=.*[a-zA-Z]) 소문자/대문자 구별없이 한글자 이상
				// (?=.*[@!#$*()_&]) []속의 글자(특수문자) 하나는 있어야한다
				var user_pwd = /^.*(?=.{10,16})(?=.*[0-9])(?=.*[a-zA-Z])(?=.*[@!#$*()_&]).*$/;
				if (!user_pwd.test(frm.user_pwd.value)) {
					alert("비밀번호 조건에 맞지 않습니다.");
					frm.user_pwd.focus();
					return false;
				} else if (frm.user_pwd.value != frm.user_pwd2.value) {
					alert("암호와 암호확인이 서로 일치하지 않습니다.");
					frm.user_pwd.value = "";
					frm.user_pwd.focus();
					return false;
				}
				return true;
			}
		</script>
</body>
</html>