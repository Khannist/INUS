<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/musicSearchcss.css" rel="stylesheet">
</head>
<body>
<div class="MusicSearch">
	<div></div>
	<input type="text" class="SearchInput" id="search_Input" value="검색어를 입력해주세요">
    <input type="button" class="SearchInput" id="search_Button" onclick="Search()"> 
	<img class="ToIMG" id="ToMusic" src="img/NY/icon/ToMusicList.png" onclick="F_ToMusicList()">
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
 <script src="https://code.jquery.com/jquery-3.6.0.js"
        integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script type="text/javascript">



function Search(){

    var SearchBtn = document.getElementById('search_Input').value;

    $.ajax({
        method: "GET",
        url: "https://www.googleapis.com/youtube/v3/search",
        data: { part: "snippet", maxResults:"10", q:SearchBtn, key :"AIzaSyBLGX74Zs1Yx0xUG_miWKA5Pz0As9mkz0o"}
    })
    .done(function (msg) {
        console.log(msg);
        //console.log(msg.items[0].snippet.title);
        //console.log(msg.items[0].snippet.thumbnails.default.url);
        //alert("Data Saved: " + msg);
        $( "#num1_th" ).empty.append( "<img src='"+msg.items[0].snippet.thumbnails.default.url+"'/>" );
        $( "#num1_title" ).empty.append( "<strong>"+msg.items[0].snippet.title+"</strong>" );
        //$( "#num1_video" ).empty.append( "<strong>"+msg.items[0].snippet.title+"</strong>" );
        $( "#num2_th" ).empty.append( "<img src='"+msg.items[1].snippet.thumbnails.default.url+"'/>" );
        $( "#num2_title" ).empty.append( "<strong>"+msg.items[1].snippet.title+"</strong>" );
        $( "#num3_th" ).empty.append( "<img src='"+msg.items[2].snippet.thumbnails.default.url+"'/>" );
        $( "#num3_title" ).empty.append( "<strong>"+msg.items[2].snippet.title+"</strong>" );
        $( "#num4_th" ).empty.append( "<img src='"+msg.items[3].snippet.thumbnails.default.url+"'/>" );
        $( "#num4_title" ).empty.append( "<strong>"+msg.items[3].snippet.title+"</strong>" );
        $( "#num5_th" ).empty.append( "<img src='"+msg.items[4].snippet.thumbnails.default.url+"'/>" );
        $( "#num5_title" ).empty.append( "<strong>"+msg.items[4].snippet.title+"</strong>" );
        $( "#num6_th" ).empty.append( "<img src='"+msg.items[5].snippet.thumbnails.default.url+"'/>" );
        $( "#num6_title" ).empty.append( "<strong>"+msg.items[5].snippet.title+"</strong>" );
        $( "#num7_th" ).empty.append( "<img src='"+msg.items[6].snippet.thumbnails.default.url+"'/>" );
        $( "#num7_title" ).empty.append( "<strong>"+msg.items[6].snippet.title+"</strong>" );
        $( "#num8_th" ).empty.append( "<img src='"+msg.items[7].snippet.thumbnails.default.url+"'/>" );
        $( "#num8_title" ).empty.append( "<strong>"+msg.items[7].snippet.title+"</strong>" );
        $( "#num9_th" ).empty.append( "<img src='"+msg.items[8].snippet.thumbnails.default.url+"'/>" );
        $( "#num9_title" ).empty.append( "<strong>"+msg.items[8].snippet.title+"</strong>" );
        $( "#num10_th" ).empty.append( "<img src='"+msg.items[9].snippet.thumbnails.default.url+"'/>" );
        $( "#num10_title" ).empty.append( "<strong>"+msg.items[9].snippet.title+"</strong>" ); 
        
    });


}

</script>
</div>
</body>
</html>