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
        <a href="${pageContext.request.contextPath}/movieapp/dashboard" class="logo">Logo</a>
        <div class="auth-buttons">
        </div>
    </header>

    <main>
        <section id="profile-area">
            <h1>User Profile</h1>
            <h4>Name: </h4>
            <h4>Phone Number: </h4>
            <h4>Email: </h4>

            <button>Bookings</button>
            <button>Payment Methods</button>
        </section>

        <div id="action-buttons">
            <button>Edit</button>
            <button>Delete Account</button>
            <button>Logout</button>
        </div>
    </main>

    <footer>
        <p>&copy; 2024 My Movie Booker</p>
    </footer>
</body>

</html>