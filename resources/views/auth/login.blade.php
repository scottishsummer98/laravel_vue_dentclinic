<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin Panel Login</title>

    <link rel="stylesheet" href="{{ asset('css/app.css') }}">

</head>

<body class="hold-transition login-page">
<div id="app">
            <login-component />
</div>
    <script src="{{ asset('js/app.js') }}"></script>

</body>

</html>

<style>
    .login-page {
        background-image: linear-gradient(to right, darkgreen ,royalblue);
    }
    .card-outline {
        color: darkgreen
    }
</style>