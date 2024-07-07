<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<style>
	.erm {
	color: red;
	}
	</style>
    <title>N247</title>
  </head>
<body>

  	 <form action="loginAction" method="post" >
  	  <div class="modal-content">
  	    <div class="modal-header">
  	      <h5 class="modal-title" id="exampleModalLabel">Login</h5>	
  	      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
  	    </div>
  	    <div class="modal-body">    
           <div class="mb-3 row">
   			<label for="staticEmail" class="col-sm-2 col-form-label">Email</label>
   			 <div class="col-sm-10">
     			 <input type="text" name="id" class="form-control" id="staticEmail" value="email@example.com">
   		  	 </div>
 	       </div>
		   <div class="mb-3 row">
		   		<small class=erm >${errorMessage }</small>
			 <label for="inputPassword" class="col-sm-2 col-form-label">Password</label>
			  <div class="col-sm-10">
			   <input type="password" name="password" class="form-control" id="inputPassword">
			  </div>   
		   </div>
    	<div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
        <button type="submit" class="btn btn-primary">로그인</button>
      </div>
    </div>
  </div>
  </form>
  
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  
</body>


</html>
