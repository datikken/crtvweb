<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>CRTVWEB</title>

        @vite(['resources/css/app.css', 'resources/js/app.js'])
    </head>
<body>
    <h1>Done</h1>
    <img src="{{ asset('sunflowers.jpeg') }}" alt="">
</body>
</html>
