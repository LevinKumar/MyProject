<html lang="en"><head>  
<meta charset="utf-8">  
<title>JavaScript Form Validation using a sample registration form</title>  
<meta name="keywords" content="example, JavaScript Form Validation, Sample registration form" />  
<meta name="description" content="This document is an example of JavaScript Form Validation using a sample registration form. " />  
<link rel='stylesheet'  type='text/css' />  
<style>
h1 {  
margin-left: 70px;  
}  
form li {  
list-style: none;  
margin-bottom: 5px;  
}  
  
form ul li label{  
float: left;  
clear: left;  
width: 100px;  
text-align: right;  
margin-right: 10px;  
font-family:Verdana, Arial, Helvetica, sans-serif;  
font-size:14px;  
}  
  
form ul li input, select, span {  
float: left;  
margin-bottom: 10px;  
}  
  
form textarea {  
float: left;  
width: 350px;  
height: 150px;  
}  
  
[type="submit"] {  
clear: left;  
margin: 20px 0 0 230px;  
font-size:18px  
}  
  
p {  
margin-left: 70px;  
font-weight: bold;  
}  
</style>
<script>
function formValidation()  
{  
var passid = document.registration.passid;  
var uname = document.registration.username;  
var uadd = document.registration.address;    
var uemail = document.registration.email;  
var uphone=document.registration.phonenum;

if(allLetter(uname))  
{  
if(ValidateEmail(uemail)) 
{
if(passid_validation(passid,7,12)) 
{   
if(phonenumber(uphone))
{
if(alphanumeric(uadd))  
{   
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



function alphanumeric(uadd)  
{   
var letters = /^[0-9a-zA-Z]+$/;  
if(uadd.value.match(letters))  
{  
alert('Form Succesfully Submitted');  
window.location.reload()  
return true;  
}  
else  
{  
alert('User address must have alphanumeric characters only');  
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
        alert("UserPhoneNo must have 10 numeric characters only");  
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
alert("You have entered an invalid email address!");  
uemail.focus();  
return false;  
}  
} 

}



</script>  
</head>  
<body onload="document.registration.username.focus();">  
<h1>Registration Form</h1>  
<p>Use tab keys to move from one input field to the next.</p>  
<form name='registration' onSubmit="return formValidation();">  
<ul>
<li><label for="username">Name:</label></li>  
<li><input type="text" name="username" size="50" /></li>  

<li><label for="email">Email:</label></li>  
<li><input type="text" name="email" size="50" /></li>    

<li><label for="passid">Password:</label></li>  
<li><input type="password" name="passid" size="12" /></li>  

<li><label for="phonenum">PhoneNo:</label></li>  
<li><input type="text" name="phonenum" size="10" /></li>  

<li><label for="address">Address:</label></li>  
<li><input type="text" name="address" size="50" /></li>
  

 
<li><input type="submit" name="submit" value="Submit" /></li>  
</ul>  
</form>  
</body>  
</html>  