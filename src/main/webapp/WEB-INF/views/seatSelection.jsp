<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Booking - Seat Selection</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/seatSelection.css">
</head>

<body>
    <header>
        <a href="${pageContext.request.contextPath}/movieapp/home" class="logo">Logo</a>
        <div class="nav-links">
            <input type="text" placeholder="Search Movie">
            <input type="text" placeholder="Search Theatre">
        </div>
        <button class="profile-btn" onclick="GotoProfile()">Profile</button>
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
        <button class="button" onclick="GotoSummary()">Confirm</button>
        <button class="button" onclick="GotoTheatreInfo()">Cancel</button>
    </div>

    <footer>
        <p>&copy; 2024 My Movie Booker</p>
    </footer>
</body>
<script>
	function GotoSummary(){
		window.location.href="/movieapp/order-summary";
	}
	
	function GotoTheatreInfo(){
		window.location.href="/movieapp/theatre-info";
	}
	
	function GotoProfile(){
		window.location.href="/movieapp/profile"
	}
</script>
</html>