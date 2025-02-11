<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.app.movie.entity.Movie" %>
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
        <a href="#" class="logo">Logo</a>
        <div class="nav-links">
            <input type="text" placeholder="Search Movie">
            <input type="text" placeholder="Search Theatre">
        </div>
        <button class="profile-btn">Profile</button>
    </header>
    <div class="content">
        <%
            ArrayList<Movie> movieList = (ArrayList<Movie>) request.getAttribute("movieList");
            if (movieList != null && !movieList.isEmpty()) {
                for (Movie movie : movieList) {
        %>
        <div class="movie-container" onclick="location.href='/movieapp/movie-info?movieId=<%= movie.getMovieId() %>'">
            <div class="box">
                <img src="<%= movie.getMovieUrl() %>" alt="<%= movie.getMovieName() %>" height="240px">
            </div>
            <p class="movie-name"><%= movie.getMovieName() %></p>
        </div>
        <%
                }
            } else {
        %>
        <p class="no-movies">Movies Not Available</p>
        <%
            }
        %>
    </div>
    <footer>
        <p>&copy; 2024 My Movie Booker</p>
    </footer>
</body>
</html>