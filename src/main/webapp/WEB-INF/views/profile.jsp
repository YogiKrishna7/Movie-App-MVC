<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile Page</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/profile.css">
</head>

<body>
    <header>
        <a href="${pageContext.request.contextPath}/movieapp/home" class="logo">Logo</a>
        <div class="auth-buttons"></div>
    </header>

    <main>
        <section id="profile-area">
            <h1>User Profile</h1>
            <h4>Name: ${currentUser.getUsername()}</h4>
            <h4>Phone Number: ${currentUser.getPhoneNumber()}</h4>
            <h4>Email: ${currentUser.getEmail()}</h4>

            <button onclick="GotoBookingHistory()">Bookings</button>
        </section>

        <div id="action-buttons">
            <button>Edit</button>
            <button>Delete Account</button>
            <button onclick="GotoLogin()">Logout</button>
            <button onclick="GotoHome()">Back</button>
        </div>
    </main>

    <footer>
        <p>&copy; 2024 My Movie Booker</p>
    </footer>
</body>

<script>
function GotoBookingHistory(){
    window.location.href="/movieapp/booking-history";
}

function GotoLogin(){
    window.location.href="/movieapp/login";
}

function GotoHome(){
	window.location.href = '/movieapp/home';
}
</script>

</html>
