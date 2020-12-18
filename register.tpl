<!DOCTYPE html>
<html>
<head>
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
  <script src='//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'>
</script>
<script src='//cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.js'>
</script>
<script src="//cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js">
</script>
<script>
/* --- JavaScript --- */
$('form').validate();

$('#password, #repassword').on('keyup', function() {
  if ($('#password').val() == $('#repassword').val()) {
    $('#message').html('Matching').css('color', 'green');
    $('#submit').prop('disabled', false);
  } else {
    $('#message').html('Not Matching').css('color', 'red');
    $('#submit').prop('disabled', true);
  }
});
</script>
</head>
<body>

<form class="form" id="myform" action="/register" method="POST">

  
  
  
   <h1>Sign In</h1>
      <label for="username"><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="username" required>

      <label for="password"><b>Password</b></label>
      <input type="password" name="password" id="password" minlength=1 required />
      <label for="repassword"><b>Password</b></label>
       <input type="password" name="passwordConfirm" id="passwordConfirm"
      minlength=1 required />
      <span id="message"></span>
        <input type="submit" class="w3-button w3-block w3-blue" value="submit" id="submit" name="submit"/>
        <br>
  
</form>

<script src='//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'>
</script>
<script src='//cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.js'>
</script>
<script>
/* --- JavaScript --- */
$('form').validate();

$('#password, #passwordConfirm').on('keyup', function() {
  if ($('#password').val() == $('#passwordConfirm').val()) {
    $('#message').html('Matching').css('color', 'green');
    $('#submit').prop('disabled', false);
  } else {
    $('#message').html('Not Matching').css('color', 'red');
    $('#submit').prop('disabled', true);
  }
});
</script>

</body>

</html>