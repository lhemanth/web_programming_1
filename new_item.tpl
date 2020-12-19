<!DOCTYPE html>
<html>
<title>Adding Item</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>

<div class="w3-container">
<br/>

  <div class="w3-card-4">
    <div class="w3-container w3-teal">
      <h2>Add item Here</h2>
    </div>

    <form class="w3-container" action="/new_item" method="POST">
      <p>
      <label>Name</label>
      <input class="w3-input" type="text" name="new_task"/>
      </p>
      <p>
  <input type="submit" class="w3-button w3-block w3-green" value="Save"/>
    </form>
  </div>
</div>

</body>
</html>
