<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="static/pagestyle.css"  type="text/css" media="all" />
</head>

<body>

 <form class="form" action="/login" method="POST">
    <div class="container">
      <h1>Sign In</h1>
      <label for="username"><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="username" required>

      <label for="password"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="password" required>
        <input type="submit" class="w3-button w3-block w3-blue" value="Save"/>
        <br>
          <a class="w3-button w3-block w3-red" href="http://web-hemanthl.pythonanywhere.com/register">Register</a>

      </div>
    </div>
  </form>
</body>
</html>
