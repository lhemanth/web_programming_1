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
      <h2>Update Input</h2>
    </div>
    
   <form action="/update_task" method="POST">
      <p>
    <input type="text" size="100" maxlength="100" name="id" value="{{str(row['id'])}}" hidden/>
    <input type="text" class="w3-input" size="100" maxlength="100" name="updated_task" value="{{row['task']}}"/>
      </p>
      <p>     
  <input type="submit" class="w3-button w3-block w3-green" value="Save"/>
    </form>
  </div>
</div>

</body>
</html>
