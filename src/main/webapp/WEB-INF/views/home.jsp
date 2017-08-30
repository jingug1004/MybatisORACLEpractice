<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--<%@ page session="false" %>--%>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>

<head>
	<meta charset="UTF-8">
	<title>Home</title>

	<meta http-equiv="Cache-Control" content="no-cache"/>
	<meta http-equiv="Expires" content="0"/>
	<meta http-equiv="Pragma" content="no-cache"/>

	<link rel="stylesheet" href="/resources/bootstrap-3.3.7-dist/css/bootstrap.css">

	<%--<script type='text/javascript' src='script.js'></script>--%>

    <script src="http://code.jquery.com/jquery-latest.js"></script>

    <%--<script type="text/javascript" src="js/bootstrap.js"></script>--%>
</head>
<br>

<h1 class="">
	Hello world!
</h1>

<P class="badge">  The time on the server is ${serverTime}. 년 월 일 test </P></br>
</body>

<%--<input type="button">데이터 목록 가져오기</input><br/><br/>--%>
<a href="<c:url value="/callAll"/>"><button type="button" class="btn">데이터 목록 가져오기</button></a>

<%--<input type="text">데이터 어디에 보내기</input><br/><br/>--%>

<%--<input type="button">데이터 수정하기</input><br/><br/>--%>

<%--<input type="button">데이터 삭제하기</input><br/><br/>--%>

<a href="<c:url value="/doubleConnection"/>"><button type="button" class="btn">더블 커넥션</button></a>
<a href="<c:url value="/doubleTest"/>"><button type="button" class="btn">더블 커넥션 테스트</button></a>
<a href="<c:url value="/csoGET"/>"><button type="button" class="btn">시소</button></a>
<a href="<c:url value="/xplatformGET"/>"><button type="button" class="btn">시소</button></a>


<%--<script>--%>
	<%--$(document).ready(function () {--%>
		<%--$('#callAll').onclick(--%>
		    <%--function (e) {--%>
				<%--self.location = "cc";--%>
            <%--}--%>
		<%--);--%>
    <%--});--%>

    <%--$(document).ready(function(){--%>
        <%--$("#menu").accordion({collapsible: true, active: false});--%>
        <%--// 아코디언 이펙트 ( )안에 있는 collapsible: true, active: false를 넣어야 접었다폈다함--%>
    <%--});--%>

<%--</script>--%>

</html>
