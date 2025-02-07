<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Booking - Seat Selection</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}Styles/theatreInfo.css">
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
        <div class="content-container">
            <div class="left-section">
                <div class="box"></div>
                <div class="info">Movie info</div>
            </div>
            <div id="seats-selection">
                <h4>Select Date:</h4>
                <input type="date">
                <h4>Select Show Times:</h4>
                <div class="dropdown-container">
                    <select>
                        <option value="">Select Show Time</option>
                        <option value="theatre1">Showtime 1</option>
                        <option value="theatre2">Showtime 2</option>
                        <option value="theatre3">Showtime 3</option>
                    </select>
                </div>
            </div>
        </div>
        <div class="button-container">
            <button class="button">Continue</button>
        </div>
    </main>

    <footer>
        <p>&copy; 2024 My Movie Booker</p>
    </footer>
</body>
</html>