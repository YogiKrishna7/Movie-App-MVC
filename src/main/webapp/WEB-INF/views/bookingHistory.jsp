<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking History</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/bookingHistory.css">
</head>

<body>
    <header>
        <a href="${pageContext.request.contextPath}/movieapp/dashboard" class="logo">Logo</a>
    </header>
    <main>
        <section id="history">
            <h1>Booking history:</h1>
            <br>
            <br>
            <button onclick="GotoProfile()">Back</button>
        </section>
    </main>
    <footer>
        <p>&copy; My Movie Booker</p>
    </footer>
</body>
<script type="text/javascript">
function GotoProfile(){
	window.location.href="/movieapp/profile"
}
</script>
</html>