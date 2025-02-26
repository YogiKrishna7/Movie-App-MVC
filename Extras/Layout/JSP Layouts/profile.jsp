<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile Page</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            background-color: #f5f5f5;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px 30px;
            background: white;
            border-bottom: 2px solid black;
        }

        .logo {
            font-size: 20px;
            font-weight: bold;
            color: red;
            border: 2px solid red;
            padding: 5px 10px;
            text-decoration: none;
        }

        .auth-buttons {
            display: flex;
            gap: 10px;
        }

        .auth-buttons button {
            border: 2px solid black;
            padding: 10px 15px;
            font-weight: bold;
            cursor: pointer;
            background: none;
            color: black;
        }

        .auth-buttons button:hover {
            background-color: black;
            color: white;
        }

        main {
            flex-grow: 1;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        #profile-area {
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
            text-align: left;
        }

        #profile-area h1 {
            margin-bottom: 20px;
            color: #333;
        }

        #profile-area h4 {
            margin-bottom: 10px;
            color: #666;
        }

        #profile-area button {
            width: 100%;
            padding: 10px;
            border: 2px solid red;
            background: none;
            color: red;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            margin-top: 10px;
        }

        #profile-area button:hover {
            background-color: red;
            color: white;
        }

        #action-buttons {
            display: flex;
            gap: 10px;
            margin-top: 20px;
        }

        #action-buttons button {
            padding: 10px 15px;
            border: 2px solid black;
            background: none;
            color: black;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
        }

        #action-buttons button:hover {
            background-color: black;
            color: white;
        }

        footer {
            text-align: center;
            padding: 15px;
            background: white;
            border-top: 2px solid black;
            width: 100%;
            position: absolute;
            bottom: 0;
        }
    </style>
</head>

<body>
    <header>
        <a href="#" class="logo">Logo</a>
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