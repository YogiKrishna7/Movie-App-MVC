<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Profile</title>
</head>
<body>
    <h1>Edit Profile</h1>

    <!-- Display success or error messages -->
    <c:if test="${not empty message}">
        <p style="color: green;">${message}</p>
    </c:if>
    <c:if test="${not empty error}">
        <p style="color: red;">${error}</p>
    </c:if>

    <form action="${pageContext.request.contextPath}/movieapp/profile/update" method="POST">
        <input type="hidden" name="userId" value="${userId}" />

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required /><br><br>

        <label for="phone">Phone:</label>
        <input type="text" id="phone" name="phone" required /><br><br>

        <button type="submit">Update Profile</button>
    </form>

    <br>
    <a href="${pageContext.request.contextPath}/movieapp/home">Back to Home</a>
</body>
</html>