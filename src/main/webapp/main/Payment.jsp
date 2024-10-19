<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Page</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Custom styles */
        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
        }

        .header {
            background-color: #e9ecef;
            padding: 20px;
            border-bottom: 1px solid #ccc;
        }

        .header h3 {
            margin: 0;
        }

        .header .staff-options {
            float: right;
        }

        .staff-options a {
            margin-left: 10px;
        }

        .form-container {
            max-width: 700px;
            margin: 50px auto;
            padding: 30px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1);
        }

        .form-label {
            font-size: 1.1rem;
            font-weight: bold;
        }

        .btn-pay {
            width: 100%;
            font-size: 1.2rem;
            padding: 10px;
        }
    </style>
</head>
<body>

    <!-- Header -->
    <div class="header">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <h3></h3>
                </div>
                <div class="col-md-4 text-center">
                    <h3>PAYMENT DETAILS</h3>
                </div>
                <div class="col-md-4 text-end staff-options">
                    <h5></h5>
                    <a href="#" class="btn btn-outline-secondary btn-sm">Logout</a>
                    <a href="#" class="btn btn-outline-secondary btn-sm">Settings</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Payment Form -->
    <div class="container">
        <div class="form-container">
            <form id="paymentForm">
                <div class="mb-3">
                    <label for="transactionId" class="form-label">Transaction ID:</label>
                    <input type="text" class="form-control" id="transactionId" placeholder="Enter Transaction ID">
                </div>

                <div class="mb-3">
                    <label for="paymentMode" class="form-label">Payment Mode:</label>
                    <select class="form-select" id="paymentMode">
                        <option value="upi">UPI</option>
                        <option value="netbanking">Netbanking</option>
                    </select>
                </div>

                <div class="mb-3">
                    <label for="payerName" class="form-label">Payer's Name:</label>
                    <input type="text" class="form-control" id="payerName" placeholder="Enter Payer's Name">
                </div>

                <div class="mb-3 text-center">
                    <button type="submit" class="btn btn-primary btn-pay">PAY</button>
                </div>
            </form>
        </div>
    </div>

    <!-- Modal for Success -->
    <div class="modal fade" id="paymentSuccessModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Payment Successful</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    Your payment was successfully processed!
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Custom JS -->
    <script>
        // Form submission event
        document.getElementById('paymentForm').addEventListener('submit', function(e) {
            e.preventDefault(); // Prevent actual form submission

            // Show success modal after payment
            var successModal = new bootstrap.Modal(document.getElementById('paymentSuccessModal'));
            successModal.show();
        });
    </script>
</body>
</html>
