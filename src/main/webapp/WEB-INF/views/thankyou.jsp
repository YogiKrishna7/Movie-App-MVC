<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Booking - Thank You</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/thankYou.css">
</head>

<body>
    <header>
        <a href="${pageContext.request.contextPath}/movieapp/home" class="logo">MovieSpace</a>
        <div class="nav-links">
            <input type="text" placeholder="Search Movie" id="search-bar">
            <input type="text" placeholder="Search Theatre" id="search-bar2">
            <button class="profile-btn" onclick="searchStuff()">Search</button>
        </div>
        <button class="profile-btn" onclick="GoToProfile()">Profile</button>
    </header>

    <main>
        <h2 class="thank-you-message">Thank You for Your Booking!</h2>
        <button class="home-button" onclick="GotoHome()">Go to Home</button>
    </main>

    <footer>
        <p>&copy; 2024 My Movie Booker</p>
    </footer>
</body>
<script>
function GotoHome(){
	window.location.href = '/movieapp/home';
}

function GoToProfile() {
    window.location.href = '/movieapp/profile';
}

function searchStuff() {
    const movieTerm = document.getElementById("search-bar").value.trim();
    const theatreTerm = document.getElementById("search-bar2").value.trim();

    if (movieTerm && theatreTerm) {
        alert("Can't search both movie and theatre at the same time.");
    } else if (movieTerm) {
        window.location.href = '/movieapp/search/' + movieTerm;
    } else if (theatreTerm) {
        window.location.href = '/movieapp/search-theatre/' + theatreTerm;
    } else {
        alert("Please enter a movie or theatre name to search.");
    }
}
</script>
</html>