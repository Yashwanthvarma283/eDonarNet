<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Updated Title -->
    <title>Request Blood | eDonorNet</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        :root {
            --primary: #e53935;
            --secondary: #1976d2;
            --light: #f8f9fa;
            --dark: #212529;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: var(--light);
        }

        .navbar {
            background-color: white;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            padding: 15px 0;
        }

        .navbar-brand {
            font-weight: 700;
            color: var(--primary) !important;
            font-size: 1.5rem;
        }

        .registration-header {
            background: linear-gradient(rgba(229, 57, 53, 0.9), rgba(229, 57, 53, 0.9));
            color: white;
            padding: 40px 0;
            margin-bottom: 30px;
        }

        .registration-card {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.05);
            margin-bottom: 30px;
        }

        .card-header {
            background-color: var(--primary);
            color: white;
            border-radius: 10px 10px 0 0 !important;
        }

        .btn-register {
            background-color: var(--primary);
            color: white;
            font-weight: 600;
        }

        .medical-section {
            border-left: 4px solid var(--primary);
            padding-left: 15px;
            margin: 25px 0;
        }
        .navbar {
            background-color: white;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            padding: 15px 0;
        }

        .navbar-brand {
            font-weight: 700;
            color: var(--primary) !important;
            font-size: 1.5rem;
        }

        .navbar-brand i {
            margin-right: 10px;
        }

        .nav-link {
            font-weight: 500;
            color: var(--dark) !important;
            margin: 0 10px;
            position: relative;
        }

        .nav-link.active, .nav-link:hover {
            color: var(--primary) !important;
        }

        .nav-link.active::after {
            content: '';
            position: absolute;
            bottom: -5px;
            left: 0;
            width: 100%;
            height: 2px;
            background-color: var(--primary);
        }

        .user-profile {
            display: flex;
            align-items: center;
        }

        .user-avatar {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            background-color: var(--primary);
            color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-right: 10px;
            font-weight: bold;
        }
        footer {
            background-color: var(--dark);
            color: white;
            padding: 40px 0 20px;
        }

        footer a {
            color: white;
            text-decoration: none;
            transition: color 0.3s;
        }

        footer a:hover {
            color: #adb5bd;
        }

        @media (max-width: 768px) {
            .hero-section {
                text-align: center;
                padding: 60px 0;
            }

            .hero-section .d-flex {
                justify-content: center;
            }

            .hero-section img {
                margin-top: 30px;
            }
        }
        .whatsapp {
            background-color: rgb(17, 245, 5);
            padding: 30px;
            position: fixed;
            bottom: 9%;
            right: 5%;
            border-radius: 50%;
            width: 55px;
            height: 55px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 30px;
            color: white;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
            transition: all 0.2s;
        }

        .whatsapp:hover {
            transform: scale(1.2);
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.3);
        }
    </style>
</head>

<body>
<nav class="navbar navbar-expand-lg navbar-light sticky-top">
    <div class="container">
        <a class="navbar-brand" href="#">
            <i class="fas fa-heartbeat"></i>eDonorNet
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link " href="/user/dashboard">My Dashboard</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/user/donor">Donor Registration</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="/user/recipient">Request Blood</a>
                </li>
                <li class="nav-item">
                    <div class="user-profile">
                        <div class="user-avatar">${logged_user.firstname.charAt(0)}${logged_user.lastname.charAt(0)}</div>
                        <span >${logged_user.firstname}</span>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</nav>

<section class="py-5" style="background-color: rgba(229, 57, 53, 0.05);">
    <div class="container text-center">
        <div class="feature-icon bg-danger bg-opacity-10 text-danger rounded-circle mx-auto mb-4">
            <!-- Changed icon to blood drop -->
            <i class="fas fa-tint fa-2x"></i>
        </div>
        <h1 class="display-5 fw-bold">Request Blood for a Patient</h1>
        <p class="lead text-muted">Please fill out the form below with the patient's details to find a matching
            donor.</p>
    </div>
</section>

<!-- Main Form: Adapted for Recipient Request -->
<section class="py-5">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-10">
                <div class="card shadow-sm border-0">
                    <div class="card-body p-4 p-md-5">
                        <h2 class="text-center mb-4">Patient & Blood Request Details</h2>

                        <form action="/request-blood" method="POST" class="row g-3" enctype="multipart/form-data">

                            <h4 class="mt-3 border-bottom pb-2">Patient Information</h4>
                            <div class="col-md-6">
                                <label for="patientName" class="form-label">Patient's Full Name</label>
                                <input type="text" class="form-control" id="patientName" name="patientName" placeholder="e.g., Jane Doe" required>
                            </div>
                            <div class="col-md-6">
                                <label for="patientAge" class="form-label">Patient's Age</label>
                                <input type="number" class="form-control" id="patientAge" name="patientAge" placeholder="e.g., 34" required>
                            </div>

                            <div class="col-md-4">
                                <label for="bloodGroup" class="form-label">Blood Group Needed</label>
                                <select id="bloodGroup" name="bloodGroup" class="form-select" required>
                                    <option value="" selected disabled>Choose...</option>
                                    <option value="A+">A+</option>
                                    <option value="A-">A-</option>
                                    <option value="B+">B+</option>
                                    <option value="B-">B-</option>
                                    <option value="AB+">AB+</option>
                                    <option value="AB-">AB-</option>
                                    <option value="O+">O+</option>
                                    <option value="O-">O-</option>
                                </select>
                            </div>

                            <div class="col-md-4">
                                <label for="units" class="form-label">Units of Blood Required</label>
                                <input type="number" class="form-control" id="units" name="units" min="1" placeholder="e.g., 2" required>
                            </div>

                            <div class="col-md-4">
                                <label for="reason" class="form-label">Reason for Request</label>
                                <input type="text" class="form-control" id="request_reason" name="request_reason" placeholder="e.g., Surgery, Accident" required>
                            </div>

                            <h4 class="mt-4 border-bottom pb-2">Contact & Location</h4>

                            <div class="col-md-6">
                                <label for="hospitalName" class="form-label">Hospital Name</label>
                                <input type="text" class="form-control" id="hospitalName" name="hospitalName" placeholder="e.g., City Hospital" required>
                            </div>

                            <div class="col-md-6">
                                <label for="hospitalCity" class="form-label">Hospital City</label>
                                <input type="text" class="form-control" id="hospitalCity" name="hospitalCity" required>
                            </div>

                            <div class="col-md-6">
                                <label for="state" class="form-label">State</label>
                                <select id="state" name="state" class="form-select" required>
                                    <option value="" selected disabled>Choose...</option>
                                    <option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
                                    <option value="Andhra Pradesh">Andhra Pradesh</option>
                                    <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                                    <option value="Assam">Assam</option>
                                    <option value="Bihar">Bihar</option>
                                    <option value="Chandigarh">Chandigarh</option>
                                    <option value="Chhattisgarh">Chhattisgarh</option>
                                    <option value="Dadra and Nagar Haveli and Daman and Diu">Dadra and Nagar Haveli and Daman and Diu</option>
                                    <option value="Delhi">Delhi</option>
                                    <option value="Goa">Goa</option>
                                    <option value="Gujarat">Gujarat</option>
                                    <option value="Haryana">Haryana</option>
                                    <option value="Himachal Pradesh">Himachal Pradesh</option>
                                    <option value="Jammu and Kashmir">Jammu and Kashmir</option>
                                    <option value="Jharkhand">Jharkhand</option>
                                    <option value="Karnataka">Karnataka</option>
                                    <option value="Kerala">Kerala</option>
                                    <option value="Ladakh">Ladakh</option>
                                    <option value="Lakshadweep">Lakshadweep</option>
                                    <option value="Madhya Pradesh">Madhya Pradesh</option>
                                    <option value="Maharashtra">Maharashtra</option>
                                    <option value="Manipur">Manipur</option>
                                    <option value="Meghalaya">Meghalaya</option>
                                    <option value="Mizoram">Mizoram</option>
                                    <option value="Nagaland">Nagaland</option>
                                    <option value="Odisha">Odisha</option>
                                    <option value="Puducherry">Puducherry</option>
                                    <option value="Punjab">Punjab</option>
                                    <option value="Rajasthan">Rajasthan</option>
                                    <option value="Sikkim">Sikkim</option>
                                    <option value="Tamil Nadu">Tamil Nadu</option>
                                    <option value="Telangana">Telangana</option>
                                    <option value="Tripura">Tripura</option>
                                    <option value="Uttar Pradesh">Uttar Pradesh</option>
                                    <option value="Uttarakhand">Uttarakhand</option>
                                    <option value="West Bengal">West Bengal</option>
                                </select>
                            </div>

                            <div class="col-md-6">
                                <label for="attendantName" class="form-label">Attendant's Contact Name</label>
                                <!-- Logged-in user's name can be pre-filled here -->
                                <input type="text" class="form-control" id="attendantName" name="attendantName" value="${logged_user.firstname} ${logged_user.lastname}" required>
                            </div>

                            <div class="col-md-6">
                                <label for="attendantPhone" class="form-label">Attendant's Contact Phone</label>
                                <input type="tel" class="form-control" id="attendantPhone" name="attendantPhone" placeholder="1234567890" required>
                            </div>

                            <div class="col-md-6">
                                <label for="doctorName" class="form-label">Doctor's Name (Optional)</label>
                                <input type="text" class="form-control" id="doctorName" name="doctorName" placeholder="e.g., Dr. Patel">
                            </div>

                            <h4 class="mt-4 border-bottom pb-2">Verification</h4>

                            <div class="col-12">
                                <label for="prescriptionUpload" class="form-label">Upload Doctor's Prescription / Request Form</label>
                                <input class="form-control" type="file" id="prescriptionUpload" name="prescriptionUpload" accept="image/*,.pdf" required>
                                <div class="form-text">A valid prescription or hospital request letter is **required** for verification.</div>
                            </div>

                            <div class="col-12 mt-4">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="consentCheck" required>
                                    <label class="form-check-label" for="consentCheck">
                                        I certify that this is a genuine medical request and all information provided is true and accurate.
                                    </label>
                                </div>
                            </div>

                            <div class="col-12 mt-4">
                                <button type="submit" class="btn btn-danger btn-lg w-100">Submit Blood Request</button>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- "What's Next" Section: Adapted for Recipient -->
<section class="py-5" style="background-color: rgba(229, 57, 53, 0.05);">
    <div class="container">
        <div class="row justify-content-center text-center">
            <div class="col-md-8">
                <h2 class="mb-3">What's Next?</h2>
                <p class="lead">Your request will be verified by our team. Once approved, we will send alerts to matching, available donors in your area who can then contact you.
                </p>
                <a href="/user/dashboard" class="btn btn-outline-danger mt-3">Back to My Dashboard</a>
            </div>
        </div>
    </div>
</section>

<a href="https://wa.me/919030726301" class="whatsapp">
    <i class="bi bi-whatsapp"></i>
</a>

<footer class="bg-dark text-white py-4">
    <div class="container">
        <div class="row">
            <div class="col-md-4 mb-4">
                <h5 class="mb-3">About eDonorNet</h5>
                <p>A digital platform connecting blood donors with recipients in need, making the donation process
                    efficient and life-saving.</p>
            </div>
            <div class="col-md-4 mb-4">
                <h5 class="mb-3">Quick Links</h5>
                <ul class="list-unstyled">
                    <li class="mb-2"><a href="/user/donor">Donor Registration</a></li>
                    <li class="mb-2"><a href="/user/recipient">Blood Request</a></li>
                    <li class="mb-2"><a href="/admin/login">Admin Dashboard</a></li>
                </ul>
            </div>
            <div class="col-md-4 mb-4">
                <h5 class="mb-3">Contact Us</h5>
                <p><i class="fas fa-phone me-2"></i> +91 9030726301</p>
                <p><i class="fas fa-envelope me-2"></i> edonarnet@gmail.com</p>
            </div>
        </div>
        <hr class="my-4">
        <div class="text-center">
            <p class="mb-0">&copy; 2025 eDonorNet.</p>
        </div>
    </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>