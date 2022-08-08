<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인화면</title>
<link type="text/css" rel="stylesheet" href="bs/css/inus.css">
</head>
<body>
<header>
</header>
<c:forEach items="${boardList}" var="boardList">
<section class="article-list">
                <article class="article-list-item">
            <div class="article-list-item__vote">
                                    <img src="https://s-talk.op.gg/images/icon-vote-up.png" alt="">
                    <div>${boardList.boardCount}</div>
                            </div>
            <div class="article-list-item__content">
                <a href="boardView?inus_boardNum=${boardList.inus_boardNum}" class="article-list-item__info">
                    <div class="article-list-item__title">
                        <span class="post-title">${boardList.inus_subject}</span>

                                                <em></em>                   </div>
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
                            <div class="article-list-item-thumbnail">
                    <a href="https://talk.op.gg/s/lol/free/5348406/%EB%A1%A4%ED%95%98%EB%A9%B4%EC%84%9C-%EC%9E%90%EB%9E%91%ED%95%A0%EB%A7%8C%ED%95%9C%EA%B1%B0%EC%9E%88%EC%9D%8C%3F">
                                                    <img src="https://opgg-com-image.akamaized.net/attach/images/20220807220907.262684.jpg?image=w_200" class="article-list-item__thumbnail" alt="">
                                            </a>
                </div>
                    </article>

</section>

</c:forEach>
<div class="writeBtn">
<a onclick="location.href='boardWrite'"><img src="https://s-talk.op.gg/images/icon-write@2x.png"></a>
</div>
<footer>
</footer>
</body>
</html>