<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin Panel Login</title>

    <link rel="stylesheet" href="{{ asset('css/app.css') }}">

</head>

<body class="hold-transition login-page">
    <div class="login-box">

        <div class="card card-outline">
            <div class="card-header text-center">
                <a href="{{ route('login') }}" class="h4" style="text-decoration:none"><b>Login</b></a>
            </div>
            <div class="card-body">
                <form action="{{ route('login') }}" method="post">
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
                    <div class="input-group mb-3">
                        <input placeholder="Password" id="password" type="password"
                                    class="form-control @error('password') is-invalid @enderror" name="password" required
                                    autocomplete="current-password">
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
                    <div class="row">
                        <div class="col-8">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" name="remember" id="remember" {{
                                    old('remember') ? 'checked' : '' }}>
    
                                <label class="form-check-label" for="remember">
                                    {{ __('Remember Me') }}
                                </label>
                            </div>
                        </div>
    
                        <div class="col-4">
                            <button type="submit" class="btn btn-success btn-block">{{ __('Login') }}</button>
                        </div>
    
                    </div>
                </form>
                <div class="social-auth-links text-center mt-2 mb-3">
                    {{-- <a href="#" class="btn btn-block btn-primary">
                        <i class="fab fa-facebook mr-2"></i> Sign in using Facebook
                    </a>
                    <a href="#" class="btn btn-block btn-danger">
                        <i class="fab fa-google-plus mr-2"></i> Sign in using Google+
                    </a> --}}
                    <a class="btn btn-block btn-primary" href="{{ route('register') }}">
                        {{ __('Haven\'t Registered Yet?') }}
                    </a>
                    @if (Route::has('password.request'))
                    <a class="btn btn-block btn-danger" href="{{ route('password.request') }}">
                        {{ __('Forgot Your Password?') }}
                    </a>
                    @endif
                    
                </div>
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