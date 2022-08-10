package com.inus.NY.controller;



import java.awt.Font;
import java.sql.Blob;
import java.util.Base64;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.inus.NY.profile.vo.profilelistVO;


@Controller

public class NYController {
	@Autowired
	SqlSession	sqlsession; 
	
	
	   @RequestMapping("/")
	   public ModelAndView index() {
		   ModelAndView mav = new ModelAndView();
		   mav.setViewName("index");
	      return mav;
	   }

	   @RequestMapping("/LOG_JOIN")
	   public String LOGINController() {
	      return "LoginLoinus";
	   }
	   @RequestMapping("/INUS")
	   public String INUSController() {	//이너스 소개페이지
	      return "INUS";
	   }

	   @RequestMapping("/SERVER")
	   public String RoomController() {
	      return "ServerPage";
	   }
	   @RequestMapping("/AddServer")
	   public String AddServerController() {
	      return "AddServerRoom";
	   }

	   @RequestMapping("/SET")
      public String SetController() {
         return "Set";
      }
//	   @RequestMapping("/MAIN")
//	   public String MAINController(ModelAndView modelAndView, profilelistVO pVo) {
//		   sqlsession.insert("profile_test.ImgInsert", pVo);
//		   byte imgArray [] =null;
//		   final String BASE_64_PREFIX = "data:image/png:base64,";
//		   try {
//			   String base64Url = String.valueof(param.get("image"));
//			   if(base64Url.startsWith(BASE_64_PREFIX)) {
//				   imgArray = Base64.getDecoder().decode(base64Url.substring(BASE_64_PREFIX.length()));
//				   System.out.println("\n");
//				   System.out.println(Font.YELLOW+"=========================="+Font.RESET);
//				   System.out.println("[DBApiController] : [saveImage]");
//				   System.out.println("[ImageArray] : "+ new String(imgArray));
//				   System.out.println(Font.YELLOW+"=========================="+Font.RESET);
//				   System.out.println("\n");
//			   
//			   }
//			   
//		   }
//		   catch(Exception e) {
//			   e.printStackTrace();
//		   }
//		   
//		 //blob 데이터를 byte로 변환 실시 [필요시 base64 인코딩 >>  data url 생성 가능]
//	        byte arr[] = blobToBytes((Blob) result.get("T_BLOB"));
//	        System.out.println("\n");
//	        System.out.println("=======================================");
//	        System.out.println("[DBApiController] : [selectImage]");
//	        System.out.println("[blobToBytes] : " + Arrays.toString(arr));
//	        System.out.println("=======================================");
//	        System.out.println("\n");
//
//	        //data url 리턴 실시
//	        if(arr.length > 0 && arr != null){ //데이터가 들어 있는 경우
//	            //바이트를 base64인코딩 실시
//	            String base64Encode = byteToBase64(arr);
//	            base64Encode = "data:image/png;base64," + base64Encode;
//	            System.out.println("\n");
//	            System.out.println("=======================================");
//	            System.out.println("[DBApiController] : [selectImage]");
//	            System.out.println("[base64Encode] : " + base64Encode);
//	            System.out.println("=======================================");
//	            System.out.println("\n");
//	            return base64Encode;
//	        }
//	        else {
//	            return "";
//	        }
//	    }
//
//	   		// [blob 데이터를 바이트로 변환해주는 메소드]
//		    private static byte[] blobToBytes(Blob blob) {
//		        BufferedInputStream is = null;
//		        byte[] bytes = null;
//		        try {
//		            is = new BufferedInputStream(blob.getBinaryStream());
//		            bytes = new byte[(int) blob.length()];
//		            int len = bytes.length;
//		            int offset = 0;
//		            int read = 0;
//	
//		            while (offset < len
//		                    && (read = is.read(bytes, offset, len - offset)) >= 0) {
//		                offset += read;
//		            }
//	
//		        } catch (Exception e) {
//		            e.printStackTrace();
//		        }
//		        return bytes;
//		    }
//		   ModelAndView mov = new ModelAndView();
//		   
//		   
//	      return "mainTest";
//	   }
}




