<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Загрузка excel</title>
</head>
<body>
<form action="/excel-download" method="post" enctype="multipart/form-data">
    <input type="file" name="file">
    {{ csrf_field() }}
    <input type="submit" name="Загрузить">
</form>
</body>
</html>