/**
 * 

 
 
 type : post body json
url : http://localhost:1231/MAIN
 */
data : 

{
  "idx": "1",
  "image" : "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGAAAABgCAMAAADVRocKAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAzUExURQAAABAgMBggOBUgNRgcOBYdNhgdOBceNxYeOBceNxYeOBcfNxcdOBceNxceOBceNxceOLFQWucAAAAQdFJOUwAQIDBAUGBwgI+fr7/P3+8jGoKKAAAACXBIWXMAAA7DAAAOwwHHb6hkAAAByklEQVRoQ+3Y0XKDIBAF0BCxARHw/7+2E71OTcKyumw7feA8JndujEKA3Lqu67q/ZaybY84xeItXVBmflx/+jpe1vNY/ebyjwwTUHkSDNxUMCaUv8oC3m5mIyjdZ6TuU7s8mItHIoa7AIdLEvI+fg6wxWitfYFkmhFoUR9AuI9RgRBXhCzG56h3SuEfkGN3MiMkRk2zX/hCqz1jjAyqzYIWYHHOLEmJyM5oI7T9HHk2E9mHKTLQRsQbVp6yxJEzoKgoItTDoKtFZNX97walMBa2NhSF+LlTWs9VQHElZYYjuShuXqLt7fKB2l53ixm5ljvMhz9qb39Xo57TkFMOoffXdv2Dsw/vwPKOlOUzOqR7T7qOLn3M5Tg+VsWpdZdlPrYdBU2vfhIbdqf04WpYF2QOxzIblKF3/GsPJq9/Fax/xee7mXfn5tuyjLTm/AAkuf3Py74X3teWCU5/wJb3+pxN36d7Svyz8k2YOfRz+Jl2YXiX8gYQ5k3H4MxuCYqihISeGGhpyYqihISeGGhpyYqihISeGGhpyYqihISeGGhpyYqihISeGGhpyYqihISeGGhpyYqihISeGGhpyYqihISeGmq7ruk7R7fYNxnmhp0mQS0oAAAAASUVORK5CYII"
}
 
 
 function requestGet(){
      var urlData = "http://localhost:7000/selectImage";
      var contentData = "idx=1";
      console.log("");
      console.log("[requestGet] : [start]");
      console.log("[request url] : " + urlData);
      console.log("[request data] : " + contentData);
      console.log("[request format] : " + urlData+"?"+contentData);
      console.log("[request method] : " + "GET");
      console.log("");

      $.ajax({
        /* 요청 시작 부분 */
        url: urlData, //주소
        data: { //전송 데이터
          "idx" : 1
        },
        type: "GET", //전송 타입
        async: true, //비동기 여부
        dataType: "TEXT", //응답받을 데이터 타입 (XML,JSON,TEXT,HTML)

        /* 응답 확인 부분 */
        success: function(response) {
          console.log("");
          console.log("[requestGet] : [result]");
          console.log("[response] : " + response);
          console.log("");

          // 정상적으로 리턴된 data url 있는 경우 src 에 표시 실시
          if(response.length > 0 && response != null){
            document.getElementById("preview-image").src = response;
          }
        },

        /* 에러 확인 부분 */
        error: function(xhr) {
          console.log("");
          console.log("[requestGet] : [result]");
          console.log("[error] : " + xhr);
          console.log("");
        },

        /* 완료 확인 부분 */
        complete:function(data,textStatus) {
          console.log("");
          console.log("[requestGet] : [result]");
          console.log("[complete] : " + textStatus);
          console.log("");
        }
      });
    };