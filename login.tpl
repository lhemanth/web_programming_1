<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>

body {font-family: 'Open Sans', sans-serif;}
input[type=text], input[type=password] {
  width:100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
  border-radius: 25px;
}
input[type=text]:focus, input[type=password]:focus {
	outline:none;
  background-color: #ddd;
}

h1{
text-align: center;
}
.form {
  background-color: #fefefe;
  margin: 5% auto 15% auto;
  width: 80%;
}
</style>
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
