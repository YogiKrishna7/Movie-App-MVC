<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Payment Methods</title>
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

        main {
            flex-grow: 1;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 20px;
        }

        #payment-methods-area {
            background: white;
            border: 2px solid black;
            padding: 20px;
            width: 100%;
            max-width: 600px;
            text-align: center;
        }

        #payment-methods-area h1 {
            font-size: 24px;
            margin-bottom: 20px;
        }

        #payment-methods-area button {
            padding: 10px 20px;
            border: 2px solid black;
            background: none;
            font-weight: bold;
            cursor: pointer;
            margin: 5px;
        }

        #payment-methods-area button:hover {
            background-color: red;
            color: white;
        }

        footer {
            text-align: center;
            padding: 15px;
            background: white;
            border-top: 2px solid black;
            width: 100%;
        }
    </style>
</head>

<body>
    <header>
        <a href="#" class="logo">Logo</a>
    </header>

    <main>
        <section id="payment-methods-area">
            <h1>Payment Methods:</h1>
            <br>
            <br>
            <button>Add Payment Method</button>
            <button>Remove Payment Method</button>
            <button>Back</button>
        </section>
    </main>

    <footer>
        <p>&copy; My Movie Booker</p>
    </footer>
</body>

</html>