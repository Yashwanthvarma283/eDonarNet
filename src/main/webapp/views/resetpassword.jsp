<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Change Password | eDonorNet</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="signup.css">
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
                    <h1 class="display-4 fw-bold">Update Your Password</h1>
                    <p class="lead">Secure your account by choosing a new, strong password.</p>
                    <div class="mt-4">
                        <div class="d-flex align-items-center mb-3">
                            <i class="fas fa-check-circle fa-2x me-3"></i>
                            <span>Keep your account safe</span>
                        </div>
                        <div class="d-flex align-items-center mb-3">
                            <i class="fas fa-check-circle fa-2x me-3"></i>
                            <span>Strong password policy</span>
                        </div>
                        <div class="d-flex align-items-center">
                            <i class="fas fa-check-circle fa-2x me-3"></i>
                            <span>Get back to saving lives</span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-6">
                <div class="auth-form h-100">
                    <h2 class="form-title">Change Your Password</h2>

                    <form id="changePasswordForm" action="/reset_password" method="post">

                        <div class="mb-3">
                            <label for="signupPassword" class="form-label">New Password</label>
                            <div class="input-group">
                                <input type="password" class="form-control" id="signupPassword" name="password"
                                       required>
                                <button class="btn btn-outline-secondary" type="button" id="toggleSignupPassword">
                                    <i class="far fa-eye"></i>
                                </button>
                            </div>
                            <small class="form-text d-block mt-2">
                                <a href="#" class="text-danger" data-bs-toggle="modal"
                                   data-bs-target="#passwordPolicyModal">About password policies</a>
                            </small>
                            <small id="passwordPolicyError" class="text-danger d-none">Password does not meet policy
                                requirements</small>
                        </div>
                        <div class="mb-3">
                            <label for="confirmPassword" class="form-label">Confirm New Password</label>
                            <div class="input-group">
                                <input type="password" class="form-control" id="confirmPassword"
                                       name="confirmpassword" required>
                                <button class="btn btn-outline-secondary" type="button" id="toggleConfirmPassword">
                                    <i class="far fa-eye"></i>
                                </button>
                            </div>
                            <small id="passwordMatchError" class="text-danger d-none">Passwords don't match</small>
                        </div>

                        <div class="mb-3 form-check">
                            <input type="checkbox" class="form-check-input" id="agreeTerms" required>
                            <label class="form-check-label" for="agreeTerms">
                                I confirm I want to change my password.
                            </label>
                        </div>

                        <button type="submit" id="changePasswordBtn" class="btn btn-primary w-100 py-2 mb-3"
                                disabled>Update Password</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="passwordPolicyModal" tabindex="-1" aria-labelledby="passwordPolicyModalLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="passwordPolicyModalLabel">Password Policies</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-.body">
                <ul>
                    <li>Min 8 characters</li>
                    <li>At least one capital letter (A-Z)</li>
                    <li>At least one small letter (a-z)</li>
                    <li>At least one number (0-9)</li>
                    <li>At least one special character (e.g., !@#$%^&*)</li>
                </ul>
                <p class="text-muted">Your password must meet all these criteria.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Got It</button>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<script>
    // Main function to check form validity
    function checkFormValidity() {
        // Get all form input values
        const password = document.getElementById('signupPassword').value;
        const confirmPassword = document.getElementById('confirmPassword').value;
        const termsChecked = document.getElementById('agreeTerms').checked;

        // Get error message elements
        const matchErrorElement = document.getElementById('passwordMatchError');
        const policyErrorElement = document.getElementById('passwordPolicyError');
        const submitBtn = document.getElementById('changePasswordBtn');

        // --- Validation Checks ---

        // 1. Check password policy
        const hasLength = password.length >= 8;
        const hasCapital = /[A-Z]/.test(password);
        const hasSmall = /[a-z]/.test(password);
        const hasNumber = /[0-9]/.test(password);
        const hasSpecial = /[^A-Za-z0-9]/.test(password);
        const isPolicyMet = hasLength && hasCapital && hasSmall && hasNumber && hasSpecial;

        // 2. Check if passwords match
        const passwordsMatch = password === confirmPassword;

        // --- UI Updates ---
        if (password.length > 0 && !isPolicyMet) {
            policyErrorElement.classList.remove('d-none');
        } else {
            policyErrorElement.classList.add('d-none');
        }

        if (confirmPassword.length > 0 && !passwordsMatch) {
            matchErrorElement.classList.remove('d-none');
        } else {
            matchErrorElement.classList.add('d-none');
        }

        // --- Final Button State (Token check is REMOVED) ---
        const allConditionsMet = isPolicyMet && passwordsMatch && termsChecked;
        submitBtn.disabled = !allConditionsMet;
    }

    // Setup password toggle visibility
    function setupPasswordToggle(toggleId, inputId) {
        const toggle = document.getElementById(toggleId);
        const input = document.getElementById(inputId);
        const icon = toggle.querySelector('i');

        toggle.addEventListener('click', function () {
            const type = input.getAttribute('type') === 'password' ? 'text' : 'password';
            input.setAttribute('type', type);
            icon.classList.toggle('fa-eye');
            icon.classList.toggle('fa-eye-slash');
            input.focus();
        });
    }

    // Add all event listeners when the document is loaded
    document.addEventListener('DOMContentLoaded', function () {

        // Setup password toggles
        setupPasswordToggle('toggleSignupPassword', 'signupPassword');
        setupPasswordToggle('toggleConfirmPassword', 'confirmPassword');

        // Add event listeners
        document.getElementById('signupPassword').addEventListener('input', checkFormValidity);
        document.getElementById('confirmPassword').addEventListener('input', checkFormValidity);

        // --- FIXED ---
        // The stray text "This will fail to compile" has been removed.
        document.getElementById('agreeTerms').addEventListener('change', checkFormValidity);

        // Run validation on page load
        checkFormValidity();
    });
</script>
</body>

</html>