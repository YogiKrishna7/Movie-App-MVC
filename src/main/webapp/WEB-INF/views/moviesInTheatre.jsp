<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List, com.app.movie.entity.ShowtimeEntity" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movies in Theatre</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/moviesInTheatre.css">
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

    <main class="main-container">
        <h1 class="page-heading">Movies in <%= request.getAttribute("theatreName") %></h1>
        
        <div class="content">
            <% 
                List<ShowtimeEntity> movieList = (List<ShowtimeEntity>) request.getAttribute("movieList");
                if (movieList == null || movieList.isEmpty()) { 
            %>
                <p class="no-results">No movies currently showing in this theatre</p>
            <% 
                } else {
                    for (ShowtimeEntity movie : movieList) { 
            %>
                <a class="movie-container" onclick="GoToMovieInfo(<%= movie.getMovie().getId() %>)">
                    <div class="movie-box">
                        <img src="<%= movie.getMovie().getMovieUrl() %>" 
                             alt="<%= movie.getMovie().getTitle() %>" 
                             class="movie-image">
                        <div class="movie-title"><%= movie.getMovie().getTitle() %></div>
                    </div>
                </a>
            <% 
                    }
                } 
            %>
        </div>
    </main>

    <footer>
        <p>&copy; 2024 My Movie Booker</p>
    </footer>

    <script>
        function GoToMovieInfo(movieId) {
            window.location.href = "/movieapp/theatre-info-movie/" + ${theatreId} +'/'+ movieId;
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
</body>
</html>