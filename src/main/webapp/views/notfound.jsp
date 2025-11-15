<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Account Not Found | eDonorNet</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="notfound.css">

</head>
<body>
<div class="container">
    <div class="auth-container">
        <button class="back-button" onclick="window.location.href='/user/signin'">
            <i class="fas fa-arrow-left"></i>
        </button>

        <div class="row g-0">
            <!-- Left Side - Image/Info -->
            <div class="col-lg-6 d-none d-lg-block">
                <div class="auth-image h-100">
                    <h1 class="display-4 fw-bold">Account Not Found</h1>
                    <p class="lead">Let's get you registered as a donor.</p>
                    <div class="mt-4">
                        <div class="d-flex align-items-center mb-3">
                            <i class="fas fa-check-circle fa-2x me-3"></i>
                            <span>Your donation can save lives</span>
                        </div>
                        <div class="d-flex align-items-center mb-3">
                            <i class="fas fa-check-circle fa-2x me-3"></i>
                            <span>Quick and easy registration</span>
                        </div>
                        <div class="d-flex align-items-center">
                            <i class="fas fa-check-circle fa-2x me-3"></i>
                            <span>Join our community of life-savers</span>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Right Side - Error Message -->
            <div class="col-lg-6">
                <div class="auth-form h-100 d-flex flex-column justify-content-center">
                    <div class="text-center">
                        <div class="error-icon">
                            <i class="fas fa-user-slash"></i>
                        </div>
                        <h2 class="mb-3">Account Not Found</h2>
                        <p class="mb-4">We couldn't find an account with that email address.</p>

                        <div class="d-grid gap-3">
                            <a href="/signup" class="btn btn-primary py-2">
                                <i class="fas fa-user-plus me-2"></i> Create New Account
                            </a>
                            <a href="/signin" class="btn btn-outline-primary py-2">
                                <i class="fas fa-redo me-2"></i> Try Different Email
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>