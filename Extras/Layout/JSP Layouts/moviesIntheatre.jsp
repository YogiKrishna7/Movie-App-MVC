<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Booking - Home</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            background-color: #f9fafb;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            width: 100%;
        }

        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px 30px;
            background: white;
            border: 2px solid black;
            width: 100%;
        }

        .logo {
            font-size: 20px;
            font-weight: bold;
            color: red;
            border: 2px solid red;
            padding: 10px;
            text-decoration: none;
        }

        .nav-links {
            display: flex;
            gap: 15px;
        }

        .nav-links input {
            padding: 10px;
            border: 2px solid black;
        }

        .profile-btn {
            border: 2px solid black;
            padding: 10px 15px;
            font-weight: bold;
            cursor: pointer;
        }

        .main-container {
            display: flex;
            padding: 20px;
            gap: 20px;
            width: 100%;
            flex-grow: 1;
        }

        .left-section {
            display: flex;
            flex-direction: column;
            gap: 20px;
            flex: 1;
        }

        .box {
            width: 250px;
            height: 250px;
            border: 3px solid orange;
            padding: 10px;
        }

        .info {
            width: 250px;
            border: 2px solid black;
            padding: 10px;
        }

        .movie-selection {
            flex: 2;
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        .movie-selection h1 {
            font-size: 24px;
            color: black;
        }

        .movie-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 25px;
        }

        .movie-box {
            width: 200px;
            height: 250px;
            border: 2px solid orange;
            background: white;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            font-size: 18px;
            font-weight: bold;
            cursor: pointer;
            text-decoration: none;
            color: black;
        }

        .movie-box:hover {
            background-color: red;
        }

        footer {
            margin-top: auto;
            background: white;
            border-top: 2px solid black;
            text-align: center;
            padding: 15px 0;
        }
    </style>
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

</html>
