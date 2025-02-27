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
        <a href="${pageContext.request.contextPath}/movieapp/home" class="logo">MovieSpace</a>
        <div class="auth-buttons"></div>
    </header>

    <main>
        <section id="profile-area">
            <h1>User Profile</h1>
            <h4>Name: ${currentUser.getUsername().toUpperCase()}</h4>
            <h4>Phone Number: ${currentUser.getPhoneNumber()}</h4>
            <h4>Email: ${currentUser.getEmail()}</h4>

            <button onclick="GotoBookingHistory(${currentUser.getId()})">Bookings</button>
        </section>

        <div id="action-buttons">
            <button onclick="GotoEdit()">Edit</button>
            <button onclick="GotoLogin()">Logout</button>
            <button onclick="GotoHome()">Back</button>
        </div>
    </main>

    <footer>
        <p>&copy; 2024 My Movie Booker</p>
    </footer>
</body>

<script>
function GotoEdit(){
	window.location.href="/movieapp/profile/edit";
}
function GotoBookingHistory(userId){
    window.location.href="/movieapp/booking-history/" + userId;
}

function GotoLogin(){
    window.location.href="/movieapp/logout";
}

function GotoHome(){
	window.history.back();
}

</script>

</html>
