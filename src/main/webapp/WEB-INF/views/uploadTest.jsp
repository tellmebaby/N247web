<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
  <head>
   
  </head>
  <body>
 
<!--  <div class="container"> -->
 
<!--       <div class="py-5 text-center"> -->
<!--            <h2>게시판</h2> -->
<!--       </div> -->
    
      
<!--       <div style="margin:10% 10% 10% 10%;"> -->
<!--           파일첨부 -->
<!--          <form  action="file/upload" method="post"  enctype="multipart/form-data"> -->
<!--              <input type="file" name="file"/> -->
<!--              <input class="btn btn-primary btn-sm" type="submit" value="업로드"/> -->
<!--          </form> -->
<!--      </div> -->
<!--  </div> -->

	<form id="frm" name="frm" method="post" action="/mvc/register/action" enctype="multipart/form-data"> 
		<input type="file" name="file1" />
		<Button type="submit">전송</Button>
		<input type="hidden" name="up_userId" value="1">
		<input type="hidden" name="up_postId" value="0">
	</form>
 	<img src="/images/gucci.png">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

  </body>
</html>