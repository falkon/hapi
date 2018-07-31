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
            <td>Номер заказа</td>
            <td>{{ $order->id }}</td>
        </tr>
        <tr>
            <td>Дата создания</td>
            <td>{{ $order->created_at }}</td>
        </tr>
        <tr>
            <td>Имя</td>
            <td>{{ $order->name }}</td>
        </tr>

        <tr>
            <td>Телефон</td>
            <td>{{ $order->phone }}</td>
        </tr>
        <tr>
            <td>Заказ</td>
            <td>
                <table>
                    @foreach($arrayProducts as $product)
                        <tr>
                            <td>Название</td>
                            <td>{{ $product->name }}</td>
                        </tr>
                        <tr>
                            <td>Количество</td>
                            <td> {{ $product->count }}</td>

                        </tr>
                        <tr>
                            <td>Цена</td>
                            <td> {{ $product->price* $product->count }}</td>
                        </tr>
                        <tr>
                            <td>Скидка</td>
                            <td> {{ $product->discount }}</td>
                        </tr>
                    @endforeach
                </table>
            </td>
        </tr>
        <tr>
            <td>Цена</td>
            <td>{{ $order->fullPrice }}</td>
        </tr>
    </table>
</body>
</html>