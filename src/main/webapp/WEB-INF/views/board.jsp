<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
    <title>Board</title>

    <link rel="stylesheet" href="/resources/bootstrap-3.3.7-dist/css/bootstrap.css">

    <%--<script type='text/javascript' src='script.js'></script>--%>

    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="/resources/js/upload.js"></script>

    <%--<script type="text/javascript" src="js/bootstrap.js"></script>--%>

    <style>
        iframe {
            width: 30px;
            height: 30px;
            border: 30px;
        }

        .fileDrop {
            width: 100%;
            height: 200px;
            border: 2px dotted #1b6d85;
            background-color: #e5e5e5;
            margin: auto;
        }

        small {
            margin-left: 3px;
            font-weight: bold;
            color: darkgray;
        }
    </style>
</head>
<body class="container">
<div class="box">
    <div class="box-header with-border" style="padding-right: auto">
        <h3 class="box-title">LIST PAGING</h3>
    </div>
    <div align="right">
        <input type="text" placeholder="Search"/>
        <button class="btn-primary">검색</button>
    </div>
    <div class="box-body">
        <%--<table class="table table-bordered">--%>
        <table class="table table-bordered">
            <tr>
                <th style="width: 10px">BNO</th>
                <th class="text-center" style="width: 600px">TITLE</th>
                <th class="text-center">WRITER</th>
                <th class="text-center">REGDATE</th>
                <th class="text-center">VIEWCNT</th>
            </tr>

            <c:forEach items="${list}" var="boardVO">
                <tr>
                    <td class="text-danger text-center">${boardVO.IDX}</td>
                        <%--<td>--%>
                        <%--<a href='/sboard/readPage${pageMaker.makeSearch(pageMaker.cri.page)}&bno=${boardVO.bno}'>--%>
                        <%--${boardVO.title} <strong>[ ${boardVO.replycnt} ]</strong>--%>
                        <%--</a></td>--%>
                    <td class="text-center">
                            ${boardVO.TITLE}
                    </td>
                    <td class="text-center">${boardVO.CREA_ID}</td>
                    <td class="text-warning text-center"><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
                                                                         value="${boardVO.CREA_DTM}"/></td>
                        <%--<td>${boardVO.CREA_DTM}</td>--%>
                    <td class="text-center"><span class="badge">${boardVO.HIT_CNT}</span></td>
                </tr>
            </c:forEach>
        </table>
        <hr>
        <div class="text-center">
            <ul class="pagination">
                <c:if test="${pageMake.prev}">
                    <li><a href="callAll${pageMake.makeSearch(pageMake.startPage - 1) }">&laquo;</a></li>
                </c:if>

                <c:forEach begin="${pageMake.startPage }"
                           end="${pageMake.endPage }" var="idx">
                    <li<c:out value="${pageMake.page == idx?' class=active':''}"/>>
                        <a href="callAll${pageMake.makeSearch(idx)}">${idx}</a>
                    </li>
                </c:forEach>

                <c:if test="${pageMake.next && pageMake.endPage > 0}">
                    <li><a href="callAll${pageMake.makeSearch(pageMake.endPage +1) }">&raquo;</a></li>
                </c:if>
            </ul>
        </div>
    </div>
    <!-- /.box-body -->
    <%--<div>--%>
        <%--<form id='form1' action="uploadForm" method="post"--%>
              <%--enctype="multipart/form-data" target="zeroFrame">--%>
            <%--<input type='file' name='file'> <input type='submit'>--%>
        <%--</form>--%>

        <%--<iframe name="zeroFrame"></iframe>--%>
    <%--</div>--%>
    <script>
        //        $(window).on('load', function addFilePath(msg) {
        //            alert(msg);
        //            document.getElementById("form1").reset();
        //        });
        function addFilePath(msg) {
            alert(msg);
            document.getElementById("form1").reset();
        }
    </script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>

    <script id="template" type="text/x-handlebars-template">
        <li>
            <span class=""><img src="{{imgsrc}}" alt="Attachment"></span>
            <div class="">
                <a href="{{getLink}}" class="">{{fileName}}</a>
                <a href="{{fullName}}" class="delbtn">
                    <i class=""></i></a>
            </div>
        </li>
    </script>


    <%--<h2>Ajax FileUpload</h2>--%>

    <form id="registerForm" action="/register" role="form" method="post">
    <div class="form-group">
        <label for="exampleInputEmail1">Ajax FileUpload</label>
        <div class="fileDrop"></div>
    </div>
        <button type="submit" class="btn btn-primary">파일 업로드</button>
    </form>

    <div class="uploadedList"></div>
</div>

<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>

    var template = Handlebars.compile($("#template").html());

    $(".fileDrop").on("dragenter dragover", function (evt) {
        evt.preventDefault();
        // preventDefault() -> 기본 동작을 막도록!
    });

    $(".fileDrop").on("drop", function (evt) {
        evt.preventDefault();

        var files = evt.originalEvent.dataTransfer.files;

        var file = files[0];

//            console.log(file);

        var formData = new FormData();
        formData.append("file", file);

        $.ajax({
            url: '/uploadAjax',
            data: formData,
            dataType: 'text',
            processData: false,
            contentType: false,
            type: 'POST',
            success: function (data) {

//                    alert(data);

                /* uploadAjax.jsp의 내용!
                 var str = "";

                 console.log(data);
                 console.log(checkImageType(data));

                 if (checkImageType(data)) {
                 str = "<div><a href=displayFile?fileName=" + getImageLink(data) + ">"
                 + "<img src='displayFile?fileName=" + data + "'/>"
                 + "</a><small data-src=" + data + ">X</small></div>";
                 } else {
                 str = "<div><a href='displayFile?fileName=" + data + "'>"
                 + getOriginalName(data) + "</a>"
                 + "<small data-src= " + data + ">X</small></div>"
                 }
                 $(".uploadedList").append(str);
                 */

                var fileInfo = getFileInfo(data);

                var html = template(fileInfo);

                $(".uploadedList").append(html);

            }
        });
    });

    $(".uploadedList").on("click", "small", function (evt) {

        var that = $(this);

        $.ajax({
            url: "deleteFile",
            type: "POST",
            data: {fileName: $(this).attr("data-src")},
            dataType: "text",
            success: function (result) {
                if (result == 'deleted') {
                    that.parent("div").remove();
                }
            }
        });
    });

    $("#registerForm").submit(function (evt) {

        evt.preventDefault();

        var that = $(this);

        var str = "";

        $(".uploadedList .delbtn").each(function (index) {
            str += "<input type='hidden' name='files[" + index + "]' value='" + $(this).attr("href") + "'>";
        });

        that.append(str);

        console.log(str);

        that.get(0).submit();

        location.href = '';

    });


</script>

<script>
    var result = '${msg}';

    if (result == 'SUCCESS') {
        alert("처리가 완료되었습니다.");
    }
</script>

</body>
</html>
