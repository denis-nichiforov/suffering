<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Simple chat</title>
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link href="../../resources/include/style/main.css" rel="stylesheet">
</head>
<h1>Simple chat</h1>
<body>

<h1 id="tm1"></h1>

<form action="" name="form" method="post">
    <div class="chat_window">
        <div class="top_menu">
            <div class="title">Chat</div>
        </div>
        <ul class="messages">

        </ul>
        <div class="bottom_wrapper clearfix">
            <div class="message_input_wrapper">
                <input type="hidden" id="in1" name="name" value="${answer}">
                <input id="message_input_value" name="message" class="message_input"
                       placeholder="Type your message here..."/>
            </div>
            <div class="send_message">
                <input type="submit" class="send_message" value="Send message" name="submit"/>
            </div>
        </div>
    </div>
    <div id="message_template" class="message_template">
        <li class="message">
            <div class="text_wrapper">
                <div class="text"></div>
            </div>
        </li>
    </div>
</form>
<script src="../../resources/include/jscripts/jquery/jquery-3.4.0.slim.min.js"></script>
<script src="../../resources/include/jscripts/socket.js"></script>

</body>
</html>
