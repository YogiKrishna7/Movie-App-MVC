<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Booking - Home</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/moviesInTheatre.css">
</head>

<body>
    <header>
        <a href="${pageContext.request.contextPath}/movieapp/home" class="logo">Logo</a>
        <div class="nav-links">
            <input type="text" placeholder="Search Movie">
            <input type="text" placeholder="Search Theatre">
        </div>
        <button class="profile-btn" onclick="GoToProfile()">Profile</button>
    </header>

    <main class="main-container">
        <div class="left-section">
            <div class="box"></div>
            <div class="info">Theatre Info</div>
        </div>
        <div class="movie-selection">
            <h1>Select Movies:</h1>
            <div class="movie-grid">
                <a href="#" class="movie-box">Movie 1</a>
                <a href="#" class="movie-box">Movie 2</a>
                <a href="#" class="movie-box">Movie 3</a>
                <a href="#" class="movie-box">Movie 4</a>
                <a href="#" class="movie-box">Movie 5</a>
                <a href="#" class="movie-box">Movie 6</a>
                <a href="#" class="movie-box">Movie 7</a>
                <a href="#" class="movie-box">Movie 8</a>
            </div>
        </div>
    </main>

    <footer>
        <p>&copy; 2024 My Movie Booker</p>
    </footer>
</body>
    <script>
        function GoToProfile() {
            window.location.href = '/movieapp/profile';
        }
    </script>
</html>
