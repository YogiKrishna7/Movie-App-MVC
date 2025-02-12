<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Booking - Thank You</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/thankYou.css">
</head>

<body>
    <header>
        <a href="${pageContext.request.contextPath}/movieapp/dashboard" class="logo">Logo</a>
        <div class="nav-links">
            <input type="text" placeholder="Search Movie">
            <input type="text" placeholder="Search Theatre">
        </div>
        <button class="profile-btn" onclick="GotoProfile()">Profile</button>
    </header>

    <main>
        <h2 class="thank-you-message">Thank You for Your Booking!</h2>
        <button class="home-button" onclick="GotoHome()">Go to Home</button>
    </main>

    <footer>
        <p>&copy; 2024 My Movie Booker</p>
    </footer>
</body>
<script type="text/javascript">
function GotoHome(){
	window.location.href = '/movieapp/dashboard';
}

function GotoProfile(){
	window.location.href="/movieapp/profile"
}
</script>
</html>