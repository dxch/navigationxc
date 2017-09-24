<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    	<div id="tou"> webSocket及时聊天Demo程序</div>
		<div id="msg"></div>
		<input type="text" id="message">
		<button type="button" id="send"> 发送</button>
    	<script type="text/javascript" src="${ctxStatic}/js/jquery-3.1.1.js"></script>
        <script type="text/javascript" src="${ctxStatic}/js/bootstrap.js"></script>
        <script type="text/javascript" src="${ctxStatic}/js/layer-v3.0.1/layer/layer.js"></script>
        <script type="text/javascript" src="${ctxStatic}/js/vue.js"></script>
 		<script>
 			$(function () {
	            var websocket;
	            var target = "ws://localhost:8080/navigationxc/nav/testweb";
	            if ('WebSocket' in window) {
	                websocket = new WebSocket(target);
	            } else if ('MozWebSocket' in window) {
	                websocket = new MozWebSocket(target);
	            } else {
	                alert('WebSocket is not supported by this browser.');
	                return;
	            }
	            websocket.onopen = function (evnt) {
	                $("#tou").html("链接服务器成功!")
	            };
	            websocket.onmessage = function (evnt) {
	                $("#msg").html($("#msg").html() + "<br/>" + evnt.data);
	            };
	            websocket.onerror = function (evnt) {
	            };
	            websocket.onclose = function (evnt) {
	                $("#tou").html("与服务器断开了链接!")
	            }
	            $('#send').bind('click', function () {
	                send();
	            });
	            function send() {
	                if (websocket != null) {
	                    var message = document.getElementById('message').value;
	                    websocket.send(message);
	                } else {
	                    alert('未与服务器链接.');
	                }
	            }
	        });
 		</script>
    </body>
</html>