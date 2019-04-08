<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <link rel="stylesheet" href="../../resources/include/style/main.css">
    <script src="../../resources/include/jscripts/socket.js"></script>
</head>
<body>

<h1 >hello my host ${answer}</h1>
<form action="" name="form" method="post">
    <div class="parent">
        <div class="block">
            <div id="tn1"></div>
            <input type="hidden" id="in1" name="name" value="${answer}">
            <p2>message:</p2><textarea id="tn2" name="message"></textarea>
            <input id="ib1" type="submit" value="SEND" name="submit">
            <a href="login">Logout</a>
        </div>
    </div>
</form>
</body>
</html>
