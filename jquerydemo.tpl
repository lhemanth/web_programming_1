<html>
<head>
  <title>JQuery Example Page</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script>
  $(document).ready(function() {
    $.getJSON("http://web-hemanthl.pythonanywhere.com/static/data.json", function(result) {
        $("#content").append("<ul>");
        $.each(result, function(i, field) {
            $("#content").append("<li>" + field["task"] + "</li>");
        });
        $("#content").append("</ul>");
    });
  })
  </script>
</head>
<body>
<h2> Sample Jquery Demo</h2>

<div id="content"></div>

</body>
</html>