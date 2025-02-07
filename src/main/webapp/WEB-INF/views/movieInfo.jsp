<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Booking</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}Styles/movieInfo.css">
</head>
<body>
    <header>
        <a href="#" class="logo">Logo</a>
        <div class="nav-links">
            <input type="text" placeholder="Search Movie">
            <input type="text" placeholder="Search Theatre">
        </div>
        <button class="profile-btn">Profile</button>
    </header>

    <main class="main-container">
        <div class="left-section">
            <div class="box"></div>
            <div class="info">Movie Cast Info</div>
        </div>
        <div class="theatre-selection">
            <h1>Select Theatre:</h1>
            <button>Theatre 1</button>
            <button>Theatre 2</button>
            <button>Theatre 3</button>
            <button>Theatre 4</button>
            <button>Theatre 5</button>
            <button>Theatre 6</button>
        </div>
    </main>

    <footer>
        <p>&copy; 2024 My Movie Booker</p>
    </footer>
</body>
</html>
