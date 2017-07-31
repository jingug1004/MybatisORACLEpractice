<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html>
<head>
    <title>더블 커넥션 테스트</title>

    <meta http-equiv="Cache-Control" content="no-cache"/>
    <meta http-equiv="Expires" content="0"/>
    <meta http-equiv="Pragma" content="no-cache"/>

    <link rel="stylesheet" href="/resources/bootstrap-3.3.7-dist/css/bootstrap.css">

    <%--<script type='text/javascript' src='script.js'></script>--%>

    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="/resources/js/upload.js"></script>
    <script src="/resources/js/FindCondition.js"></script>
</head>
<body class="container">
<div class="box">
    <div class="box-body">
        <%--<table class="table table-bordered">--%>
        <table class="table table-bordered">
            <tr>
                <th scope="col"><input id="allCheck02" type="checkbox" onclick="allChk(this);"/></th>
                <th scope="col" style="width: 10px">BNO</th>
                <th scope="col" class="text-center" style="width: 600px">TITLE</th>
                <th scope="col" class="text-center">WRITER</th>
                <th scope="col" class="text-center">REGDATE</th>
                <%--<th scope="col" class="text-center">VIEWCNT</th>--%>
            </tr>

            <c:forEach items="${list03}" var="boardVO">
                <tr>
                    <td class="<%--text_ct--%> text-center">
                            <%--<input id="sdfs" name="RowCheck" />--%>
                        <input id="noname" ﻿ name="RowCheck" type="checkbox" value="${result.user_id}"/>
                    </td>
                    <td class="text-danger text-center">${boardVO.dummynum}</td>
                        <%--<td>--%>
                        <%--<a href='/sboard/readPage${pageMaker.makeSearch(pageMaker.cri.page)}&bno=${boardVO.bno}'>--%>
                        <%--${boardVO.title} <strong>[ ${boardVO.replycnt} ]</strong>--%>
                        <%--</a></td>--%>
                    <td class="text-center">
                            ${boardVO.dummytitle}
                    </td>
                    <td class="text-center">${boardVO.dummywriter}</td>
                    <td class="text-warning text-center">
                        <fmt:formatDate pattern="HH:mm" value="${boardVO.dummydate}"/></td>
                        <%--<td>${boardVO.CREA_DTM}</td>--%>
                    <%--<td class="text-center"><span class="badge">${boardVO.HIT_CNT}</span></td>--%>
                </tr>
            </c:forEach>
        </table>
        <hr>
        <%--<div class="text-center">--%>
            <%--<ul class="pagination">--%>
                <%--<c:if test="${pageMake.prev}">--%>
                    <%--<li><a href="callAll${pageMake.makeSearch(pageMake.startPage - 1) }">&laquo;</a></li>--%>
                <%--</c:if>--%>

                <%--<c:forEach begin="${pageMake.startPage }"--%>
                           <%--end="${pageMake.endPage }" var="idx">--%>
                    <%--<li<c:out value="${pageMake.page == idx?' class=active':''}"/>>--%>
                        <%--<a href="callAll${pageMake.makeSearch(idx)}">${idx}</a>--%>
                    <%--</li>--%>
                <%--</c:forEach>--%>

                <%--<c:if test="${pageMake.next && pageMake.endPage > 0}">--%>
                    <%--<li><a href="callAll${pageMake.makeSearch(pageMake.endPage + 1) }">&raquo;</a></li>--%>
                <%--</c:if>--%>
            <%--</ul>--%>
        <%--</div>--%>
    </div>


</div>

</body>
</html>
