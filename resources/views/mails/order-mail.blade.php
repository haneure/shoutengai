<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Order Confirmation</title>
</head>

<body>
    <p>Hi {{ $order->firstname }} {{ $order->lastname }}</p>
    <p>Your order has been successfully placed.</p>
    <br>
    <p>General Information:</p>
    <br>
    <table>
        <thead>
            <tr>
                <th>Name</th>
                <th>Address</th>
                <th>Phone</th>
                <th>Country</th>
                <th>Province</th>
                <th>City</th>
                <th>Zip</th>
            </tr>
        </thead>
        <tbody>
            <tr>


                <th>{{ $order->firstname }} {{ $order->lastname }}</th>
                <th>{{ $order->line1 }}
                    @if ($order->line2)
                        <br>{{ $order->line2 }}
                </th>
                @endif
                <th>{{ $order->phone }}</th>
                <th>{{ $order->country }} </th>
                <th>{{ $order->province }} </th>
                <th>{{ $order->city }} </th>
                <th>{{ $order->zipcode }} </th>
            </tr>
        </tbody>
    </table>

    <br>

    <table style="width: 600px; text-align:right;">
        <thead>
            <tr>
                <th>Image</th>
                <th>Name</th>
                <th>Quantity</th>
                <th>Price</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($order->orderItems as $item)
                <tr>
                    <td><img src="{{ asset('assets/images/products') }}/{{ $item->product->image }}" width="100">
                    </td>
                    <td>{{ $item->product->name }}</td>
                    <td>{{ $item->quantity }}</td>
                    <td>{{ $item->price * $item->quantity }}</td>
                </tr>
            @endforeach
            <tr>
                <td colspan="3" style="border-top:1px solid #ccc;"></td>
                <td style="font-size:15px;font-weight:bold;border-top:1px solid #ccc;">Subtotal:
                    ${{ $order->subtotal }}</td>
            </tr>
            <tr>
                <td colspan="3"></td>
                <td style="font-size:15px;font-weight:bold;">Tax: </td>
                <td>${{ $order->tax }}</td>
            </tr>
            <tr>
                <td colspan="3"></td>
                <td style="font-size:15px;font-weight:bold;">Shipping: </td>
                <td>Free Shipping</td>
            </tr>
            <tr>
                <td colspan="3"></td>
                <td style="font-size:15px;font-weight:bold;">Total: </td>
                <td>${{ $order->total }}</td>
            </tr>
        </tbody>
    </table>
    <br>
    <p>If you see notice mistakes, you can email us from <a href="{{ route('admin.contact') }}">here</a></p>
</body>

</html>
