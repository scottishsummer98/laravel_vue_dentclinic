<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Password Reset</title>

    <link rel="stylesheet" href="{{ asset('css/app.css') }}">
</head>

<body class="hold-transition login-page">
    <div class="login-box">
        <div class="card card-outline">
            <div class="card-header text-center">
                <a href="#" class="h4" style="text-decoration:none"><b>Reset Password</b></a>
            </div>
            <div class="card-body">
                <form method="POST" action="{{ route('password.email') }}">
                    @csrf
                    <div class="input-group mb-3">
                        <input placeholder="Email" id="email" type="email" class="form-control @error('email') is-invalid @enderror"
                                    name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>
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
                    <div class="row">
                        <div class="col-12">
                            <button type="submit" class="btn btn-primary">{{ __('Send Password Reset Link') }}</button>
                        </div>

                    </div>
                </form>
            </div>

        </div>
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