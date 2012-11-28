

<!DOCTYPE HTML>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title></title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="css/bootstrap-responsive.css" rel="stylesheet">
	<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
	<script>
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
<style>
body
{
	background-image:url('img/Login.jpg');
}
</style>
<body>
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<div class="container-fluid">
	  <div class="row-fluid">
	    <div class="span2">
	      <!--Sidebar1 content-->
	    </div>
	    <div class="span4" style="padding-top:450px">
	      	<h2 style="color:#FFFFFF">Welcome to MyFlickr</h2>
			  <p style="font-size:20px;color:#FFFFFF">Explore a colorful life by photos</p>
			  <p>
			    <a class="btn btn-warning" href="Signup.jsp">
			      Sign up for MyFlickr
			    </a>
			  </p>
	    </div>
		<div class="span4" style="padding-top:450px">
	      	<form class="form-horizontal" action="/signin" name="signinform" method="post" onsubmit="return validateForm1()">
			  <div class="control-group">
			    <label class="control-label" for="inputEmail">Email</label>
			    <div class="controls">
			      <input type="text" id="inputEmail" name="email" placeholder="Email">
			    </div>
			  </div>
			  <div class="control-group">
			    <label class="control-label" for="inputPassword">Password</label>
			    <div class="controls">
			      <input type="password" id="inputPassword" name="password" placeholder="Password">
			    </div>
			  </div>
			  <div class="control-group">
			    <div class="controls">
			      <button type="submit" class="btn btn-primary">Sign in</button>
			    </div>
			  </div>
			</form>
	    </div>
		<div class="span2">
	      <!--Sidebar2 content-->
	    </div>
	  </div>
	</div>
	
</body>
</html>