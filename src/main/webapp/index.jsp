<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
     <style>
       /* Dark theme CSS for navbar */

/* Navbar background and text color */
.navbar {
  background-color: #343a40; /* Dark gray background */
}

.navbar-brand,
.navbar-nav .nav-link {
  color: #fff !important; /* White text */
}

/* Active link color */
.navbar-nav .nav-link.active {
  color: #ffc107 !important; /* Yellow for active link */
}

/* Toggler icon color */
.navbar-toggler-icon {
  background-color: #fff; /* White toggler icon */
}

/* Dropdown menu background and text color */
.dropdown-menu {
  background-color: #343a40; /* Dark gray background */
}

.dropdown-menu a {
  color: #fff !important; /* White text */
}

.dropdown-menu a:hover {
  background-color: #495057; /* Dark gray on hover */
  color: #ffc107 !important; /* Yellow on hover */
}

/* Search form styles */
.navbar form {
  margin-left: auto; /* Push search form to the right */
}

.navbar form input[type="search"] {
  background-color: #495057; /* Dark gray background */
  border-color: #6c757d; /* Border color */
  color: #fff; /* White text */
}

.navbar form input[type="search"]::placeholder {
  color: #ced4da; /* Lighter gray placeholder text */
}

.navbar form button[type="submit"] {
  background-color: #ffc107; /* Yellow button */
  color: #212529; /* Dark gray text */
  border-color: #ffc107; /* Yellow border */
}

.navbar form button[type="submit"]:hover {
  background-color: #ffca28; /* Lighter yellow on hover */
  border-color: #ffca28; /* Lighter yellow border on hover */
}
       
       
       /* Dark theme CSS */

/* Body and container background */
body, .container {
  background-color: #212529; /* Dark gray background */
  color: #fff; /* White text */
}

/* Card styles */
.card {
  background-color: #343a40; /* Darker gray background */
  border-radius: 10px;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
  padding: 30px;
  text-align: center;
}

/* Image styles */
.card img {
  border-radius: 50%;
  width: 200px;
  height: 200px;
  object-fit: cover;
  margin-bottom: 20px;
}

/* Heading styles */
.card h1 {
  color: #ffc107; /* Yellow heading text */
  font-size: 2.5em;
  text-transform: uppercase;
  margin-bottom: 20px;
}

/* Button styles */
.card button {
  background-color: #ffc107; /* Yellow button */
  color: #212529; /* Dark gray text */
  padding: 10px 20px;
  border-radius: 5px;
  font-size: 1.2em;
  border: none;
  cursor: pointer;
  transition: background-color 0.3s ease;
}

.card button:hover {
  background-color: #ffca28; /* Lighter yellow on hover */
}
       
     </style>
    	<%@include file="all.jsp" %>
    <title>Note Taker : Home Page</title>
  </head>
  <body>
       
       <div class="container bg-dark">    
       <!---fluid p-0 m-0  -->
           	<%@include file="navbar.jsp" %>
           	<br>
           	
           	
  <div class="row">
      <div class="card bg-dark text-white ">
        <div class="grey">
          <div class="card py-5 black">
           	   <img alt="Deadpool" class="img-fluid mx-auto" style="max-width:400px" src="img/dead.jpg">
           	   <h1 class="text-primary tet-uppercase text-center mt=3">Taking Your Notes Peanut!</h1>
           	    <div class="container text-center">
             <a href="add.jsp" class="btn btn-outline-primary text-center">Start here</a>
           </div>
           	</div>
           	<div class="container mt-5">
        </div>
      </div>
          
           	
       </div>
  </body>
</html>
