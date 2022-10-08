<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin Panel Registration</title>

    <link rel="stylesheet" href="{{ asset('css/app.css') }}">

</head>

<body class="hold-transition register-page">
<div id="app">
            <register-component />
</div>
    <script src="{{ asset('js/app.js') }}"></script>

</body>

</html>

<style>
    .register-page {
        background-image: linear-gradient(to right, darkgreen ,royalblue);
    }
    .card-outline {
        color: darkgreen
    }
</style>