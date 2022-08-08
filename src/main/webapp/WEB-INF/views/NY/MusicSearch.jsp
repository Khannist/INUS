<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<<<<<<< HEAD
<link href="ny/css/musicSearchcss.css" rel="stylesheet">
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
=======
<link href="NY/css/MusicSearch.css" rel="stylesheet">
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
			<li >
				<div class="ThAndTi" id="search01">
					<div class="searchIframe" id="search01_iframe"></div>
		            <div id="textPart">
		            	<div class="text01" id="search01_text01"></div>
		            	<div class="text02" id="search01_text02"></div>
		            	<div class="text03" id="search01_text03"></div>
		            </div>
				</div>
			</li>
			<li >
				<div class="ThAndTi" id="search02">
					<div class="searchIframe" id="search02_iframe"></div>
		            <div id="textPart">
		            	<div class="text01" id="search02_text01"></div>
		            	<div class="text02" id="search02_text02"></div>
		            	<div class="text03" id="search02_text03"></div>
		            </div>
				</div>
			</li>
			<li>
				<div class="ThAndTi" id="search03">
					<div class="searchIframe" id="search03_iframe"></div>
		            <div id="textPart">
		            	<div class="text01" id="search03_text01"></div>
		            	<div class="text02" id="search03_text02"></div>
		            	<div class="text03" id="search03_text03"></div>
		            </div>
				</div>
			</li>
			<li >
				<div class="ThAndTi" id="search04">
					<div class="searchIframe" id="search04_iframe"></div>
		            <div id="textPart">
		            	<div class="text01" id="search04_text01"></div>
		            	<div class="text02" id="search04_text02"></div>
		            	<div class="text03" id="search04_text03"></div>
		            </div>
				</div>
			</li>
			<li >
				<div class="ThAndTi" id="search05">
					<div class="searchIframe" id="search05_iframe"></div>
		            <div id="textPart">
		            	<div class="text01" id="search05_text01"></div>
		            	<div class="text02" id="search05_text02"></div>
		            	<div class="text03" id="search05_text03"></div>
		            </div>
				</div>
			</li>
			<li >
				<div class="ThAndTi" id="search06">
					<div class="searchIframe" id="search06_iframe"></div>
		            <div id="textPart">
		            	<div class="text01" id="search06_text01"></div>
		            	<div class="text02" id="search06_text02"></div>
		            	<div class="text03" id="search06_text03"></div>
		            </div>
				</div>
			</li>
			<li >
				<div class="ThAndTi" id="search07">
					<div class="searchIframe" id="search07_iframe"></div>
		            <div id="textPart">
		            	<div class="text01" id="search07_text01"></div>
		            	<div class="text02" id="search07_text02"></div>
		            	<div class="text03" id="search07_text03"></div>
		            </div>
				</div>
			</li>
			<li >
				<div class="ThAndTi" id="search08">
					<div class="searchIframe" id="search08_iframe"></div>
		            <div id="textPart">
		            	<div class="text01" id="search08_text01"></div>
		            	<div class="text02" id="search08_text02"></div>
		            	<div class="text03" id="search08_text03"></div>
		            </div>
				</div>
			</li>
			<li >
				<div class="ThAndTi" id="search09">
					<div class="searchIframe" id="search09_iframe"></div>
		            <div id="textPart">
		            	<div class="text01" id="search09_text01"></div>
		            	<div class="text02" id="search09_text02"></div>
		            	<div class="text03" id="search09_text03"></div>
		            </div>
				</div>
			</li>
			<li >
				<div class="ThAndTi" id="search10">
					<div class="searchIframe" id="search10_iframe"></div>
		            <div id="textPart">
		            	<div class="text01" id="search10_text01"></div>
		            	<div class="text02" id="search10_text02"></div>
		            	<div class="text03" id="search10_text03"></div>
		            </div>
				</div>
			</li>
		</ul>
	</div>
>>>>>>> INUS/NY
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
        $( "#search01_iframe" ).append( '<iframe width="560" height="315" src="https://www.youtube.com/embed/'+msg.items[0].id.videoId+'" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>' );
        //$( "#search01_img" ).append( "<img src='"+msg.items[0].snippet.thumbnails.default.url+"'/>" );
        $( "#search01_text01" ).append( "<p>"+msg.items[0].snippet.title+"</p>" );
        $( "#search01_text02" ).append( "<p>"+msg.items[0].snippet.channelTitle+"</p>" );
        $( "#search01_text03" ).append( "<p>"+msg.items[0].snippet.description+"</p>" );
        
        $( "#search02_iframe" ).append( '<iframe width="560" height="315" src="https://www.youtube.com/embed/'+msg.items[1].id.videoId+'" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>' );
        //$( "#search02_img" ).append( "<img src='"+msg.items[1].snippet.thumbnails.default.url+"'/>" );
        $( "#search02_text01" ).append( "<p>"+msg.items[1].snippet.title+"</p>" );
        $( "#search02_text02" ).append( "<p>"+msg.items[1].snippet.channelTitle+"</p>" );
        $( "#search02_text03" ).append( "<p>"+msg.items[1].snippet.description+"</p>" );
        
        $( "#search03_iframe" ).append( '<iframe width="560" height="315" src="https://www.youtube.com/embed/'+msg.items[2].id.videoId+'" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>' );
        //$( "#search03_img" ).append( "<img src='"+msg.items[2].snippet.thumbnails.default.url+"'/>" );
        $( "#search03_text01" ).append( "<p>"+msg.items[2].snippet.title+"</p>" );
        $( "#search03_text02" ).append( "<p>"+msg.items[2].snippet.channelTitle+"</p>" );
        $( "#search03_text03" ).append( "<p>"+msg.items[2].snippet.description+"</p>" );
        
        $( "#search04_iframe" ).append( '<iframe width="560" height="315" src="https://www.youtube.com/embed/'+msg.items[3].id.videoId+'" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>' );
        //$( "#search04_img" ).append( "<img src='"+msg.items[3].snippet.thumbnails.default.url+"'/>" );
        $( "#search04_text01" ).append( "<p>"+msg.items[3].snippet.title+"</p>" );
        $( "#search04_text02" ).append( "<p>"+msg.items[3].snippet.channelTitle+"</p>" );
        $( "#search04_text03" ).append( "<p>"+msg.items[3].snippet.description+"</p>" );
        
        $( "#search05_iframe" ).append( '<iframe width="560" height="315" src="https://www.youtube.com/embed/'+msg.items[4].id.videoId+'" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>' );
        //$( "#search05_img" ).append( "<img src='"+msg.items[4].snippet.thumbnails.default.url+"'/>" );
        $( "#search05_text01" ).append( "<p>"+msg.items[4].snippet.title+"</p>" );
        $( "#search05_text02" ).append( "<p>"+msg.items[4].snippet.channelTitle+"</p>" );
        $( "#search05_text03" ).append( "<p>"+msg.items[4].snippet.description+"</p>" );
        
        $( "#search06_iframe" ).append( '<iframe width="560" height="315" src="https://www.youtube.com/embed/'+msg.items[5].id.videoId+'" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>' );
        //$( "#search06_img" ).append( "<img src='"+msg.items[5].snippet.thumbnails.default.url+"'/>" );
        $( "#search06_text01" ).append( "<p>"+msg.items[5].snippet.title+"</p>" );
        $( "#search06_text02" ).append( "<p>"+msg.items[5].snippet.channelTitle+"</p>" );
        $( "#search06_text03" ).append( "<p>"+msg.items[5].snippet.description+"</p>" );
        
        $( "#search07_iframe" ).append( '<iframe width="560" height="315" src="https://www.youtube.com/embed/'+msg.items[6].id.videoId+'" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>' );
        //$( "#search07_img" ).append( "<img src='"+msg.items[6].snippet.thumbnails.default.url+"'/>" );
        $( "#search07_text01" ).append( "<p>"+msg.items[6].snippet.title+"</p>" );
        $( "#search07_text02" ).append( "<p>"+msg.items[6].snippet.channelTitle+"</p>" );
        $( "#search07_text03" ).append( "<p>"+msg.items[6].snippet.description+"</p>" );
        
        $( "#search08_iframe" ).append( '<iframe width="560" height="315" src="https://www.youtube.com/embed/'+msg.items[7].id.videoId+'" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>' );
        //$( "#search08_img" ).append( "<img src='"+msg.items[7].snippet.thumbnails.default.url+"'/>" );
        $( "#search08_text01" ).append( "<p>"+msg.items[7].snippet.title+"</p>" );
        $( "#search08_text02" ).append( "<p>"+msg.items[7].snippet.channelTitle+"</p>" );
        $( "#search08_text03" ).append( "<p>"+msg.items[7].snippet.description+"</p>" );
        
        $( "#search09_iframe" ).append( '<iframe width="560" height="315" src="https://www.youtube.com/embed/'+msg.items[8].id.videoId+'" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>' );
        //$( "#search09_img" ).append( "<img src='"+msg.items[8].snippet.thumbnails.default.url+"'/>" );
        $( "#search09_text01" ).append( "<p>"+msg.items[8].snippet.title+"</p>" );
        $( "#search09_text02" ).append( "<p>"+msg.items[8].snippet.channelTitle+"</p>" );
        $( "#search09_text03" ).append( "<p>"+msg.items[8].snippet.description+"</p>" );
        
        $( "#search10_iframe" ).append( '<iframe width="560" height="315" src="https://www.youtube.com/embed/'+msg.items[9].id.videoId+'" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>' );
        //$( "#search10_img" ).append( "<img src='"+msg.items[9].snippet.thumbnails.default.url+"'/>" );
        $( "#search10_text01" ).append( "<p>"+msg.items[9].snippet.title+"</p>" );
        $( "#search10_text02" ).append( "<p>"+msg.items[9].snippet.channelTitle+"</p>" );
        $( "#search10_text03" ).append( "<p>"+msg.items[9].snippet.description+"</p>" );
    });
}
</script>
</body>
</html>