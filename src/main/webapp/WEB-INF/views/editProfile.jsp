<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Profile</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/editProfile.css">
</head>
<body>
    <header>
        <a href="${pageContext.request.contextPath}/movieapp/home" class="logo">MovieSpace</a>
        <div class="auth-buttons"></div>
    </header>

    <main>
        <div id="edit-profile-container">
            <h1>Edit Profile</h1>

            <c:if test="${not empty message}">
                <p class="message success">${message}</p>
            </c:if>
            <c:if test="${not empty error}">
                <p class="message error">${error}</p>
            </c:if>

            <form action="${pageContext.request.contextPath}/movieapp/profile/update" method="POST">
                <input type="hidden" name="userId" value="${userId}" />

                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required />
                </div>

                <div class="form-group">
                    <label for="phone">Phone:</label>
                    <input type="text" id="phone" name="phone" required />
                </div>

                <button type="submit">Update Profile</button>
            </form>
        </div>

        <div id="action-buttons">
            <button onclick="GotoHome()">Back To Home</button>
        </div>
    </main>

    <footer>
        <p>&copy; 2024 My Movie Booker</p>
    </footer>
</body>

<script>
function GotoHome(){
    window.location.href = "/movieapp/home";
}
</script>

</html>
