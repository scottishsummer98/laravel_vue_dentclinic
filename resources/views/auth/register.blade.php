<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin Panel Registration</title>

    <link rel="stylesheet" href="{{ asset('css/app.css') }}">

</head>

<body class="hold-transition register-page">
    <div class="register-box">
        <div class="card card-outline">
            <div class="card-header text-center">
                <a href="{{ route('register') }}" class="h4" style="text-decoration:none;"><b>Registration</b></a>
            </div>
            <div class="card-body">
                <form method="POST" action="{{ route('register') }}">
                    @csrf
                    <div class="input-group mb-4">
                        <input placeholder="Full Name" id="name" type="text" class="form-control @error('name') is-invalid @enderror"
                            name="name" value="{{ old('name') }}" required autocomplete="name" autofocus>
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <span class="fas fa-user"></span>
                            </div>
                        </div>
                        @error('name')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                        @enderror
                    </div>
                    <div class="input-group mb-4">
                        <input placeholder="Email Address" id="email" type="email" class="form-control @error('email') is-invalid @enderror"
                            name="email" value="{{ old('email') }}" required autocomplete="email">
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <span class="fas fa-envelope"></span>
                            </div>
                        </div>
                        @error('email')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                        @enderror
                    </div>
                    <div class="input-group mb-4">
                        <input placeholder="Password" id="password" type="password"
                            class="form-control @error('password') is-invalid @enderror" name="password" required
                            autocomplete="new-password">
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <span class="fas fa-lock"></span>
                            </div>
                        </div>
                        @error('password')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                        @enderror
                    </div>
                    <div class="input-group mb-4">
                        <input placeholder="Retype Password" id="password-confirm" type="password" class="form-control"
                        name="password_confirmation" required autocomplete="new-password">
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <span class="fas fa-lock"></span>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-8">
                        </div>
                        <div class="col-4">
                            <button type="submit" class="btn btn-success">{{ __('Register') }}</button>
                        </div>
            
                    </div>
                </form>
                <div class="social-auth-links text-center">
                    <a href="{{ route('login') }}" class="btn btn-block btn-primary">
                        Already Registered?
                    </a>
                </div>
            </div>

        </div>
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