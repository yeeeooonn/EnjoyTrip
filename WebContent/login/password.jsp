<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set value="${pageContext.request.contextPath}" var="root"></c:set>
<!DOCTYPE html>
<html>
<head>
<title>forgot password</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="container mt-3">
  <h2>password</h2>
  <form action="${root}/member" method="post">
    <input type="hidden"  id="action" name="action" value="findpassword">
    <div class="mb-3 mt-3">
      <label for="user_id">사용자 아이디:</label>
      <input type="text" class="form-control" id="user_id" placeholder="아이디 입력" name="user_id">
    </div>
    <div class="mb-3">
      <label for="user_password">사용자 이메일 아이디:</label>
      <input type="text" class="form-control" id="email_id" placeholder="사용자 이메일 아이디 입력" name="email_id">
    </div>
    <button type="submit" class="btn btn-primary">비밀번호 찾기</button>&nbsp;&nbsp;
    <a href='${root}/index.jsp'>돌아가기 </a>
  </form>
</div>
</body>
</html>