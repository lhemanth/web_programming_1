<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>

body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
  border-radius: 25px;
}

/* Add a background color when the inputs get focus */
input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

h1{
text-align: center;
}





/* Add padding to container elements */
.container {
  padding: 16px;
}



/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  
  width: 80%; /* Could be more or less, depending on screen size */
}






</style>
<body>






 <form class="modal-content" action="/login" method="POST">
    <div class="container">
      <h1 style="align:centre">Sign In</h1>
      
      
      <label for="email"><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="username" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="password" required>
        <input type="submit" class="w3-button w3-block w3-blue" value="Save"/>
        <br>
          <a class="w3-button w3-block w3-red" href="http://web-hemanthl.pythonanywhere.com/register">Register</a>  

      </div>
    </div>
  </form>




</body>
</html>
