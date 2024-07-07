<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
  <head>
   
  </head>
  <body>
 
<div class="container">
 
  <div class="py-5 text-center">
     <h2>게시판</h2>
  </div>
 
    <h3>파일이 업로드 되었습니다.</h3>
    <span>${file.originalFilename}</span>
    <span>${file.contentType}</span>
 </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

  </body>
</html>