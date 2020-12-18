<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="http://web-hemanthl.pythonanywhere.com/static/pagestyle.css">

</head>
<body>

<form class="form" id="myform" action="/register" method="POST">




   <h1>Sign Up</h1>
      <label for="username"><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="username" required><br>

      <label for="password"><b>Password</b></label>
      <input type="password" name="password" id="password" minlength=1 placeholder="Enter Password" required />
      <label for="repassword"><b>Re-type Password</b></label>
       <input type="password" name="repassword" id="repassword" placeholder="Enter Password" minlength=1 required />
      <span id="message"></span>
        <input type="submit" class="w3-button w3-block w3-blue" value="Submit" id="submit" name="submit" disabled/>
        <br>

          <a class="w3-button w3-block w3-red" href="http://web-hemanthl.pythonanywhere.com/">Login</a>
</form>

<script src='//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'>
</script>
<script src='//cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.js'>
</script>
<script>
/* --- JavaScript --- */
$('form').validate();

$('#password, #repassword').on('keyup', function() {
  if ($('#password').val() == $('#repassword').val()) {
    $('#message').html('Password Matching').css('color', 'green');
    $('#submit').prop('disabled', false);
  } else {
    $('#message').html('Password Not Matching').css('color', 'red');
    $('#submit').prop('disabled', true);
  }
});
</script>

</body>

</html>