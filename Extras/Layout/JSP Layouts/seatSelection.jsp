<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Booking - Seat Selection</title>
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
            gap: 10px;
        }

        .box {
            width: 250px;
            height: 300px;
            border: 3px solid orange;
            padding: 10px;
        }

        .info {
            width: 250px;
            border: 2px solid black;
            padding: 10px;
        }

        #seats-selection {
            flex-grow: 1;
            display: flex;
            flex-direction: column;
            gap: 15px;
            border: 2px solid black;
            padding: 20px;
            width: 100%;
            height: 350px;
        }

        .seats {
            display: grid;
            grid-template-columns: repeat(8, 1fr);
            gap: 10px;
        }

        .seat {
            width: 40px;
            height: 40px;
            border: 2px solid black;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            background-color: white;
        }

        .seat.selected {
            background-color: #4CAF50;
            color: white;
        }

        .buttons-container {
            display: flex;
            justify-content: center;
            gap: 15px;
            margin-top: 10px;
            width: 100%;
            padding-bottom: 70px;
        }

        .button {
            padding: 15px 25px;
            font-weight: bold;
            cursor: pointer;
            border: 2px solid black;
            background: white;
        }

        footer {
            text-align: center;
            padding: 15px;
            margin-top: auto;
            background: white;
            border-top: 2px solid black;
            width: 100%;
        }
        .seat:hover {
            background-color: red;
            cursor: pointer;
        }
        .button:hover {
            background-color: red;
            color: white;
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
            <div class="info">Movie info</div>
        </div>
        <div id="seats-selection">
            <h4>Select Seats:</h4>
            <div class="seats">
                <div class="seat">A1</div>
                <div class="seat">A2</div>
                <div class="seat">A3</div>
                <div class="seat">A4</div>
                <div class="seat">A5</div>
                <div class="seat">A6</div>
                <div class="seat">A7</div>
                <div class="seat">A8</div>
                <div class="seat">B1</div>
                <div class="seat">B2</div>
                <div class="seat">B3</div>
                <div class="seat">B4</div>
                <div class="seat">B5</div>
                <div class="seat">B6</div>
                <div class="seat">B7</div>
                <div class="seat">B8</div>
                <div class="seat">C1</div>
                <div class="seat">C2</div>
                <div class="seat">C3</div>
                <div class="seat">C4</div>
                <div class="seat">C5</div>
                <div class="seat">C6</div>
                <div class="seat">C7</div>
                <div class="seat">C8</div>
                <div class="seat">D1</div>
                <div class="seat">D2</div>
                <div class="seat">D3</div>
                <div class="seat">D4</div>
                <div class="seat">D5</div>
                <div class="seat">D6</div>
                <div class="seat">D7</div>
                <div class="seat">D8</div>
                <div class="seat">E1</div>
                <div class="seat">E2</div>
                <div class="seat">E3</div>
                <div class="seat">E4</div>
                <div class="seat">E5</div>
                <div class="seat">E6</div>
                <div class="seat">E7</div>
                <div class="seat">E8</div>
            </div>
        </div>
    </main>

    <div class="buttons-container">
        <button class="button">Confirm</button>
        <button class="button">Cancel</button>
    </div>

    <footer>
        <p>&copy; 2024 My Movie Booker</p>
    </footer>
</body>

</html>