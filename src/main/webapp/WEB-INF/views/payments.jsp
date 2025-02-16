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
            <input type="text" placeholder="Search Movie">
            <input type="text" placeholder="Search Theatre">
        </div>
        <button class="profile-btn" onclick="GotoProfile()">Profile</button>
    </header>

    <main class="main-container">
        <div class="left-section">
            <div class="box"></div>
            <div class="info">Movie info</div>
        </div>
        <div class="payment-section">
            <h4>Select Payment Methods:</h4>
            <div class="payment-options">
                <button>Debit/Credit Card</button>
                <button>UPI</button>
            </div>
            <div class="payment-details">Card Fields to fill or UPI QR code, based on the Selection</div>
        </div>
    </main>

    <div class="buttons-container">
        <button class="button" onclick="GotoThankyou()">Pay</button>
        <button class="button" onclick="GotoOrderSummary()">Cancel</button>
    </div>

    <footer>
        <p>&copy; 2024 My Movie Booker</p>
    </footer>
</body>
<script>
function GotoThankyou(){
	window.location.href="/movieapp/thankyou-message";
}
function GotoOrderSummary(){
	window.location.href="/movieapp/order-summary";
}

function GotoProfile(){
	window.location.href="/movieapp/profile"
}
</script>
</html>