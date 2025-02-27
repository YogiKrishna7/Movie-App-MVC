<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/index.css">
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
        <h2>Login</h2>
        <form action="/movieapp/auth" method="post">
            <div class="form-group">
                <label for="phone">Enter your phone number</label>
                <input type="text" id="phone" name="phone" required>
            </div>
            <div class="form-group">
                <label for="password">Enter your password</label>
                <input type="password" id="password" name="password" required>
            </div>
            <button type="submit">Login</button>
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
