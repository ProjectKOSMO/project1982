<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <title>Document</title>
    <link rel="stylesheet" href="<c:url value='/resources/css/2_login.css' />" >
</head>
<body>
    <form action="#" method="get" id="login-form">
        <h1>1982 관리자</h1>
        <input name="username" type="text" placeholder="Username" />
        <input name="password" type="password" placeholder="Password" />
        <input type="submit" value="로그인" />
    </form>
    <script
   src="https://kit.fontawesome.com/6478f529f2.js"
   crossorigin="anonymous"
   ></script>
</body>
</html>


