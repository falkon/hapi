<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<table>
    <tr>
        <td>Номер заявки</td>
        <td>{{ $application->id }}</td>
    </tr>
    <tr>
        <td>Дата создания</td>
        <td>{{ $application->created_at }}</td>
    </tr>
    <tr>
        <td>Телефон</td>
        <td>{{ $application->phone }}</td>
    </tr>
    <tr>
        <td>Категория</td>
        <td>{{ $application->reason }}</td>
    </tr>
    <tr>
        <td>Кому</td>
        <td>{{ $application->whom }}</td>
    </tr>
    <tr>
        <td>Повод</td>
        <td>{{ $application->reason }}</td>
    </tr>
    <tr>
        <td>Бюджет</td>
        <td>{{ $application->price }}</td>
    </tr>
    <tr>
        <td>Рост</td>
        <td>{{ $application->growth }}</td>
    </tr>
</table>
</body>
</html>