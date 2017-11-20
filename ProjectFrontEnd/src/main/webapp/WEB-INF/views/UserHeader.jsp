<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Provisional Store</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf=8">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" >
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>

.navbar {
  min-height: 80px;
}

.navbar-brand {
  padding: 0 15px;
  height: 80px;
  line-height: 80px;
}

.navbar-toggle {
  /* (80px - button height 34px) / 2 = 23px */
  margin-top: 23px;
  padding: 9px 10px !important;
}

@media (min-width: 768px) {
  .navbar-nav > li > a {
    /* (80px - line-height of 27px) / 2 = 26.5px */
    padding-top: 26.5px;
    padding-bottom: 26.5px;
    line-height: 27px;
  }
}

</style>

</head>
<body>
<nav id ="navbar-red" class="navbar navbar-inverse navbar-static-top" role="navigation">
<div class="container">
     
<ul class="nav navbar-nav">
  
<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-nav">
<span class="icon bar"></span>
<span class="icon bar"></span>
<span class="icon bar"></span>
<span class="icon bar"></span>
</button>
</ul>

    <div class="navbar-header">
      <a class="navbar-brand" href="index.jsp"><img src="resources/webshop.jpg"></a>
      
    </div>
<div class="collapse navbar-collapse" id="bs-example-nav">
	
<ul class="nav navbar-nav">
	
 <li><a href="index.jsp"><span class="glyphicon glyphicon-home"></span>Home</a></li>
 <li><a href="userHome"><i class="fa fa-product-hunt" aria-hidden="true"></i>Product List</a></li>
      
      
    </ul>
    <!-- <div class="collapse navbar-colapse" id="bs-example-navbar-1"> -->
    <ul class="nav navbar-nav navbar-right">  
    <li><a href="${pageContext.request.contextPath}/goToCart"><span class="glyphicon glyphicon-shopping-cart"></span>My cart</a></li>  
     <li><a href="account"><span class="glyphicon glyphicon-user"></span>Welcome ${sessionScope.username}</a></li>
     <li><a href="index.jsp"><i class="fa fa-sign-out" aria-hidden="true"></i>SignOut</a></li>
    </ul>

</div>
</div>
</nav>

</body>
</html>