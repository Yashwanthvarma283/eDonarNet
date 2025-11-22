<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login | eDonorNet</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="signin.css">
</head>
<body>
<div class="container">
    <div class="auth-container">
        <button class="back-button" onclick="window.location.href='/'">
            <i class="fas fa-arrow-left"></i>
        </button>

        <div class="row g-0">
            <div class="col-lg-6 d-none d-lg-block">
                <div class="auth-image h-100">
                    <h1 class="display-4 fw-bold">Welcome to eDonorNet</h1>
                    <p class="lead">Join our community of life-savers. Your blood donation can save up to 3 lives.</p>
                    <div class="mt-4">
                        <div class="d-flex align-items-center mb-3">
                            <i class="fas fa-check-circle fa-2x me-3"></i>
                            <span>Register as a blood donor in minutes</span>
                        </div>
                        <div class="d-flex align-items-center mb-3">
                            <i class="fas fa-check-circle fa-2x me-3"></i>
                            <span>Get notified when your blood type is needed</span>
                        </div>
                        <div class="d-flex align-items-center">
                            <i class="fas fa-check-circle fa-2x me-3"></i>
                            <span>Track your donation history and impact</span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-6">
                <div class="auth-form h-100">
                    <div id="loginForm">
                        <h2 class="form-title">Log In</h2>
                        <form action="/validate_user" method="post">
                            <div class="mb-3">
                                <label for="loginEmail" class="form-label">Email</label>
                                <input type="email" class="form-control" id="email" name="email" required>
                            </div>
                            <div class="mb-3">
                                <label for="loginPassword" class="form-label">Password</label>
                                <input type="password" class="form-control" id="password" name="password" required>
                            </div>
                            <div class="mb-3 form-check">
                                <input type="checkbox" class="form-check-input" id="rememberMe" onclick="(password.type=(password.type==='password'?'text':'password'))">
                                <label class="form-check-label" for="rememberMe">Show Password</label>
                                <a href="/forget" class="float-end">Forgot password?</a>
                            </div>
                            <button type="submit" class="btn btn-primary w-100 py-2 mb-3">Log In</button>
                        </form>

                        <p class="text-center">Don't have an account?
                            <a class="text-danger" href="/signup">Sign Up</a>
                        </p>
                    </div>


                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>