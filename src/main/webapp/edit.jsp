<%@page import="lulu.Note"%>
<%@page import="org.hibernate.Session"%>
<%@page import="help.HibernateUtil"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Note Taker : Edit Page</title>
<%@include file="all.jsp" %>
</head>
<body>

		<div class="container">    
       <!---fluid p-0 m-0  -->
           	<%@include file="navbar.jsp" %>
           	<h1>Note Taker : Edit Page</h1>
           	<h2>Edit Your Note!</h2>
           	<br>
        </div>
        
        <%
          
        int noteId = Integer.parseInt(request.getParameter("note_id").trim());
        Session s = HibernateUtil.getFactory().openSession();
		Note n = s.get(Note.class, noteId);
        
        %>
        
        <form action="UpdateServlet" method="post">
            <input value="<%=n.getId()%>" name="noteid" type="hidden"/>
            <div class="mb-3">
               <label 
               for="title" 
               class="form-label">Note Title</label>
  			   <input 
  			   type="text" 
  			   class="form-control" 
  			   required="required" 
  			   id="title" 
  			   aria-describedby="emailHelp" 
  			   placeholder="Enter your title here"
  			   name="title"
  			   value="<%=n.getTitle() %>">
  			 </div>
 			 <div class="mb-3">
   				 <label 
   				 for="content" 
   				 class="content">Note Content</label>
                 <textarea 
                 id="content" 
                 required="required" 
                 placeholder="Enter Your Content Here..." 
                 class="form-control" 
                 style="height:300px"
                 name="content"<%= n.getContent()%>
                 >
                 </textarea>
  			</div>
  			
 		    <div class="container text-center">
 		       	 <button type="submit" class="btn btn-success">Save Your Note</button>
 		    </div>
 		
		</form>

</body>
</html>