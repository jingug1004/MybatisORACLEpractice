<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
    <title>C-So</title>

    <meta charset="UTF-8">

    <meta http-equiv="Cache-Control" content="no-cache"/>
    <meta http-equiv="Expires" content="0"/>
    <meta http-equiv="Pragma" content="no-cache"/>

    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>

    <%--<link rel="stylesheet" href="/resources/bootstrap-3.3.7-dist/css/bootstrap.css">--%>

    <%-- 첫번째 --%>
    <link rel="stylesheet" href="/resources/cso/css/responsive.css">
    <link rel="stylesheet" href="/resources/cso/css/style.css">

    <%--  두번째 --%>
    <link rel="stylesheet" href="/resources/cso/css/font-awesome.css">
    <link rel="stylesheet" href="/resources/cso/css/font-mdfi.css">
    <link rel="stylesheet" href="/resources/cso/css/magnific-popup.css">
    <link rel="stylesheet" href="/resources/cso/css/us-base.css">

    <%-- 세번째 --%>
    <link rel="stylesheet" href="/resources/cso/css/jquery.bxslider.css">

    <%--<script type='text/javascript' src='script.js'></script>--%>

    <script type="text/javascript" src="/resources/cso/js/imagesloaded.js"></script>
    <script type="text/javascript" src="/resources/cso/js/jquery.easing.min.js.js"></script>
    <script type="text/javascript" src="/resources/cso/js/jquery.magnific-popup.js"></script>
    <script type="text/javascript" src="/resources/cso/js/jquery.simpleplaceholder.js"></script>
    <script type="text/javascript" src="/resources/cso/js/us.core.js"></script>
    <script type="text/javascript" src="/resources/cso/js/us.theme.js"></script>
    <script type="text/javascript" src="/resources/cso/js/us.widgets.js"></script>
    <script type="text/javascript" src="/resources/cso/js/jquery.bxslider.min.js"></script>
    <script type="text/javascript" src="/resources/cso/js/jquery.fitvids.js"></script>

    <script src="http://code.jquery.com/jquery-latest.js"></script>

    <%--<script type="text/javascript" src="js/bootstrap.js"></script>--%>

    <script type="text/javascript">
        window._wpemojiSettings = {
            "baseUrl": "https:\/\/s.w.org\/images\/core\/emoji\/72x72\/",
            "ext": ".png",
            "source": {"concatemoji": "https:\/\/c-so.co.kr\/wp-includes\/js\/wp-emoji-release.min.js?ver=4.5.9"}
        };
        !function (a, b, c) {
            function d(a) {
                var c, d, e, f = b.createElement("canvas"), g = f.getContext && f.getContext("2d"),
                    h = String.fromCharCode;
                if (!g || !g.fillText) return !1;
                switch (g.textBaseline = "top", g.font = "600 32px Arial", a) {
                    case"flag":
                        return g.fillText(h(55356, 56806, 55356, 56826), 0, 0), f.toDataURL().length > 3e3;
                    case"diversity":
                        return g.fillText(h(55356, 57221), 0, 0), c = g.getImageData(16, 16, 1, 1).data, d = c[0] + "," + c[1] + "," + c[2] + "," + c[3], g.fillText(h(55356, 57221, 55356, 57343), 0, 0), c = g.getImageData(16, 16, 1, 1).data, e = c[0] + "," + c[1] + "," + c[2] + "," + c[3], d !== e;
                    case"simple":
                        return g.fillText(h(55357, 56835), 0, 0), 0 !== g.getImageData(16, 16, 1, 1).data[0];
                    case"unicode8":
                        return g.fillText(h(55356, 57135), 0, 0), 0 !== g.getImageData(16, 16, 1, 1).data[0]
                }
                return !1
            }

            function e(a) {
                var c = b.createElement("script");
                c.src = a, c.type = "text/javascript", b.getElementsByTagName("head")[0].appendChild(c)
            }

            var f, g, h, i;
            for (i = Array("simple", "flag", "unicode8", "diversity"), c.supports = {
                everything: !0,
                everythingExceptFlag: !0
            }, h = 0; h < i.length; h++) c.supports[i[h]] = d(i[h]), c.supports.everything = c.supports.everything && c.supports[i[h]], "flag" !== i[h] && (c.supports.everythingExceptFlag = c.supports.everythingExceptFlag && c.supports[i[h]]);
            c.supports.everythingExceptFlag = c.supports.everythingExceptFlag && !c.supports.flag, c.DOMReady = !1, c.readyCallback = function () {
                c.DOMReady = !0
            }, c.supports.everything || (g = function () {
                c.readyCallback()
            }, b.addEventListener ? (b.addEventListener("DOMContentLoaded", g, !1), a.addEventListener("load", g, !1)) : (a.attachEvent("onload", g), b.attachEvent("onreadystatechange", function () {
                "complete" === b.readyState && c.readyCallback()
            })), f = c.source || {}, f.concatemoji ? e(f.concatemoji) : f.wpemoji && f.twemoji && (e(f.twemoji), e(f.wpemoji)))
        }(window, document, window._wpemojiSettings);
    </script>

    <style>
        ul, menu, dir {
            display: block;
            /*list-style-type: disc;*/
            -webkit-margin-before: 1em;
            -webkit-margin-after: 1em;
            -webkit-margin-start: 0px;
            -webkit-margin-end: 0px;
            -webkit-padding-start: 40px;
        }

    </style>

</head>
<body>

<div id="myCarousel" class="carousel slide" data-ride="carousel"
     style="width: 50%; margin-left: auto; margin-right: auto;">

    <!--페이지-->
    <ol class="carousel-indicators" style="">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <!--페이지-->

    <div class="carousel-inner">
        <!--슬라이드1-->
        <div class="item active">
            <img src="https://i.ytimg.com/vi/0-gdXa5spAU/maxresdefault.jpg" style="width:100%" alt="First slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>금융사기</h1>
                    <p>당신을 노리고 있음요!</p>
                </div>
            </div>
        </div>
        <!--슬라이드1-->

        <!--슬라이드2-->
        <div class="item">
            <img src="http://imgnews.naver.com/image/5311/2015/10/05/17714_21339_3549_99_20151005112902.jpg" style="width:100%" data-src="" alt="Second slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>나는 해커</h1>
                    <p>당신을 노리고 있음요!</p>
                </div>
            </div>
        </div>
        <!--슬라이드2-->

        <!--슬라이드3-->
        <div class="item">
            <img src="http://cafefiles.naver.net/20110715_244/hypnomaster_1310692447143bDNoi_jpg/wallpaper-513208_hypnomaster.jpg" style="width:100%" data-src=""
                 alt="Third slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>나는 웹 프로그래머</h1>
                    <p>당신을 노리고 있음요!</p>
                </div>
            </div>
        </div>
        <!--슬라이드3-->
    </div>

    <!--이전, 다음 버튼-->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev"><span
            class="glyphicon glyphicon-chevron-left"></span></a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next"><span
            class="glyphicon glyphicon-chevron-right"></span></a>
</div>

<div class="l-canvas sidebar_none type_wide titlebar_default">
    <section id="invest_section02" class="l-section wpb_row height_small main_invest">
        <div class="l-section-h i-cf">
            <div class="g-cols offset_small">
                <div class="full-width">

                    <div class="new_invest_item main">
                        <div class="bx-wrapper" style="max-width: 1136px;">
                            <div class="bx-viewport"
                                 style="width: 100%; overflow: hidden; position: relative; height: 444px;">

                                <ul id="dealsList" class="dealsList_bxslider"
                                    style="width: 1115%; position: relative; transition-duration: 0.5s; transform: translate3d(-3528px, 0px, 0px);">
                                    <li style="float: left; list-style: none; position: relative; width: 352px; margin-right: 40px;"
                                        class="bx-clone">
                                        <div class="box deal_REPAYING">
                                            <a href="/deal/detail?did=125">
                                                <div class="section01 thumb"
                                                     style="background-image: url('http://static.plaync.co.kr/powerbook/bns/28/14/uploaded_k00.jpg');">
                                                    <div class="deal_done_cover">
                                                        <div class="repaying">펀딩성공</div>
                                                    </div>
                                                </div>
                                            </a>
                                            <div class="deal_title">
                                                제10차 슈퍼푸드 원물 구매자금 펀딩
                                            </div>
                                            <div class="section02">
                                                <div class="progress">
                                                    <div class="w-progbar style_4 color_secondary size_medium custom_progbar"
                                                         data-count="100">
                                                        <div class="w-progbar-bar">
                                                            <div class="w-progbar-bar-h" style="width: 100%;"></div>
                                                        </div>
                                                        <div class="percent"><span>100%</span>진행</div>
                                                    </div>
                                                </div>
                                                <div class="details">
                                                    <div class="funding_money">
                                                        <div class="title">펀딩목표액</div>
                                                        <div class="desc">
                                                            <span class="number">4</span> 억 <span
                                                                class="number">7,000</span> 만원
                                                        </div>
                                                    </div>
                                                    <div class="investment">
                                                        <div class="title">투자수익률</div>
                                                        <div class="desc">
                                                            연 <span class="number">15.5</span> %
                                                        </div>
                                                    </div>
                                                    <div class="invest_date">
                                                        <div class="title">투자기간</div>
                                                        <div class="desc">
                                                            <span class="number">4</span> 개월
                                                        </div>
                                                    </div>
                                                    <div class="clear"></div>
                                                </div>
                                                <div class="buttons">
                                                    <div class="left_btn">
                                                        <a class="w-btn style_solid size_medium color_navy custom_button01 invest_go_popup investNow125"
                                                           href="#invest_go_popup"
                                                           data-investname="제10차 슈퍼푸드 원물 구매자금 펀딩" data-dealsrl="125"
                                                           data-availableamount="0" data-limit="percent_30_0">

                                                            <span class="w-btn-label">투자하기</span>
                                                        </a>
                                                    </div>
                                                    <div class="right_btn">
                                                        <a class="w-btn style_solid size_medium color_navy custom_button02"
                                                           href="/deal/detail?did=125">
                                                            <span class="w-btn-label">상세보기</span>
                                                        </a>
                                                    </div>
                                                    <div class="clear"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li style="float: left; list-style: none; position: relative; width: 352px; margin-right: 40px;"
                                        class="bx-clone">
                                        <div class="box deal_REPAYING">
                                            <a href="/deal/detail?did=124">
                                                <div class="section01 thumb"
                                                     style="background-image: url('https://c-so.co.kr/wp-content/uploads/2017/06/썸네일이미지01-8.jpg');">
                                                    <div class="deal_done_cover">
                                                        <div class="repaying">펀딩성공</div>
                                                    </div>
                                                </div>
                                            </a>
                                            <div class="deal_title">
                                                명품 담보 사업자금 펀딩(부산)
                                            </div>
                                            <div class="section02">
                                                <div class="progress">
                                                    <div class="w-progbar style_4 color_secondary size_medium custom_progbar"
                                                         data-count="100">
                                                        <div class="w-progbar-bar">
                                                            <div class="w-progbar-bar-h" style="width: 100%;"></div>
                                                        </div>
                                                        <div class="percent"><span>100%</span>진행</div>
                                                    </div>
                                                </div>
                                                <div class="details">
                                                    <div class="funding_money">
                                                        <div class="title">펀딩목표액</div>
                                                        <div class="desc">
                                                            <span class="number">2</span> 억 <span
                                                                class="number">7,000</span> 만원
                                                        </div>
                                                    </div>
                                                    <div class="investment">
                                                        <div class="title">투자수익률</div>
                                                        <div class="desc">
                                                            연 <span class="number">15.5</span> %
                                                        </div>
                                                    </div>
                                                    <div class="invest_date">
                                                        <div class="title">투자기간</div>
                                                        <div class="desc">
                                                            <span class="number">4</span> 개월
                                                        </div>
                                                    </div>
                                                    <div class="clear"></div>
                                                </div>
                                                <div class="buttons">
                                                    <div class="left_btn">
                                                        <a class="w-btn style_solid size_medium color_navy custom_button01 invest_go_popup investNow124"
                                                           href="#invest_go_popup" data-investname="명품 담보 사업자금 펀딩(부산)"
                                                           data-dealsrl="124" data-availableamount="0"
                                                           data-limit="percent_30_0">

                                                            <span class="w-btn-label">투자하기</span>
                                                        </a>
                                                    </div>
                                                    <div class="right_btn">
                                                        <a class="w-btn style_solid size_medium color_navy custom_button02"
                                                           href="/deal/detail?did=124">
                                                            <span class="w-btn-label">상세보기</span>
                                                        </a>
                                                    </div>
                                                    <div class="clear"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li style="float: left; list-style: none; position: relative; width: 352px; margin-right: 40px;"
                                        class="bx-clone">
                                        <div class="box deal_REPAYING">
                                            <a href="/deal/detail?did=123">
                                                <div class="section01 thumb"
                                                     style="background-image: url('https://c-so.co.kr/wp-content/uploads/2017/06/썸네일이미지02-7.jpg');">
                                                    <div class="deal_done_cover">
                                                        <div class="repaying">펀딩성공</div>
                                                    </div>
                                                </div>
                                            </a>
                                            <div class="deal_title">
                                                제 23차 견과류 구매자금 펀딩
                                            </div>
                                            <div class="section02">
                                                <div class="progress">
                                                    <div class="w-progbar style_4 color_secondary size_medium custom_progbar"
                                                         data-count="100">
                                                        <div class="w-progbar-bar">
                                                            <div class="w-progbar-bar-h" style="width: 100%;"></div>
                                                        </div>
                                                        <div class="percent"><span>100%</span>진행</div>
                                                    </div>
                                                </div>
                                                <div class="details">
                                                    <div class="funding_money">
                                                        <div class="title">펀딩목표액</div>
                                                        <div class="desc">
                                                            <span class="number">6</span> 억 <span
                                                                class="number">5,000</span> 만원
                                                        </div>
                                                    </div>
                                                    <div class="investment">
                                                        <div class="title">투자수익률</div>
                                                        <div class="desc">
                                                            연 <span class="number">10</span> %
                                                        </div>
                                                    </div>
                                                    <div class="invest_date">
                                                        <div class="title">투자기간</div>
                                                        <div class="desc">
                                                            <span class="number">6</span> 개월
                                                        </div>
                                                    </div>
                                                    <div class="clear"></div>
                                                </div>
                                                <div class="buttons">
                                                    <div class="left_btn">
                                                        <a class="w-btn style_solid size_medium color_navy custom_button01 invest_go_popup investNow123"
                                                           href="#invest_go_popup" data-investname="제 23차 견과류 구매자금 펀딩"
                                                           data-dealsrl="123" data-availableamount="0"
                                                           data-limit="percent_30_0">

                                                            <span class="w-btn-label">투자하기</span>
                                                        </a>
                                                    </div>
                                                    <div class="right_btn">
                                                        <a class="w-btn style_solid size_medium color_navy custom_button02"
                                                           href="/deal/detail?did=123">
                                                            <span class="w-btn-label">상세보기</span>
                                                        </a>
                                                    </div>
                                                    <div class="clear"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li style="float: left; list-style: none; position: relative; width: 352px; margin-right: 40px;">
                                        <div class="box deal_REPAYING">
                                            <a href="/deal/detail?did=131">
                                                <div class="section01 thumb"
                                                     style="background-image: url('https://c-so.co.kr/wp-content/uploads/2017/07/썸네일이미지01-6.jpg');">
                                                    <div class="deal_done_cover">
                                                        <div class="repaying">펀딩성공</div>
                                                    </div>
                                                </div>
                                            </a>
                                            <div class="deal_title">
                                                명품 담보 사업자금 펀딩
                                            </div>
                                            <div class="section02">
                                                <div class="progress">
                                                    <div class="w-progbar style_4 color_secondary size_medium custom_progbar"
                                                         data-count="100">
                                                        <div class="w-progbar-bar">
                                                            <div class="w-progbar-bar-h" style="width: 100%;"></div>
                                                        </div>
                                                        <div class="percent"><span>100%</span>진행</div>
                                                    </div>
                                                </div>
                                                <div class="details">
                                                    <div class="funding_money">
                                                        <div class="title">펀딩목표액</div>
                                                        <div class="desc">
                                                            <span class="number">3</span> 억 <span
                                                                class="number">7,000</span> 만원
                                                        </div>
                                                    </div>
                                                    <div class="investment">
                                                        <div class="title">투자수익률</div>
                                                        <div class="desc">
                                                            연 <span class="number">16</span> %
                                                        </div>
                                                    </div>
                                                    <div class="invest_date">
                                                        <div class="title">투자기간</div>
                                                        <div class="desc">
                                                            <span class="number">3</span> 개월
                                                        </div>
                                                    </div>
                                                    <div class="clear"></div>
                                                </div>
                                                <div class="buttons">
                                                    <div class="left_btn">
                                                        <a class="w-btn style_solid size_medium color_navy custom_button01 invest_go_popup investNow131"
                                                           href="#invest_go_popup" data-investname="명품 담보 사업자금 펀딩"
                                                           data-dealsrl="131" data-availableamount="0"
                                                           data-limit="percent_30_0">

                                                            <span class="w-btn-label">투자하기</span>
                                                        </a>
                                                    </div>
                                                    <div class="right_btn">
                                                        <a class="w-btn style_solid size_medium color_navy custom_button02"
                                                           href="/deal/detail?did=131">
                                                            <span class="w-btn-label">상세보기</span>
                                                        </a>
                                                    </div>
                                                    <div class="clear"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li style="float: left; list-style: none; position: relative; width: 352px; margin-right: 40px;">
                                        <div class="box deal_REPAYING">
                                            <a href="/deal/detail?did=130">
                                                <div class="section01 thumb"
                                                     style="background-image: url('https://c-so.co.kr/wp-content/uploads/2017/06/썸네일이미지01-7.jpg');">
                                                    <div class="deal_done_cover">
                                                        <div class="repaying">펀딩성공</div>
                                                    </div>
                                                </div>
                                            </a>
                                            <div class="deal_title">
                                                제 24차 견과류 구매자금 펀딩
                                            </div>
                                            <div class="section02">
                                                <div class="progress">
                                                    <div class="w-progbar style_4 color_secondary size_medium custom_progbar"
                                                         data-count="100">
                                                        <div class="w-progbar-bar">
                                                            <div class="w-progbar-bar-h" style="width: 100%;"></div>
                                                        </div>
                                                        <div class="percent"><span>100%</span>진행</div>
                                                    </div>
                                                </div>
                                                <div class="details">
                                                    <div class="funding_money">
                                                        <div class="title">펀딩목표액</div>
                                                        <div class="desc">
                                                            <span class="number">6</span> 억 <span
                                                                class="number">4,500</span> 만원
                                                        </div>
                                                    </div>
                                                    <div class="investment">
                                                        <div class="title">투자수익률</div>
                                                        <div class="desc">
                                                            연 <span class="number">10</span> %
                                                        </div>
                                                    </div>
                                                    <div class="invest_date">
                                                        <div class="title">투자기간</div>
                                                        <div class="desc">
                                                            <span class="number">6</span> 개월
                                                        </div>
                                                    </div>
                                                    <div class="clear"></div>
                                                </div>
                                                <div class="buttons">
                                                    <div class="left_btn">
                                                        <a class="w-btn style_solid size_medium color_navy custom_button01 invest_go_popup investNow130"
                                                           href="#invest_go_popup" data-investname="제 24차 견과류 구매자금 펀딩"
                                                           data-dealsrl="130" data-availableamount="0"
                                                           data-limit="percent_30_0">

                                                            <span class="w-btn-label">투자하기</span>
                                                        </a>
                                                    </div>
                                                    <div class="right_btn">
                                                        <a class="w-btn style_solid size_medium color_navy custom_button02"
                                                           href="/deal/detail?did=130">
                                                            <span class="w-btn-label">상세보기</span>
                                                        </a>
                                                    </div>
                                                    <div class="clear"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li style="float: left; list-style: none; position: relative; width: 352px; margin-right: 40px;">
                                        <div class="box deal_REPAYING">
                                            <a href="/deal/detail?did=129">
                                                <div class="section01 thumb"
                                                     style="background-image: url('https://c-so.co.kr/wp-content/uploads/2017/07/썸네일이미지01-5.jpg');">
                                                    <div class="deal_done_cover">
                                                        <div class="repaying">펀딩성공</div>
                                                    </div>
                                                </div>
                                            </a>
                                            <div class="deal_title">
                                                루스티치 스니커즈 담보 펀딩
                                            </div>
                                            <div class="section02">
                                                <div class="progress">
                                                    <div class="w-progbar style_4 color_secondary size_medium custom_progbar"
                                                         data-count="100">
                                                        <div class="w-progbar-bar">
                                                            <div class="w-progbar-bar-h" style="width: 100%;"></div>
                                                        </div>
                                                        <div class="percent"><span>100%</span>진행</div>
                                                    </div>
                                                </div>
                                                <div class="details">
                                                    <div class="funding_money">
                                                        <div class="title">펀딩목표액</div>
                                                        <div class="desc">
                                                            <span class="number">6,000</span> 만원
                                                        </div>
                                                    </div>
                                                    <div class="investment">
                                                        <div class="title">투자수익률</div>
                                                        <div class="desc">
                                                            연 <span class="number">15</span> %
                                                        </div>
                                                    </div>
                                                    <div class="invest_date">
                                                        <div class="title">투자기간</div>
                                                        <div class="desc">
                                                            <span class="number">6</span> 개월
                                                        </div>
                                                    </div>
                                                    <div class="clear"></div>
                                                </div>
                                                <div class="buttons">
                                                    <div class="left_btn">
                                                        <a class="w-btn style_solid size_medium color_navy custom_button01 invest_go_popup investNow129"
                                                           href="#invest_go_popup" data-investname="루스티치 스니커즈 담보 펀딩"
                                                           data-dealsrl="129" data-availableamount="0"
                                                           data-limit="percent_30_0">

                                                            <span class="w-btn-label">투자하기</span>
                                                        </a>
                                                    </div>
                                                    <div class="right_btn">
                                                        <a class="w-btn style_solid size_medium color_navy custom_button02"
                                                           href="/deal/detail?did=129">
                                                            <span class="w-btn-label">상세보기</span>
                                                        </a>
                                                    </div>
                                                    <div class="clear"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li style="float: left; list-style: none; position: relative; width: 352px; margin-right: 40px;">
                                        <div class="box deal_REPAYING">
                                            <a href="/deal/detail?did=128">
                                                <div class="section01 thumb"
                                                     style="background-image: url('https://c-so.co.kr/wp-content/uploads/2017/07/썸네일이미지01-4.jpg');">
                                                    <div class="deal_done_cover">
                                                        <div class="repaying">펀딩성공</div>
                                                    </div>
                                                </div>
                                            </a>
                                            <div class="deal_title">
                                                제4차 식재료납품업체 사업자금 펀딩
                                            </div>
                                            <div class="section02">
                                                <div class="progress">
                                                    <div class="w-progbar style_4 color_secondary size_medium custom_progbar"
                                                         data-count="100">
                                                        <div class="w-progbar-bar">
                                                            <div class="w-progbar-bar-h" style="width: 100%;"></div>
                                                        </div>
                                                        <div class="percent"><span>100%</span>진행</div>
                                                    </div>
                                                </div>
                                                <div class="details">
                                                    <div class="funding_money">
                                                        <div class="title">펀딩목표액</div>
                                                        <div class="desc">
                                                            <span class="number">3</span> 억 <span
                                                                class="number">8,500</span> 만원
                                                        </div>
                                                    </div>
                                                    <div class="investment">
                                                        <div class="title">투자수익률</div>
                                                        <div class="desc">
                                                            연 <span class="number">15</span> %
                                                        </div>
                                                    </div>
                                                    <div class="invest_date">
                                                        <div class="title">투자기간</div>
                                                        <div class="desc">
                                                            <span class="number">4</span> 개월
                                                        </div>
                                                    </div>
                                                    <div class="clear"></div>
                                                </div>
                                                <div class="buttons">
                                                    <div class="left_btn">
                                                        <a class="w-btn style_solid size_medium color_navy custom_button01 invest_go_popup investNow128"
                                                           href="#invest_go_popup" data-investname="제4차 식재료납품업체 사업자금 펀딩"
                                                           data-dealsrl="128" data-availableamount="0"
                                                           data-limit="percent_30_0">

                                                            <span class="w-btn-label">투자하기</span>
                                                        </a>
                                                    </div>
                                                    <div class="right_btn">
                                                        <a class="w-btn style_solid size_medium color_navy custom_button02"
                                                           href="/deal/detail?did=128">
                                                            <span class="w-btn-label">상세보기</span>
                                                        </a>
                                                    </div>
                                                    <div class="clear"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li style="float: left; list-style: none; position: relative; width: 352px; margin-right: 40px;">
                                        <div class="box deal_REPAYING">
                                            <a href="/deal/detail?did=127">
                                                <div class="section01 thumb"
                                                     style="background-image: url('https://c-so.co.kr/wp-content/uploads/2017/07/썸네일이미지01-2.jpg');">
                                                    <div class="deal_done_cover">
                                                        <div class="repaying">펀딩성공</div>
                                                    </div>
                                                </div>
                                            </a>
                                            <div class="deal_title">
                                                제 2차 스포츠웨어 담보 사업자금 펀딩
                                            </div>
                                            <div class="section02">
                                                <div class="progress">
                                                    <div class="w-progbar style_4 color_secondary size_medium custom_progbar"
                                                         data-count="100">
                                                        <div class="w-progbar-bar">
                                                            <div class="w-progbar-bar-h" style="width: 100%;"></div>
                                                        </div>
                                                        <div class="percent"><span>100%</span>진행</div>
                                                    </div>
                                                </div>
                                                <div class="details">
                                                    <div class="funding_money">
                                                        <div class="title">펀딩목표액</div>
                                                        <div class="desc">
                                                            <span class="number">3</span> 억 <span
                                                                class="number">3,000</span> 만원
                                                        </div>
                                                    </div>
                                                    <div class="investment">
                                                        <div class="title">투자수익률</div>
                                                        <div class="desc">
                                                            연 <span class="number">10</span> %
                                                        </div>
                                                    </div>
                                                    <div class="invest_date">
                                                        <div class="title">투자기간</div>
                                                        <div class="desc">
                                                            <span class="number">3</span> 개월
                                                        </div>
                                                    </div>
                                                    <div class="clear"></div>
                                                </div>
                                                <div class="buttons">
                                                    <div class="left_btn">
                                                        <a class="w-btn style_solid size_medium color_navy custom_button01 invest_go_popup investNow127"
                                                           href="#invest_go_popup"
                                                           data-investname="제 2차 스포츠웨어 담보 사업자금 펀딩" data-dealsrl="127"
                                                           data-availableamount="0" data-limit="percent_30_0">

                                                            <span class="w-btn-label">투자하기</span>
                                                        </a>
                                                    </div>
                                                    <div class="right_btn">
                                                        <a class="w-btn style_solid size_medium color_navy custom_button02"
                                                           href="/deal/detail?did=127">
                                                            <span class="w-btn-label">상세보기</span>
                                                        </a>
                                                    </div>
                                                    <div class="clear"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li style="float: left; list-style: none; position: relative; width: 352px; margin-right: 40px;">
                                        <div class="box deal_REPAYING">
                                            <a href="/deal/detail?did=126">
                                                <div class="section01 thumb"
                                                     style="background-image: url('https://c-so.co.kr/wp-content/uploads/2017/07/썸네일이미지01-1.jpg');">
                                                    <div class="deal_done_cover">
                                                        <div class="repaying">펀딩성공</div>
                                                    </div>
                                                </div>
                                            </a>
                                            <div class="deal_title">
                                                명품 의류 브랜드 사업자금 펀딩
                                            </div>
                                            <div class="section02">
                                                <div class="progress">
                                                    <div class="w-progbar style_4 color_secondary size_medium custom_progbar"
                                                         data-count="100">
                                                        <div class="w-progbar-bar">
                                                            <div class="w-progbar-bar-h" style="width: 100%;"></div>
                                                        </div>
                                                        <div class="percent"><span>100%</span>진행</div>
                                                    </div>
                                                </div>
                                                <div class="details">
                                                    <div class="funding_money">
                                                        <div class="title">펀딩목표액</div>
                                                        <div class="desc">
                                                            <span class="number">2</span> 억 <span
                                                                class="number">4,000</span> 만원
                                                        </div>
                                                    </div>
                                                    <div class="investment">
                                                        <div class="title">투자수익률</div>
                                                        <div class="desc">
                                                            연 <span class="number">15.5</span> %
                                                        </div>
                                                    </div>
                                                    <div class="invest_date">
                                                        <div class="title">투자기간</div>
                                                        <div class="desc">
                                                            <span class="number">4</span> 개월
                                                        </div>
                                                    </div>
                                                    <div class="clear"></div>
                                                </div>
                                                <div class="buttons">
                                                    <div class="left_btn">
                                                        <a class="w-btn style_solid size_medium color_navy custom_button01 invest_go_popup investNow126"
                                                           href="#invest_go_popup" data-investname="명품 의류 브랜드 사업자금 펀딩"
                                                           data-dealsrl="126" data-availableamount="0"
                                                           data-limit="percent_30_0">

                                                            <span class="w-btn-label">투자하기</span>
                                                        </a>
                                                    </div>
                                                    <div class="right_btn">
                                                        <a class="w-btn style_solid size_medium color_navy custom_button02"
                                                           href="/deal/detail?did=126">
                                                            <span class="w-btn-label">상세보기</span>
                                                        </a>
                                                    </div>
                                                    <div class="clear"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li style="float: left; list-style: none; position: relative; width: 352px; margin-right: 40px;">
                                        <div class="box deal_REPAYING">
                                            <a href="/deal/detail?did=125">
                                                <div class="section01 thumb"
                                                     style="background-image: url('https://c-so.co.kr/wp-content/uploads/2017/07/썸네일이미지01.jpg');">
                                                    <div class="deal_done_cover">
                                                        <div class="repaying">펀딩성공</div>
                                                    </div>
                                                </div>
                                            </a>
                                            <div class="deal_title">
                                                제10차 슈퍼푸드 원물 구매자금 펀딩
                                            </div>
                                            <div class="section02">
                                                <div class="progress">
                                                    <div class="w-progbar style_4 color_secondary size_medium custom_progbar"
                                                         data-count="100">
                                                        <div class="w-progbar-bar">
                                                            <div class="w-progbar-bar-h" style="width: 100%;"></div>
                                                        </div>
                                                        <div class="percent"><span>100%</span>진행</div>
                                                    </div>
                                                </div>
                                                <div class="details">
                                                    <div class="funding_money">
                                                        <div class="title">펀딩목표액</div>
                                                        <div class="desc">
                                                            <span class="number">4</span> 억 <span
                                                                class="number">7,000</span> 만원
                                                        </div>
                                                    </div>
                                                    <div class="investment">
                                                        <div class="title">투자수익률</div>
                                                        <div class="desc">
                                                            연 <span class="number">15.5</span> %
                                                        </div>
                                                    </div>
                                                    <div class="invest_date">
                                                        <div class="title">투자기간</div>
                                                        <div class="desc">
                                                            <span class="number">4</span> 개월
                                                        </div>
                                                    </div>
                                                    <div class="clear"></div>
                                                </div>
                                                <div class="buttons">
                                                    <div class="left_btn">
                                                        <a class="w-btn style_solid size_medium color_navy custom_button01 invest_go_popup investNow125"
                                                           href="#invest_go_popup"
                                                           data-investname="제10차 슈퍼푸드 원물 구매자금 펀딩" data-dealsrl="125"
                                                           data-availableamount="0" data-limit="percent_30_0">

                                                            <span class="w-btn-label">투자하기</span>
                                                        </a>
                                                    </div>
                                                    <div class="right_btn">
                                                        <a class="w-btn style_solid size_medium color_navy custom_button02"
                                                           href="/deal/detail?did=125">
                                                            <span class="w-btn-label">상세보기</span>
                                                        </a>
                                                    </div>
                                                    <div class="clear"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li style="float: left; list-style: none; position: relative; width: 352px; margin-right: 40px;">
                                        <div class="box deal_REPAYING">
                                            <a href="/deal/detail?did=124">
                                                <div class="section01 thumb"
                                                     style="background-image: url('https://c-so.co.kr/wp-content/uploads/2017/06/썸네일이미지01-8.jpg');">
                                                    <div class="deal_done_cover">
                                                        <div class="repaying">펀딩성공</div>
                                                    </div>
                                                </div>
                                            </a>
                                            <div class="deal_title">
                                                명품 담보 사업자금 펀딩(부산)
                                            </div>
                                            <div class="section02">
                                                <div class="progress">
                                                    <div class="w-progbar style_4 color_secondary size_medium custom_progbar"
                                                         data-count="100">
                                                        <div class="w-progbar-bar">
                                                            <div class="w-progbar-bar-h" style="width: 100%;"></div>
                                                        </div>
                                                        <div class="percent"><span>100%</span>진행</div>
                                                    </div>
                                                </div>
                                                <div class="details">
                                                    <div class="funding_money">
                                                        <div class="title">펀딩목표액</div>
                                                        <div class="desc">
                                                            <span class="number">2</span> 억 <span
                                                                class="number">7,000</span> 만원
                                                        </div>
                                                    </div>
                                                    <div class="investment">
                                                        <div class="title">투자수익률</div>
                                                        <div class="desc">
                                                            연 <span class="number">15.5</span> %
                                                        </div>
                                                    </div>
                                                    <div class="invest_date">
                                                        <div class="title">투자기간</div>
                                                        <div class="desc">
                                                            <span class="number">4</span> 개월
                                                        </div>
                                                    </div>
                                                    <div class="clear"></div>
                                                </div>
                                                <div class="buttons">
                                                    <div class="left_btn">
                                                        <a class="w-btn style_solid size_medium color_navy custom_button01 invest_go_popup investNow124"
                                                           href="#invest_go_popup" data-investname="명품 담보 사업자금 펀딩(부산)"
                                                           data-dealsrl="124" data-availableamount="0"
                                                           data-limit="percent_30_0">

                                                            <span class="w-btn-label">투자하기</span>
                                                        </a>
                                                    </div>
                                                    <div class="right_btn">
                                                        <a class="w-btn style_solid size_medium color_navy custom_button02"
                                                           href="/deal/detail?did=124">
                                                            <span class="w-btn-label">상세보기</span>
                                                        </a>
                                                    </div>
                                                    <div class="clear"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li style="float: left; list-style: none; position: relative; width: 352px; margin-right: 40px;">
                                        <div class="box deal_REPAYING">
                                            <a href="/deal/detail?did=123">
                                                <div class="section01 thumb"
                                                     style="background-image: url('https://c-so.co.kr/wp-content/uploads/2017/06/썸네일이미지02-7.jpg');">
                                                    <div class="deal_done_cover">
                                                        <div class="repaying">펀딩성공</div>
                                                    </div>
                                                </div>
                                            </a>
                                            <div class="deal_title">
                                                제 23차 견과류 구매자금 펀딩
                                            </div>
                                            <div class="section02">
                                                <div class="progress">
                                                    <div class="w-progbar style_4 color_secondary size_medium custom_progbar"
                                                         data-count="100">
                                                        <div class="w-progbar-bar">
                                                            <div class="w-progbar-bar-h" style="width: 100%;"></div>
                                                        </div>
                                                        <div class="percent"><span>100%</span>진행</div>
                                                    </div>
                                                </div>
                                                <div class="details">
                                                    <div class="funding_money">
                                                        <div class="title">펀딩목표액</div>
                                                        <div class="desc">
                                                            <span class="number">6</span> 억 <span
                                                                class="number">5,000</span> 만원
                                                        </div>
                                                    </div>
                                                    <div class="investment">
                                                        <div class="title">투자수익률</div>
                                                        <div class="desc">
                                                            연 <span class="number">10</span> %
                                                        </div>
                                                    </div>
                                                    <div class="invest_date">
                                                        <div class="title">투자기간</div>
                                                        <div class="desc">
                                                            <span class="number">6</span> 개월
                                                        </div>
                                                    </div>
                                                    <div class="clear"></div>
                                                </div>
                                                <div class="buttons">
                                                    <div class="left_btn">
                                                        <a class="w-btn style_solid size_medium color_navy custom_button01 invest_go_popup investNow123"
                                                           href="#invest_go_popup" data-investname="제 23차 견과류 구매자금 펀딩"
                                                           data-dealsrl="123" data-availableamount="0"
                                                           data-limit="percent_30_0">

                                                            <span class="w-btn-label">투자하기</span>
                                                        </a>
                                                    </div>
                                                    <div class="right_btn">
                                                        <a class="w-btn style_solid size_medium color_navy custom_button02"
                                                           href="/deal/detail?did=123">
                                                            <span class="w-btn-label">상세보기</span>
                                                        </a>
                                                    </div>
                                                    <div class="clear"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li style="float: left; list-style: none; position: relative; width: 352px; margin-right: 40px;"
                                        class="bx-clone">
                                        <div class="box deal_REPAYING">
                                            <a href="/deal/detail?did=131">
                                                <div class="section01 thumb"
                                                     style="background-image: url('https://c-so.co.kr/wp-content/uploads/2017/07/썸네일이미지01-6.jpg');">
                                                    <div class="deal_done_cover">
                                                        <div class="repaying">펀딩성공</div>
                                                    </div>
                                                </div>
                                            </a>
                                            <div class="deal_title">
                                                명품 담보 사업자금 펀딩
                                            </div>
                                            <div class="section02">
                                                <div class="progress">
                                                    <div class="w-progbar style_4 color_secondary size_medium custom_progbar"
                                                         data-count="100">
                                                        <div class="w-progbar-bar">
                                                            <div class="w-progbar-bar-h" style="width: 100%;"></div>
                                                        </div>
                                                        <div class="percent"><span>100%</span>진행</div>
                                                    </div>
                                                </div>
                                                <div class="details">
                                                    <div class="funding_money">
                                                        <div class="title">펀딩목표액</div>
                                                        <div class="desc">
                                                            <span class="number">3</span> 억 <span
                                                                class="number">7,000</span> 만원
                                                        </div>
                                                    </div>
                                                    <div class="investment">
                                                        <div class="title">투자수익률</div>
                                                        <div class="desc">
                                                            연 <span class="number">16</span> %
                                                        </div>
                                                    </div>
                                                    <div class="invest_date">
                                                        <div class="title">투자기간</div>
                                                        <div class="desc">
                                                            <span class="number">3</span> 개월
                                                        </div>
                                                    </div>
                                                    <div class="clear"></div>
                                                </div>
                                                <div class="buttons">
                                                    <div class="left_btn">
                                                        <a class="w-btn style_solid size_medium color_navy custom_button01 invest_go_popup investNow131"
                                                           href="#invest_go_popup" data-investname="명품 담보 사업자금 펀딩"
                                                           data-dealsrl="131" data-availableamount="0"
                                                           data-limit="percent_30_0">

                                                            <span class="w-btn-label">투자하기</span>
                                                        </a>
                                                    </div>
                                                    <div class="right_btn">
                                                        <a class="w-btn style_solid size_medium color_navy custom_button02"
                                                           href="/deal/detail?did=131">
                                                            <span class="w-btn-label">상세보기</span>
                                                        </a>
                                                    </div>
                                                    <div class="clear"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li style="float: left; list-style: none; position: relative; width: 352px; margin-right: 40px;"
                                        class="bx-clone">
                                        <div class="box deal_REPAYING">
                                            <a href="/deal/detail?did=130">
                                                <div class="section01 thumb"
                                                     style="background-image: url('https://c-so.co.kr/wp-content/uploads/2017/06/썸네일이미지01-7.jpg');">
                                                    <div class="deal_done_cover">
                                                        <div class="repaying">펀딩성공</div>
                                                    </div>
                                                </div>
                                            </a>
                                            <div class="deal_title">
                                                제 24차 견과류 구매자금 펀딩
                                            </div>
                                            <div class="section02">
                                                <div class="progress">
                                                    <div class="w-progbar style_4 color_secondary size_medium custom_progbar"
                                                         data-count="100">
                                                        <div class="w-progbar-bar">
                                                            <div class="w-progbar-bar-h" style="width: 100%;"></div>
                                                        </div>
                                                        <div class="percent"><span>100%</span>진행</div>
                                                    </div>
                                                </div>
                                                <div class="details">
                                                    <div class="funding_money">
                                                        <div class="title">펀딩목표액</div>
                                                        <div class="desc">
                                                            <span class="number">6</span> 억 <span
                                                                class="number">4,500</span> 만원
                                                        </div>
                                                    </div>
                                                    <div class="investment">
                                                        <div class="title">투자수익률</div>
                                                        <div class="desc">
                                                            연 <span class="number">10</span> %
                                                        </div>
                                                    </div>
                                                    <div class="invest_date">
                                                        <div class="title">투자기간</div>
                                                        <div class="desc">
                                                            <span class="number">6</span> 개월
                                                        </div>
                                                    </div>
                                                    <div class="clear"></div>
                                                </div>
                                                <div class="buttons">
                                                    <div class="left_btn">
                                                        <a class="w-btn style_solid size_medium color_navy custom_button01 invest_go_popup investNow130"
                                                           href="#invest_go_popup" data-investname="제 24차 견과류 구매자금 펀딩"
                                                           data-dealsrl="130" data-availableamount="0"
                                                           data-limit="percent_30_0">

                                                            <span class="w-btn-label">투자하기</span>
                                                        </a>
                                                    </div>
                                                    <div class="right_btn">
                                                        <a class="w-btn style_solid size_medium color_navy custom_button02"
                                                           href="/deal/detail?did=130">
                                                            <span class="w-btn-label">상세보기</span>
                                                        </a>
                                                    </div>
                                                    <div class="clear"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li style="float: left; list-style: none; position: relative; width: 352px; margin-right: 40px;"
                                        class="bx-clone">
                                        <div class="box deal_REPAYING">
                                            <a href="/deal/detail?did=129">
                                                <div class="section01 thumb"
                                                     style="background-image: url('https://c-so.co.kr/wp-content/uploads/2017/07/썸네일이미지01-5.jpg');">
                                                    <div class="deal_done_cover">
                                                        <div class="repaying">펀딩성공</div>
                                                    </div>
                                                </div>
                                            </a>
                                            <div class="deal_title">
                                                루스티치 스니커즈 담보 펀딩
                                            </div>
                                            <div class="section02">
                                                <div class="progress">
                                                    <div class="w-progbar style_4 color_secondary size_medium custom_progbar"
                                                         data-count="100">
                                                        <div class="w-progbar-bar">
                                                            <div class="w-progbar-bar-h" style="width: 100%;"></div>
                                                        </div>
                                                        <div class="percent"><span>100%</span>진행</div>
                                                    </div>
                                                </div>
                                                <div class="details">
                                                    <div class="funding_money">
                                                        <div class="title">펀딩목표액</div>
                                                        <div class="desc">
                                                            <span class="number">6,000</span> 만원
                                                        </div>
                                                    </div>
                                                    <div class="investment">
                                                        <div class="title">투자수익률</div>
                                                        <div class="desc">
                                                            연 <span class="number">15</span> %
                                                        </div>
                                                    </div>
                                                    <div class="invest_date">
                                                        <div class="title">투자기간</div>
                                                        <div class="desc">
                                                            <span class="number">6</span> 개월
                                                        </div>
                                                    </div>
                                                    <div class="clear"></div>
                                                </div>
                                                <div class="buttons">
                                                    <div class="left_btn">
                                                        <a class="w-btn style_solid size_medium color_navy custom_button01 invest_go_popup investNow129"
                                                           href="#invest_go_popup" data-investname="루스티치 스니커즈 담보 펀딩"
                                                           data-dealsrl="129" data-availableamount="0"
                                                           data-limit="percent_30_0">

                                                            <span class="w-btn-label">투자하기</span>
                                                        </a>
                                                    </div>
                                                    <div class="right_btn">
                                                        <a class="w-btn style_solid size_medium color_navy custom_button02"
                                                           href="/deal/detail?did=129">
                                                            <span class="w-btn-label">상세보기</span>
                                                        </a>
                                                    </div>
                                                    <div class="clear"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="bx-controls bx-has-pager">
                                <div class="bx-pager bx-default-pager">
                                    <div class="bx-pager-item"><a href="" data-slide-index="0"
                                                                  class="bx-pager-link">1</a></div>
                                    <div class="bx-pager-item"><a href="" data-slide-index="1"
                                                                  class="bx-pager-link">2</a></div>
                                    <div class="bx-pager-item"><a href="" data-slide-index="2"
                                                                  class="bx-pager-link active">3</a></div>
                                </div>
                            </div>
                        </div>
                        <div class="clear"></div>

                        <div class="w-btn-wrapper align_center">
                            <a id="invest_read_more"
                               class="w-btn style_outlined size_medium color_navy icon_atleft invest_read_more"
                               href="/deal">
                                <span class="w-btn-label">투자상품 보러가기</span>
                            </a>
                        </div>
                    </div>

                </div>
            </div>
        </div>


        <!-- invest_go_popup -->
        <div id="invest_go_popup" class="white-popup mfp-hide" data-mfp-src="#invest_go_popup">
            <div class="full-width content">
                <div class="full-width animate_afb animate_start main_title">
                    <div class="wpb_text_column">
                        <div class="popup_wrap">
                            <h2>투자하기</h2>
                            <h6>
                                투자상품 <span class="blue_stress" id="investDealTitle"></span> (제 <span id="investDealSrl"
                                                                                                     class="blue_stress"></span>
                                호)의 투자가능금액은 <span id="investAvailableAmount"
                                                  class="blue_stress invest_check_box"></span>원 입니다.<br>
                                <span id="limitInvestText">총 펀딩금액의 30%까지 투자할 수 있습니다.</span><br>
                                고객님의 예치금은 <span class="blue_stress format_money invest_check_box"
                                                id="myBalance">0</span>원 이며, 해당 펀딩에 최대 <span class="blue_stress"
                                                                                             id="user_max_amount"></span>원까지
                                투자 가능합니다.
                            </h6>

                            <div class="invest_cash"><input type="text" id="investAmount" name="invest_money" value=""
                                                            placeholder="투자금액" required=""
                                                            data-msg-required="금액을 입력해주세요" class="num_only autoNumeric"><span>원</span>
                            </div>

                            <h6 id="authTypeWrap">
                                <span class="blue_stress">&lt;인증 방식 선택&gt;</span><br>안전한 출금 절차를 위해 인증 절차를 거치고 있습니다. <br>문자
                                혹은 전화(ARS) 인증을 선택한 후 투자를 진행해 주세요.<br>
                                <input type="radio" name="invest_auth_type" id="investAuthTypeSMS" value="LMS_MO"
                                       checked="checked" required="" data-msg-required="인증 방식을 선택해주세요">
                                <label for="investAuthTypeSMS">문자 인증</label>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="radio" name="invest_auth_type" id="investAuthTypeARS" value="ARS_OUT"
                                       required="" data-msg-required="인증 방식을 선택해주세요">
                                <label for="investAuthTypeARS">전화 인증</label>
                            </h6>
                            <div class="invest_allow">
                                <div class="invest_warning">
                                    <h5> - 투자위험 고지</h5>
                                    <h6>
                                        본 투자상품은 원금이 보장되지 않습니다.
                                        모든 투자상품은 현행 법률 상 ‘유사수신행위의 규제에 관한 법률’에 의거하여 원금과 수익을 보장할 수 없습니다.
                                        또한 차입자가 원금의 전부 또는 일부를 상환하지 못할 경우 발생하게 되는 투자금 손실 등 투자위험은 투자자가 부담하게 됩니다.
                                        <br><br>
                                        <span class="agree_text">
												나 <span class="blue_stress"></span>은(는) 상기 내용을 확인하였으며 그 내용에
												<input type="text" id="agreeWarning" placeholder="동의함" required=""
                                                       data-msg-required="'동의함'을 직접 입력해주세요">
											</span>
                                    </h6>

                                    <input type="checkbox" name="invest_allow" id="invest_allow" class="terms_check"
                                           required="" data-msg-required="투자 이용약관에 동의해주세요">
                                    <label for="invest_allow">
                                        <a href="/terms/investment" target="_blank">투자 이용약관</a>에 동의하며, 투자 위험을 확인하고 투자를
                                        확정하겠습니다.
                                    </label>
                                </div>
                            </div>
                            <div class="invest_pop_bt">
                                <div class="w-btn-wrapper align_center">
                                    <a id="confirmInvestBtn"
                                       class="w-btn style_solid size_medium color_navy custom_button invest_done href_disable"
                                       href="#"><span class="w-btn-label">투자하기</span></a>
                                    <!--<input type="submit" name="submit" class="custom_button" value="투자하기" style="width: 100%;">-->
                                </div>
                                <div class="w-btn-wrapper align_center">
                                    <a class="w-btn style_outlined size_medium color_navy invest_popup_close href_disable"
                                       href="#"><span class="w-btn-label">취소하기</span></a>
                                </div>
                            </div>
                            <p class="in_guid">※ 시소펀딩은 지나친 금액의 투자를 권장하지 않습니다.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- invest_go_popup close -->

    </section>
</div>

<div id="myCarousel01" class="carousel slide" data-ride="carousel"
     style="width: 75%; margin-left: auto; margin-right: auto;">

    <!--페이지-->
    <ol class="carousel-indicators" style="">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <!--페이지-->

    <div class="carousel-inner" style="">
        <!--슬라이드1-->
        <div class="item active" style="margin-left: auto; margin-right: auto;">
            <%--<img src="https://i.ytimg.com/vi/0-gdXa5spAU/maxresdefault.jpg" style="width:100%" alt="First slide">--%>
            <%--<div class="container">--%>
            <%--<div class="carousel-caption">--%>
            <%--<h1>금융사기</h1>--%>
            <%--<p>당신을 노리고 있음요!</p>--%>
            <%--</div>--%>
            <%--</div>--%>
            <ul id="dealsList" class="dealsList_bxslider"
                style="width: 1115%; position: relative;
                transition-duration: 0.5s; transform: translate3d(0px, 0px, 0px);">
                <li style="float: left; list-style: none; position: relative;
                    width: 352px; margin-right: 40px;
                    border:3px solid dimgray; /*margin-left: auto; margin-right: auto;*/"
                    class="bx-clone bx-clone1">
                    <div class="box deal_REPAYING">
                        <a href="/deal/detail?did=125">
                            <div class="section01 thumb"
                                 style="/*background-image: url('http://static.plaync.co.kr/powerbook/bns/28/14/uploaded_k00.jpg');*/">
                                <div class="deal_done_cover">
                                    <div class="repaying">펀딩성공1</div>
                                </div>
                            </div>
                        </a>
                        <div class="deal_title">
                            제10차 슈퍼푸드 원물 구매자금 펀딩
                        </div>
                        <div class="section02">
                            <div class="progress">
                                <div class="w-progbar style_4 color_secondary size_medium custom_progbar"
                                     data-count="100">
                                    <div class="w-progbar-bar">
                                        <div class="w-progbar-bar-h" style="width: 100%;"></div>
                                    </div>
                                    <div class="percent"><span>100%</span>진행</div>
                                </div>
                            </div>
                            <div class="details">
                                <div class="funding_money">
                                    <div class="title">펀딩목표액</div>
                                    <div class="desc">
                                        <span class="number">4</span> 억 <span
                                            class="number">7,000</span> 만원
                                    </div>
                                </div>
                                <div class="investment">
                                    <div class="title">투자수익률</div>
                                    <div class="desc">
                                        연 <span class="number">15.5</span> %
                                    </div>
                                </div>
                                <div class="invest_date">
                                    <div class="title">투자기간</div>
                                    <div class="desc">
                                        <span class="number">4</span> 개월
                                    </div>
                                </div>
                                <div class="clear"></div>
                            </div>
                            <div class="buttons">
                                <div class="left_btn">
                                    <a class="w-btn style_solid size_medium color_navy custom_button01 invest_go_popup investNow125"
                                       href="#invest_go_popup"
                                       data-investname="제10차 슈퍼푸드 원물 구매자금 펀딩" data-dealsrl="125"
                                       data-availableamount="0" data-limit="percent_30_0">

                                        <span class="w-btn-label">투자하기</span>
                                    </a>
                                </div>
                                <div class="right_btn">
                                    <a class="w-btn style_solid size_medium color_navy custom_button02"
                                       href="/deal/detail?did=125">
                                        <span class="w-btn-label">상세보기</span>
                                    </a>
                                </div>
                                <div class="clear"></div>
                            </div>
                        </div>
                    </div>
                </li>

                <c:forEach items="${csoList}" var="csoVO">

                <li style="float: left; list-style: none; position: relative; width: 352px; margin-right: 40px;
                    border:3px solid dimgray; "
                    class="bx-clone">
                    <div class="box deal_REPAYING">
                        <a href="/deal/detail?did=124">
                            <div class="section01 thumb"
                                 style="background-image: url('https://c-so.co.kr/wp-content/uploads/2017/06/썸네일이미지01-8.jpg');">
                                <div class="deal_done_cover">
                                    <div class="repaying">${csoVO.dt_ffinish}</div>
                                </div>
                            </div>
                        </a>
                        <div class="deal_title">
                            ${csoVO.fn_title}
                        </div>
                        <div class="section02">
                            <div class="progress">
                                <div class="w-progbar style_4 color_secondary size_medium custom_progbar"
                                     data-count="100">
                                    <div class="w-progbar-bar">
                                        <div class="w-progbar-bar-h" style="width: 100%;"></div>
                                    </div>
                                    <div class="percent"><span>100%</span>진행</div>
                                </div>
                            </div>
                            <div class="details">
                                <div class="funding_money">
                                    <div class="title">펀딩목표액</div>
                                    <div class="desc">
                                        <span class="number">${csoVO.fn_fundinggoal}</span> 원
                                    </div>
                                </div>
                                <div class="investment">
                                    <div class="title">투자수익률</div>
                                    <div class="desc">
                                        연 <span class="number">${csoVO.fn_iir}</span> %
                                    </div>
                                </div>
                                <div class="invest_date">
                                    <div class="title">투자기간</div>
                                    <div class="desc">
                                        <span class="number">${csoVO.fn_iperiod}</span> 개월
                                    </div>
                                </div>
                                <div class="clear"></div>
                            </div>
                            <div class="buttons">
                                <div class="left_btn">
                                    <a class="w-btn style_solid size_medium color_navy custom_button01 invest_go_popup investNow124"
                                       href="#invest_go_popup" data-investname="명품 담보 사업자금 펀딩(부산)"
                                       data-dealsrl="124" data-availableamount="0"
                                       data-limit="percent_30_0">

                                        <span class="w-btn-label">투자하기</span>
                                    </a>
                                </div>
                                <div class="right_btn">
                                    <a class="w-btn style_solid size_medium color_navy custom_button02"
                                       href="/deal/detail?did=124">
                                        <span class="w-btn-label">상세보기</span>
                                    </a>
                                </div>
                                <div class="clear"></div>
                            </div>
                        </div>
                    </div>
                </li>

                </c:forEach>

                <%--<li style="float: left; list-style: none; position: relative; width: 352px;--%>
                        <%--border:3px solid dimgray; margin-right: 40px;"--%>
                    <%--class="bx-clone">--%>
                    <%--<div class="box deal_REPAYING">--%>
                        <%--<a href="/deal/detail?did=123">--%>
                            <%--<div class="section01 thumb"--%>
                                 <%--style="background-image: url('https://c-so.co.kr/wp-content/uploads/2017/06/썸네일이미지02-7.jpg');">--%>
                                <%--<div class="deal_done_cover">--%>
                                    <%--<div class="repaying">펀딩성공</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</a>--%>
                        <%--<div class="deal_title">--%>
                            <%--제 23차 견과류 구매자금 펀딩--%>
                        <%--</div>--%>
                        <%--<div class="section02">--%>
                            <%--<div class="progress">--%>
                                <%--<div class="w-progbar style_4 color_secondary size_medium custom_progbar"--%>
                                     <%--data-count="100">--%>
                                    <%--<div class="w-progbar-bar">--%>
                                        <%--<div class="w-progbar-bar-h" style="width: 100%;"></div>--%>
                                    <%--</div>--%>
                                    <%--<div class="percent"><span>100%</span>진행</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                            <%--<div class="details">--%>
                                <%--<div class="funding_money">--%>
                                    <%--<div class="title">펀딩목표액</div>--%>
                                    <%--<div class="desc">--%>
                                        <%--<span class="number">6</span> 억 <span--%>
                                            <%--class="number">5,000</span> 만원--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                                <%--<div class="investment">--%>
                                    <%--<div class="title">투자수익률</div>--%>
                                    <%--<div class="desc">--%>
                                        <%--연 <span class="number">10</span> %--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                                <%--<div class="invest_date">--%>
                                    <%--<div class="title">투자기간</div>--%>
                                    <%--<div class="desc">--%>
                                        <%--<span class="number">6</span> 개월--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                                <%--<div class="clear"></div>--%>
                            <%--</div>--%>
                            <%--<div class="buttons">--%>
                                <%--<div class="left_btn">--%>
                                    <%--<a class="w-btn style_solid size_medium color_navy custom_button01 invest_go_popup investNow123"--%>
                                       <%--href="#invest_go_popup" data-investname="제 23차 견과류 구매자금 펀딩"--%>
                                       <%--data-dealsrl="123" data-availableamount="0"--%>
                                       <%--data-limit="percent_30_0">--%>

                                        <%--<span class="w-btn-label">투자하기</span>--%>
                                    <%--</a>--%>
                                <%--</div>--%>
                                <%--<div class="right_btn">--%>
                                    <%--<a class="w-btn style_solid size_medium color_navy custom_button02"--%>
                                       <%--href="/deal/detail?did=123">--%>
                                        <%--<span class="w-btn-label">상세보기</span>--%>
                                    <%--</a>--%>
                                <%--</div>--%>
                                <%--<div class="clear"></div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</li>--%>
            </ul>
        </div>
        <!--슬라이드1-->

        <!--슬라이드2-->
        <div class="item">
            <img src="http://www.blueb.co.kr/SRC2/_image/w02.jpg" style="width:100%" data-src="" alt="Second slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Slide 2</h1>
                    <p>텍스트 2</p>
                </div>
            </div>
        </div>
        <!--슬라이드2-->

        <!--슬라이드3-->
        <div class="item">
            <img src="http://www.blueb.co.kr/SRC2/_image/w03.jpg" style="width:100%" data-src="" alt="Third slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Slide 3</h1>
                    <p>텍스트 3</p>
                </div>
            </div>
        </div>
        <!--슬라이드3-->
    </div>

    <!--이전, 다음 버튼-->
    <a class="left carousel-control" href="#myCarousel01" data-slide="prev"><span
            class="glyphicon glyphicon-chevron-left"></span></a>
    <a class="right carousel-control" href="#myCarousel01" data-slide="next"><span
            class="glyphicon glyphicon-chevron-right"></span></a>
</div>


</body>

<script type="text/javascript">

    var ePopLayer = jQuery('.page_pop_layer .main_pop_layer');
    var bg = ePopLayer.prev().hasClass('bg');							// 레이어를 감지하기 위한 boolean 변수
    var sContentListVal = '';

    function openInputMainPopup() {

        if (sContentListVal != '' && ePopLayer.html() == '') {
            ePopLayer.html(sContentListVal);
            sContentListVal = '';
        }

        jQuery('.pop_content_wrap').each(function () {
            var eContent = jQuery(this);
            if (getCookie(eContent.attr('id')) == 1) {
                eContent.remove();
            } else {
                sContentListVal += eContent.wrap('<div>').parent().html();
                eContent.unwrap();
            }
        });

        var eContentList = jQuery('.pop_content_wrap');
        if (eContentList.length < 1) {
            return;
        }

        if (bg == true) {
            jQuery('.page_pop_layer').fadeIn();	//'bg' 클래스가 존재하면 레이어가 나타나고 배경은 dimmed 된다.
        } else {
            ePopLayer.fadeIn();
        }

        var contentSizeInfo = calcPopupContentSize(eContentList);

        var documentWidth = jQuery(window).width();
        var documentHeight = jQuery(window).height();

        // 화면의 중앙에 레이어를 띄운다.
        //	팝업 총 길이보다 윈도우 가로 길이가 크면 가로로 배열
        if (contentSizeInfo['total_width'] < documentWidth) {
            eContentList.css('float', 'left');
            eContentList.css('margin-right', '20px');

            if (documentHeight <= (contentSizeInfo['max_height'] + 36)) {
                eContentList.find('img').css('max-height', (documentHeight) * 0.9 - 36);
                eContentList.css('max-height', (documentHeight) * 0.9);
                eContentList.css('max-width', eContentList.find('img').width());
            }
            contentSizeInfo = calcPopupContentSize(eContentList);

            ePopLayer.css('margin-left', (documentWidth - contentSizeInfo['total_width']) / 2 + 'px');
            ePopLayer.css('margin-top', (documentHeight - contentSizeInfo['max_height']) * 0.9 / 2 + 'px');
        } else {
            eContentList.css('margin-bottom', '10px');
            if (documentWidth <= contentSizeInfo['max_width']) {
                eContentList.find('img').css('max-width', (documentWidth) * 0.9);
                eContentList.css('max-width', (documentWidth) * 0.9);
            }
            contentSizeInfo = calcPopupContentSize(eContentList);

            if (documentHeight <= contentSizeInfo['total_height']) {
                eContentList.find('img').css('max-height', ((documentHeight * 0.9) / contentSizeInfo['count']) - 36);
                eContentList.css('max-height', ((documentHeight * 0.9) / contentSizeInfo['count']));
                eContentList.css('max-width', eContentList.find('img').width());
            }
            contentSizeInfo = calcPopupContentSize(eContentList);

            ePopLayer.css('margin-top', (documentHeight - contentSizeInfo['total_height']) / 2 + 'px');
            ePopLayer.css('margin-left', (documentWidth - contentSizeInfo['max_width']) / 2 + 'px');
        }
    }

    function closeInputMainPopup(sContentId) {

        jQuery('#' + sContentId).remove();
        if (jQuery('.pop_content_wrap').length < 1) {
            var ePopLayer = jQuery('.page_pop_layer .main_pop_layer');
            if (ePopLayer.prev().hasClass('bg') == true) {
                jQuery('.page_pop_layer').fadeOut(); //'bg' 클래스가 존재하면 레이어를 사라지게 한다.
            } else {
                ePopLayer.fadeOut();
            }
        }
    }

    function calcPopupContentSize(eContentList) {

        var popContentCount = 0;
        var maxContentWidth = 0;
        var maxContentHeight = 0;
        var totalContentWidth = 0;
        var totalContentHeight = 0;

        eContentList.each(function () {
            popContentCount++;
            var eContent = jQuery(this);

            totalContentWidth += eContent.outerWidth();
            totalContentHeight += eContent.outerHeight();

            if (eContent.outerWidth() > maxContentWidth) {
                maxContentWidth = eContent.outerWidth();
            }
            if (eContent.outerHeight() > maxContentHeight) {
                maxContentHeight = eContent.outerHeight();
            }
        });

        totalContentWidth += (popContentCount * 20);
        totalContentHeight += (popContentCount * 45);

        return {
            "count": popContentCount,
            "max_width": maxContentWidth,
            "max_height": maxContentHeight,
            "total_width": totalContentWidth,
            "total_height": totalContentHeight
        };
    }

    function setNotShowToday(cName) {
        setCookie(cName, '1');
        closeInputMainPopup(cName);
    }

    function setCookie(cName, cValue) {
        var curDate = new Date();
        curDate.setDate(curDate.getDate() + 1);
        curDate.setHours(0);
        curDate.setMinutes(0);
        curDate.setSeconds(0);
        var expires = 'expires=' + curDate.toGMTString();
        document.cookie = cName + '=' + cValue + '; ' + expires;
    }

    function getCookie(cName) {
        cName = cName + '=';
        var cookieData = document.cookie;
        var start = cookieData.indexOf(cName);
        var cValue = '';
        if (start != -1) {
            start += cName.length;
            var end = cookieData.indexOf(';', start);
            if (end == -1) {
                end = cookieData.length;
            }
            cValue = cookieData.substring(start, end);
        }
        return unescape(cValue);
    }
</script>

<script type="text/javascript">
    var $buoop = {c: 2, vs: {i: 9, f: 35, o: 28, s: 7}, reminder: 0, test: false, newwindow: true};

    function $buo_f() {
        var e = document.createElement("script");
        e.src = "//browser-update.org/update.min.js";
        document.body.appendChild(e);
    };
    try {
        document.addEventListener("DOMContentLoaded", $buo_f, false)
    }
    catch (e) {
        window.attachEvent("onload", $buo_f)
    }
</script>
</html>
