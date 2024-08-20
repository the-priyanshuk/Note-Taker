<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="all.jsp" %>
<link href="style2.css" rel="StyleSheet">
<title>Add Notes</title>
</head>
<body>
<div class="container">
           	<%@include file="navbar.jsp" %>
           	<h2 class="text-white">Please Fill Your Note Details!</h2>
           	<br>
           	
           	<!-- This is add form -->
      	<form action="SaveNote" method="post">
            <div class="mb-3">
               <label 
               for="title" 
               class="form-label text-white">Note Title :</label>
  			   <input 
  			   type="text" 
  			   class="form-control black " 
  			   required="required" 
  			   id="title" 
  			   aria-describedby="emailHelp" 
  			   placeholder="Enter your title here..."
  			   name="title">
  			 </div>
 			 <div class="mb-3">
   				 <label 
   				 for="content" 
   				 class="content text-white">Note Content :</label><textarea 
                 id="content" 
                 required="required" 
                 placeholder="Enter Your Content Here..." 
                 class="form-control black" 
                 style="height:300px"
                 name="content">
                 </textarea>
  			</div>
  			
 		    <div class="container text-center">
 		       	 <button type="submit" class="btn btn-primary">Add</button>
 		    </div>
 		
		</form>
           	
       </div>
</body>
</html>
