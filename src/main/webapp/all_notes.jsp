<%@page import="lulu.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="help.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Notes: Note Taker</title>
<%@include file="all.jsp" %>
</head>
<body>
      <div class="container">
            	<%@include file="navbar.jsp" %>
            	<br>
            	<h1 class="text-uppercase">All Notes</h1>
            	
            	<div class="row">
            	   <div class="col-12">
            	       <%
            	        Session s = HibernateUtil.getFactory().openSession();
            	        Query q = s.createQuery("from Note");
            	        List<Note> l = q.list();
            	 	    for(Note n:l){
            	 	    %>
            	 	    	
      	    	<div class="card mt-3">
                        <img src="img/notepad.png" class="card-img-top margin-4 mx-auto" style="max-width: 100px" alt="Notepad">
                 <div class="card-body px-5">
                   <h5 class="card-title"><%=n.getTitle() %></h5>
                    <p class="card-text"><%=n.getContent()%></p>
                    <p><b class="text-primary"><%= n.getAddedDate() %></b></p>
  				    <div class="container text-center mt-5">
  				      <a href="DeleteServlet?note_id=<%=n.getId() %>" class="btn btn-danger">Delete</a>
  				    <a href="edit.jsp?note_id=<%=n.getId() %>" class="btn btn-primary">Update</a>
  				    </div>
 		    	  </div>
				</div>	
            	 	    <%
            	        }
            	        s.close();
            			%>
            	   </div>
            	</div>
            	
      </div>
</body>
</html>