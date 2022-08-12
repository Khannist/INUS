<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<link href="/NY/css/musicSearchcss.css" rel="stylesheet">
</head>
<body>
<div class="MusicSearch">
	<div></div>
	<input type="text" class="SearchInput" id="search_Input" value="검색어를 입력해주세요">
    <input type="button" class="SearchInput" id="search_Button" onclick="Search()"> 
	<img class="ToIMG" id="ToMusic" src="ny/img/icon/ToMusicList.png" onclick="F_ToMusicList()">
	<ul>	
		<li id="search01">
			<p id="num1_th"></p>
			<p id="num1_title"></p>
		</li>
		<li id="search02">
			<p id="num2_th"></p>
			<p id="num2_title"></p>
		</li>
		<li id="search03">
			<p id="num3_th"></p>
			<p id="num3_title"></p>
		</li>
		<li id="search04">
			<p id="num4_th"></p>
			<p id="num4_title"></p>
		</li>
		<li id="search05">
			<p id="num5_th"></p>
			<p id="num5_title"></p>
		</li>
		<li id="search06">
			<p id="num6_th"></p>
			<p id="num6_title"></p>
		</li>
		<li id="search07">
			<p id="num7_th"></p>
			<p id="num7_title"></p>
		</li>
		<li id="search08">
			<p id="num8_th"></p>
			<p id="num8_title"></p>
		</li>
		<li id="search09">
			<p id="num9_th"></p>
			<p id="num9_title"></p>
		</li>
		<li id="search10">
			<p id="num10_th"></p>
			<p id="num10_title"></p>
		</li>
	</ul>

<link href="/NY/css/MusicSearch.css" rel="stylesheet">
</head>
<body>
	<div class="SearchHeader">
		<div class="SearchInput">
			<input type="text" id="search_Input" placeholder="Search here...">
			<button type="submit" id="search_Button" onclick="Search()">Search</button>
	    </div>
	    <img class="ToIMG" id="ToMusic" src="NY/img/icon/ToMusicList.png" onclick="F_ToFriendList()">
	</div>
	<div class="ScrollClass">
		<ul>
		<c:forTokens var="item" items="0,1,2,3,4,5,6,7,8,9" delims=",">
		    <li >
				<div class="ThAndTi" id="search${item}">
					<div class="searchIframe" id="search${item}_iframe"></div>
		            <div id="textPart">
		            	<div class="text01" id="search${item}_text01"></div>
		            	<div class="text02" id="search${item}_text02"></div>
		            	<div class="text03" id="search${item}_text03"></div>
		            </div>
				</div>
			</li>
		</c:forTokens>	
			
		</ul>
	</div>
 <script src="https://code.jquery.com/jquery-3.6.0.js"
        integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script type="text/javascript">



function Search(){

    var SearchBtn = document.getElementById('search_Input').value;

    $.ajax({
        method: "GET",
        url: "https://www.googleapis.com/youtube/v3/search",
        data: { part: "snippet", maxResults:"10", q:SearchBtn, key :"AIzaSyDXeAzX5Ec2q8DE2b9pcHx-26u5inDMHVM"}
    })
    .done(function (msg) {
        console.log(msg);
        //alert("Data Saved: " + msg);
        for(var i = 0; i <= 9; i++) {
        	 $( "#search"+ i +"_iframe" ).empty().append( '<iframe width="560" height="315" src="https://www.youtube.com/embed/'+msg.items[i].id.videoId+'" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>' );
             //$( "#search01_img" ).empty().append( "<img src='"+msg.items[0].snippet.thumbnails.default.url+"'/>" );
             $( "#search"+ i +"_text01" ).empty().append( "<p>"+msg.items[i].snippet.title+"</p>" );
             $( "#search"+ i +"_text02" ).empty().append( "<p>"+msg.items[i].snippet.channelTitle+"</p>" );
             $( "#search"+ i +"_text03" ).empty().append( "<p>"+msg.items[i].snippet.description+"</p>" );
        }
        });
}
</script>
</body>
</html>