<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.app.movie.entity.MovieEntity" %>
<%@ page import="com.app.movie.entity.TheatreEntity" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Homepage</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/homepage.css">
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
    <div class="content">
        <%
            ArrayList<MovieEntity> movieList = (ArrayList<MovieEntity>) request.getAttribute("movieList");
            ArrayList<TheatreEntity> theatreList = (ArrayList<TheatreEntity>) request.getAttribute("theatreList");

            if (movieList != null && !movieList.isEmpty()) {
                for (MovieEntity movie : movieList) {
        %>
        <div class="movie-container" onclick="GoToMovieInfo(<%= movie.getId() %>)">
            <div class="box">
                <img src="<%= movie.getMovieUrl() %>" alt="<%= movie.getTitle() %>" height="240px">
            </div>
            <p class="movie-name"><%= movie.getTitle() %></p>
        </div>
        <%
                }
            } else if (theatreList != null && !theatreList.isEmpty()) {
                for (TheatreEntity theatre : theatreList) {
        %>
        <div class="theatre-container" onclick="GoToTheatreInfo(<%= theatre.getId() %>)">
            <div class="box">
                <h3><%= theatre.getName() %></h3>
            </div>
            <p>Location: <br><%= theatre.getLocation() %></p>
        </div>
        <%
                }
            } else {
        %>
        <p class="no-results">No search results available.</p>
        <%
            }
        %>
    </div>
    <footer>
        <p>&copy; 2024 My Movie Booker</p>
    </footer>
</body>
    <script>
        function GoToMovieInfo(movieId) {
            window.location.href = '/movieapp/movie-info/' + movieId;
        }

        function GoToTheatreInfo(theatreId) {
            window.location.href = '/movieapp/view-theatre/' + theatreId;
        }

        function GoToProfile() {
            window.location.href = '/movieapp/profile';
        }

        function searchStuff() {
            const movieTerm = document.getElementById("search-bar").value.trim();
            const theatreTerm = document.getElementById("search-bar2").value.trim();
            
            if(movieTerm && theatreTerm){
                alert("Can't search both movie and theatre at the same time.");
            }
            else if (movieTerm) {
                window.location.href = '/movieapp/search/' + movieTerm;
            } 
            else if (theatreTerm) {
                window.location.href = '/movieapp/search-theatre/' + theatreTerm;
            }
            else {
                alert("Please enter a movie or theatre name to search.");
            }
        }
    </script>
</html>