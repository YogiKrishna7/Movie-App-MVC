<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.app.movie.entity.MovieEntity" %>
<%@ page import="com.app.movie.entity.TheatreEntity" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Info</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/Styles/movieInfo.css">
</head>
<body>
    <header>
        <a href="<%= request.getContextPath() %>/movieapp/home" class="logo">MovieSpace</a>
        <div class="nav-links">
            <input type="text" placeholder="Search Movie" id="search-bar">
            <input type="text" placeholder="Search Theatre" id="search-bar2">
            <button class="profile-btn" onclick="searchStuff()">Search</button>
        </div>
        <button class="profile-btn" onclick="GoToProfile()">Profile</button>
    </header>
    <main class="main-container">
        <%
            MovieEntity selectedMovie = (MovieEntity) request.getAttribute("selectedMovie");
        	ArrayList<TheatreEntity> theatreList = (ArrayList<TheatreEntity>) request.getAttribute("theatreList");
        %>
        <div class="left-section">
            <img src="<%= selectedMovie.getMovieUrl() %>" alt="<%= selectedMovie.getTitle() %>" style="width: 250px; height: 350px; object-fit: cover; border: 2px solid black; border-radius: 10px;">
            <h2><%= selectedMovie.getTitle() %></h2>
            <p>Release Date: <%= selectedMovie.getReleaseDate() %></p>
            <p>Duration: <%= selectedMovie.getDuration() %> minutes</p>
            <p>Genre: <%= selectedMovie.getGenre() %></p>
            <p>Description: <%= selectedMovie.getDescription() %></p>
        </div>

        <div class="theatre-selection">
            <h1>Select Theatre:</h1>
            <% 
            	for(TheatreEntity t : theatreList){
            %>
            <button onclick="GotoTheatre(<%= t.getId() %>, <%= selectedMovie.getId() %>)"><%= t.getName() %> - <%= t.getLocation() %></button>
			<%
            	}
			%>
        </div>
    </main>
    <footer>
        <p>&copy; 2024 My Movie Booker</p>
    </footer>
</body>
<script>
function GotoTheatre(theatreId, movieId) {
    window.location.href = '/movieapp/theatre-info/' + theatreId + '/' + movieId;
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