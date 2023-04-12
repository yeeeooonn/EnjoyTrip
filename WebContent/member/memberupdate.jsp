<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update</title>
<style type="text/css">
#section {margin: auto;}
#tboard {margin: auto;}
#tboard > table {margin: auto; width:  80%; border: 1px solid #aabbcc; }
</style>
</head>
<body>
<%@include file="../common/header.jsp" %>
<div id="section">
 <div id="tboard">
 <h1>수정하기</h1>
 <form action="${root}/member" method="post">
	<input type="hidden" name="action" value="updateMemberaf"/>
 		<table>
 		<col width="40%"><col width="60%">
 		<tr>
 			<th>유저아이디</th><td><input type="text" name="user_id" readonly="readonly"
 			width="50" value="${member.user_id}"/></td>
 		</tr>
 		<tr>
 			<th>이름</th><td><input type="text" name="user_name"
 			width="50" value="${member.user_name}"/></td>
 		</tr>
 		<tr>
 			<th>비밀번호</th><td><input type="text" name="user_password" 
 			width="50" value="${member.user_password}"/></td>
 		</tr>
 		<tr>
 			<th>이메일아이디</th><td><input type="text" name="email_id"
 			width="50" value="${member.email_id}"/></td>
 		</tr>
 		<tr>
 			<th>이메일도메인</th><td><input type="text" name="email_domain"
 			width="50" value="${member.email_domain}"/></td>
 		</tr>
 		<tr>
 			<th>가입날짜</th><td><input type="text" name="join_date" readonly="readonly"
 			width="50" value="${member.join_date}"/></td>
 		</tr>
		<tr>
 			<td colspan="2"><input type="submit" value="회원 수정" /></td>
 		</tr>
 	</table>
 </form>
 </div>
</div>
</body>
</html>