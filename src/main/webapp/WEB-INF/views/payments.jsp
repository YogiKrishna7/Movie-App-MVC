<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Booking - Payment</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/payment.css">
</head>
<body>
    <header>
        <a href="${pageContext.request.contextPath}/movieapp/home" class="logo">Logo</a>
        <div class="nav-links">
            <input type="text" placeholder="Search Movie" aria-label="Search Movie">
            <input type="text" placeholder="Search Theatre" aria-label="Search Theatre">
        </div>
        <button class="profile-btn" onclick="GotoProfile()" aria-label="Go to Profile">Profile</button>
    </header>
    <main>
        <section class="payment-section">
            <h2 class="payment-title">Payment Price: &#8377;${totalPrice}</h2>
            <br>
            <form id="payment-form">
                <div class="form-group">
                    <label for="card-number">Card Number:</label>
                    <input type="text" id="card-number" required pattern="\d{16}" placeholder="1234 5678 9012 3456" aria-label="Card Number">
                </div>
                <div class="form-group">
                    <label for="cardholder-name">Cardholder Name:</label>
                    <input type="text" id="cardholder-name" required placeholder="John Doe" aria-label="Cardholder Name">
                </div>
                <div class="row">
                    <div class="form-group">
                        <label for="expiry">MM/YY:</label>
                        <input type="text" id="expiry" required pattern="\d{2}/\d{2}" placeholder="MM/YY" aria-label="Expiry Date">
                    </div>
                    <div class="form-group">
                        <label for="cvv">CVV:</label>
                        <input type="text" id="cvv" required pattern="\d{3}" placeholder="123" aria-label="CVV">
                    </div>
                </div>
                <div class="buttons-container">
                    <button type="button" class="button" onclick="handlePayment('${totalPrice}')">Pay</button>
                    <button type="button" class="button" onclick="GotoOrderSummary()">Cancel</button>
                </div>
            </form>
        </section>
    </main>
    <footer>
        <p>&copy; 2024 My Movie Booker</p>
    </footer>
    <script>
        function handlePayment(totalPrice) {
            const cardNumber = document.getElementById('card-number');
            const cardholderName = document.getElementById('cardholder-name');

            if (!cardNumber.checkValidity() || !cardholderName.checkValidity()) {
                alert('Please fill out all fields correctly.');
                return;
            }

            window.location.href = '/movieapp/payments/confirm/' + totalPrice;
        }

        function GotoOrderSummary() {
        	window.history.back();
        }

        function GotoProfile() {
            window.location.href = '/movieapp/profile';
        }
    </script>
</body>
</html>