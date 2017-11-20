<%@ page language="java" contentType="text/html" import="com.model.Product" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
 .panel
        {
          margin: 5%;
          background: transparent;
        }


        tr
        {
          transition: all 0.5s;
        }
        tr:hover
        {
          background-color: #f0ad4e;
          transition: 0.5s;
        }
        .btn-warning
        {
          transition: all 0.8s;
        }

        .btn-warning:hover, .btn-warning:focus
        {
          transition: 0.8s;
          background-color: #428bca;
          border-color: #428bca;
        }

        .panel-footer
        {
          background-color: #5bc0de;
          color: white;
        }
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Store</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf=8">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" >
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<!-- <script>
$(document).ready(function(){
    $(".form-control").popover({title: "Search Here", placement: "top"});
   })
</script> -->
<body>
<jsp:include page="header.jsp"></jsp:include>
<h3><i>Welcome</i></h3>

<div class="container-fluid">
    <div class="panel panel-success">
      <div class="panel-heading">
        <div class="row">
          <div class="col-xs-12 col-sm-12 col-md-3">
            <h2 class="text-center pull-left" style="padding-left: 30px;"><span class="glyphicon glyphicon-list-alt"></span>Product Details </h2>
          </div>
          <div class="col-xs-9 col-sm-9 col-md-9">
            <div class="col-xs-12 col-sm-12 col-md-12">
              <div class="col-xs-12 col-md-4">
                <div class="form-group">
                  <div class="input-group">
                    <div class="input-group-btn">
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="panel-body table-responsive">
        <table class="table table-hover">
          <thead>
            <tr bgcolor="#f0ad4e">
              <th class="text-left"> Product Name </th>
              <th class="text-left"> Price </th>
              <th class="text-left"> Category </th>
              <th class="text-left"> Stock</th>
              <th class="text-left"> Photo</th>
            </tr>
          </thead>

          <tbody>
           <c:forEach items="${productList}" var="product">
	<tr bgcolor="cyan">
		<td>${product.productName}</td>
		<td>${product.price}</td>
		<td>${product.catName}</td>
		<td>${product.stock}</td>
		<td>
			<a href="viewerproductDesc/${product.productId}">
			<img src="<c:url value="resources/images/${product.productId}.jpg"/>" width="150px" height="150px">
			</a>
		</td>
	</tr>
</c:forEach>

            
          </tbody>
        </table>
      </div>

      
      </div>
    </div>
  </div>
	</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>