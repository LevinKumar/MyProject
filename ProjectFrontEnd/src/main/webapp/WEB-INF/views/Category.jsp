<%@ page language="java" contentType="text/html" import="com.model.Category"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
table, td, th {    
    border: 1px solid #ddd;
    text-align: left;
}

table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    padding: 15px;
}
tr:hover{background-color:#f5f5f5}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Furniture Category</title>
</head>
<body>

<jsp:include page="AdminHeader.jsp"></jsp:include>





<div class="container-fluid">
    <div class="panel panel-success">
      <div class="panel-heading">
        <div class="row">
          <div class="col-xs-12 col-sm-12 col-md-3">
            <h2 class="text-center pull-left" style="padding-left: 30px;"><span class="glyphicon glyphicon-list-alt"></span>Category List </h2>
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
              <th class="text-left"> Category ID </th>
              <th class="text-left"> Category Name</th>
              <th class="text-left"> Category Description</th>
              <th class="text-left"> Operation</th>
            </tr>
          </thead>
          
<tbody>
<c:forEach items="${categoryList}" var="category">
	<tr bgcolor="cyan">
		<td>${category.catId}</td>
		<td>${category.catName}</td>
		<td>${category.catDesc}</td>
		<td>
			<a href="<c:url value="deleteCategory/${category.catId}"/>">DELETE</a>/
			<a href="<c:url value="updateCategory/${category.catId}"/>">UPDATE</a>
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