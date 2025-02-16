<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Payment Methods</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/paymentMethods.css">
</head>

<body>
    <header>
        <a href="${pageContext.request.contextPath}/movieapp/home" class="logo">Logo</a>
    </header>

    <main>
        <section id="payment-methods-area">
            <h1>Payment Methods:</h1>
            <br>
            <br>
            <button>Add Payment Method</button>
            <button>Remove Payment Method</button>
            <button onclick="GotoProfile()">Back</button>
        </section>
    </main>

    <footer>
        <p>&copy; My Movie Booker</p>
    </footer>
</body>
<script>
function GotoProfile(){
	window.location.href="/movieapp/profile"
}
</script>
</html>