

<!DOCTYPE HTML>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title></title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="css/bootstrap-responsive.css" rel="stylesheet">
	<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
	<script>
	function validateForm()
	{
		var email=document.forms["signupform"]["inputEmail"].value;
		var userName=document.forms["signupform"]["inputUserName"].value;
		var password=document.forms["signupform"]["inputPassword"].value;
		if (email==null || email=="")
  		{
  			alert("Email must be filled out");
  			return false;
  		}
		if (userName==null || userName=="")
  		{
  			alert("Username must be filled out");
  			return false;
  		}
		if (password==null || password=="")
  		{
  			alert("Password must be filled out");
  			return false;
  		}
	}
	function validateForm1()
	{
		var email=document.forms["signinform"]["email"].value;
		var password=document.forms["signinform"]["password"].value;
		if (email==null || email=="")
  		{
  			alert("Email must be filled out");
  			return false;
  		}
		if (password==null || password=="")
  		{
  			alert("Password must be filled out");
  			return false;
  		}
	}
	</script>
	
</head>
<body>
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<div class="navbar navbar-inverse navbar-fixed-top" >
		<div class="navbar-inner">
			<div class="container">
			<form class="form-inlin navbar-form pull-right" name="signinform" action="/signin" method="post" onsubmit="return validateForm1()">
		  		<input type="text" class="input-small" name="email" placeholder="Email">
		  		<input type="password" class="input-small" name="password" placeholder="Password">
		  		<button type="submit" class="btn btn-small">Sign in</button>
			</form>
			</div>
		</div>		
	</div>
	<h1 class="text-info" style="padding-top:80px;margin:auto;width:70%;text-align:center;">Welcome to MyFlickr</h1>
	</br>
	</br>
	<div class="container-fluid">
	  <div class="row-fluid">
	    <div class="span6" style="padding-top:100px;padding-bottom:100px">
	      <img src="img/Signup.jpg" class="img-rounded">
	    </div>
	    <div class="span6" style="padding-top:200px;padding-bottom:200px">
	        <form class="form-horizontal" name="signupform" onsubmit="return validateForm()" action="/signup" method="post">
			  <div class="control-group">
			    <label class="control-label" for="inputEmail">Email</label>
			    <div class="controls">
			      <input type="text" id="inputEmail" name="inputEmail" placeholder="Email">
			    </div>
			  </div>
			  <div class="control-group">
			    <label class="control-label" for="inputUserName">User Name</label>
			    <div class="controls">
			      <input type="text" id="inputUserName" name="inputUserName" placeholder="User Name">
			    </div>
			  </div>
			  <div class="control-group">
			    <label class="control-label" for="inputPassword">Password</label>
			    <div class="controls">
			      <input type="password" id="inputPassword" name="inputPassword" placeholder="Password">
			    </div>
			  </div>
			  <div class="control-group">
			    <div class="controls">
			      <button type="submit" class="btn btn-warning">Sign up</button>
			    </div>
			  </div>
			</form>
	    </div>
	  </div>
	</div>
	

			
	    
</body>
</html>