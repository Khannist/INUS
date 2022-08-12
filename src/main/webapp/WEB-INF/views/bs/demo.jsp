<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인화면</title>
<script type="text/javascript" src="bs/js/scroll.js"></script>
<link type="text/css" rel="stylesheet" href="bs/css/inus.css">
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
</head>
<body>
<header>
<h1>게시판</h1>
<div class="writeBtn">
<a id="writeBtn" onclick="location.href='boardWrite'"><img src="https://s-talk.op.gg/images/icon-write@2x.png"></a>
</div>
</header>
<div class="article-body">
<c:forEach items="${boardList}" var="boardList">
<div class="transform-origin" data-aos="fade-right" data-aos-duration="500">
<section class="article-list">
				<ul>
				<li>
                <article class="article-list-item">
            <div class="article-list-item__vote">
                                    <img src="https://s-talk.op.gg/images/icon-vote-up.png" alt="">
                    <div>${boardList.boardCount}</div>
                            </div>
            <div class="article-list-item__content">
                <a href="boardView?inus_boardNum=${boardList.inus_boardNum}" class="article-list-item__info">
                    <div class="article-list-item__title">
                        <span class="post-title">${boardList.inus_subject}</span>

                                                <em>{12}</em>                   </div>
                </a>
                <div class="article-list-item-meta">
                                            <div class="article-list-item-meta__item">자유</div>
                                        <div class="article-list-item-meta__item">
                        <span><fmt:formatDate value="${boardList.inus_Date}" type="date" dateStyle="short"/></span>
                    </div>
                    <div class="article-list-item-meta__item article-list-item-meta__item--author">
                          ${boardList.inus_userName}
                    </div>
                </div>
                <a href="https://talk.op.gg/s/lol/free/5348406/%EB%A1%A4%ED%95%98%EB%A9%B4%EC%84%9C-%EC%9E%90%EB%9E%91%ED%95%A0%EB%A7%8C%ED%95%9C%EA%B1%B0%EC%9E%88%EC%9D%8C%3F" class="article-list-item__mobile-link"></a>
            </div>
                       
                    </article>
                    </li>
				</ul>
</section>
</div>
</c:forEach>
<input type="button" value="글 쓰기" onclick="location.href='boardWrite'">
</div>
<script type="text/javascript">
  AOS.init();
</script>
</body>
</html>