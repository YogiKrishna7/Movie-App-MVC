<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.app.movie.entity.MovieEntity" %>
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
        <a href="<%= request.getContextPath() %>/movieapp/home" class="logo">Logo</a>
        <div class="nav-links">
            <input type="text" placeholder="Search Movie">
            <input type="text" placeholder="Search Theatre">
        </div>
        <button class="profile-btn" onclick="GotoProfile()">Profile</button>
    </header>
    <main class="main-container">
        <%
            MovieEntity selectedMovie = (MovieEntity) request.getAttribute("selectedMovie");
        %>
        <div class="left-section">
            <img src="<%= selectedMovie.getMovieUrl() %>" alt="<%= selectedMovie.getTitle() %>" style="width: 250px; height: 350px; object-fit: cover; border: 2px solid black; border-radius: 10px;">
            <h2><%= selectedMovie.getTitle() %></h2>
            <p>Release Date: <%= selectedMovie.getReleaseDate() %></p>
            <p>Duration: <%= selectedMovie.getDuration() %> minutes</p>
            <p>Genre: <%= selectedMovie.getGenre() %></p>
        </div>

        <div class="theatre-selection">
            <h1>Select Theatre:</h1>
            <button onclick="GotoTheatre()">Theatre 1</button>
            <button onclick="GotoTheatre()">Theatre 2</button>
            <button onclick="GotoTheatre()">Theatre 3</button>
        </div>
    </main>
    <footer>
        <p>&copy; 2024 My Movie Booker</p>
    </footer>
</body>
<script>
function GotoTheatre() {
    window.location.href = '/movieapp/theatre-info';
}
function GotoProfile() {
    window.location.href = '/movieapp/profile';
}
</script>
</html>