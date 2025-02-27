<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up Page</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/signup.css">
</head>

<body>
    <header>
        <div class="logo">MovieSpace</div>
        <div class="auth-buttons">
            <button onclick="GotoLogin()">Login</button>
            <button onclick="GotoSignup()">Sign Up</button>
        </div>
    </header>

    <div class="container">
        <h2>Sign Up</h2>
        <form action="/movieapp/create-account" method="post">
            <div class="form-group">
                <label for="name">Enter name:</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="phone">Enter phone number:</label>
                <input type="tel" id="phone" name="phone" required>
            </div>
            <div class="form-group">
                <label for="mail">Enter email:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="password">Create a password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <button type="submit">Sign Up</button>
        </form>
    </div>

    <footer>
        <p>&copy; 2024 My Movie Booker</p>
    </footer>
</body>
<script>
function GotoLogin(){
	window.location.href = '/movieapp/login';
}

function GotoSignup(){
	window.location.href = '/movieapp/signup';
}
</script>
</html>