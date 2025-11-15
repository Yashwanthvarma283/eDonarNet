<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Incorrect Password | eDonorNet</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="incorrect.css">
</head>
<body>
<div class="container">
    <div class="auth-container">
        <div class="row g-0">
            <div class="col-lg-6 d-none d-lg-block">
                <div class="auth-image h-100">
                    <h1 class="display-4 fw-bold">Password Issue</h1>
                    <p class="lead">Let's get you back into your account.</p>
                    <div class="mt-4">
                        <div class="d-flex align-items-center mb-3">
                            <i class="fas fa-check-circle fa-2x me-3"></i>
                            <span>Secure password reset process</span>
                        </div>
                        <div class="d-flex align-items-center mb-3">
                            <i class="fas fa-check-circle fa-2x me-3"></i>
                            <span>Instant email confirmation</span>
                        </div>
                        <div class="d-flex align-items-center">
                            <i class="fas fa-check-circle fa-2x me-3"></i>
                            <span>Back to saving lives in minutes</span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-6">
                <div class="auth-form h-100 d-flex flex-column justify-content-center">
                    <div class="text-center">
                        <div class="error-icon">
                            <i class="fas fa-lock"></i>
                        </div>
                        <h2 class="mb-3">Incorrect Password</h2>
                        <p class="mb-4">The password you entered doesn't match our records.</p>

                        <div class="d-grid gap-3">
                            <a href="/forget" class="btn btn-primary py-2">
                                <i class="fas fa-key me-2"></i> Reset Password
                            </a>
                            <a href="/signin" class="btn btn-outline-primary py-2">
                                <i class="fas fa-sign-in-alt me-2"></i> Try Again
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>