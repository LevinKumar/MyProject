<%@ page language="java" contentType="text/html" import="com.model.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel='stylesheet'  type='text/css' />
<title>Signup Form</title>

<style>

body, html
{
    height: 100%;
    margin: 0;
}

.bg {
    
    background-image: url("resources/Signupin BG.jpg");    
    height: 100%;     
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}


</style>
<!-- <script type="text/javascript" language="javascript">
function formValidation()  
{  
var passid = document.registration.userPassword;  
var uname = document.registration.userName;  
var uadd = document.registration.userAddress;    
var uemail = document.registration.userEmail;  
var uphone=document.registration.userPhone;

if(allLetter(uname))  
{  
if(ValidateEmail(uemail)) 
{
if(passid_validation(passid,7,12)) 
{   
if(phonenumber(uphone))
{
if(alphabetic(uadd))  
{   
}
}  
}   
}  
}   
 
return false;  
} 


function passid_validation(passid,mx,my)  
{  
var passid_len = passid.value.length;  
if (passid_len == 0 ||passid_len >= my || passid_len < mx)  
{  
alert("Password should not be empty / length be between "+mx+" to "+my);  
passid.focus();  
return false;  
}  
return true;  
}  
function allLetter(uname)  
{   
var letters = /^[A-Za-z]+$/;  
if(uname.value.match(letters))  
{  
return true;  
}  
else  
{  
alert('Username must have alphabet characters only');  
uname.focus();  
return false;  
}  
}  
function alphabetic(uadd)  
{   
var letters = /^[A-Za-z]+$/; 
if(uadd.value.match(letters))  
{  
alert('Form Succesfully Submitted');  
window.location.reload()  
return true;  
}  
else  
{  
alert('User address must have alphabetic characters only');  
uadd.focus();  
return false;  
}  
}  

function phonenumber(uphone)  
{  
  var phoneno = /^\d{10}$/;  
  if((uphone.value.match(phoneno)))
        {  
      return true;  
        }  
      else  
        {  
        alert("UserPhoneNo must have numeric characters only");  
        return false;  
        }  
}  
  
function ValidateEmail(uemail)  
{  
var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;  
if(uemail.value.match(mailformat))  
{  
return true;  
}  
else  
{  
alert(" Empty/Invalid email address!");  
uemail.focus();  
return false;  
}  
} 

</script>  -->

</head>

<!-- <body onload="document.registration.username.focus();"> -->
<body>

<div class="bg">

<jsp:include page="header.jsp"></jsp:include>


 <div class="container">  
<h2><font color="black" >Registration Page</font></h2>

<%-- <form:form name='registration' onSubmit="return formValidation();"> --%>  
<form:form action="AddUser" modelAttribute="user"> 



	<div class="form-group">
	<div style="margin-bottom: 25px" class="input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>    
    <input id="userName" type="text" class="form-control" name="userName" value="" placeholder="username">                                        
    </div>
    </div>
	
	<div class="form-group">
	<div style="margin-bottom: 25px" class="input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>    
    <input id="userEmail" type="text" class="form-control" name="userEmail" value="" placeholder="Please enter your email">                                        
    </div>
    </div>
	
	<div class="form-group">
	<div style="margin-bottom: 25px" class="input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>    
    <input id="userPassword" type="password" class="form-control" name="userPassword" value="" placeholder="Please type the password">                                        
    </div>
    </div>
	
	<div class="form-group">
	<div style="margin-bottom: 25px" class="input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-phone-alt"></i></span>    
    <input id="userPhone" type="text" class="form-control" name="userPhone" value="" placeholder="Enter phone number">                                        
    </div>
    </div>
    
	<div class="form-group">
	<div style="margin-bottom: 25px" class="input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-map-marker"></i></span>    
    <input id="userAddress" type="text" class="form-control" name="userAddress" value="" placeholder="Enter address">                                        
    </div>
    </div>
    
    
	<br>
		<center>
	<!-- <button type="submit" class="btn btn-lg btn-info" onclick="formValidation()">Submit</button> -->
	<button type="submit" class="btn btn-lg btn-info">Submit</button>
	<button type="reset"  class="btn btn-lg btn-info">Cancel</button>
	</center>	
		



</form:form>
<%-- </form:form> --%>
</div> 
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>