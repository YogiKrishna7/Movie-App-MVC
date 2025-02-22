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
        	ArrayList<TheatreEntity> theatreList = (ArrayList<TheatreEntity>) request.getAttribute("theatreList");
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
            <% 
            	for(TheatreEntity t : theatreList){
            %>
            <button onclick="GotoTheatre(<%= t.getId() %>, <%= selectedMovie.getId() %>)"><%= t.getName() %></button>
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
function GotoProfile() {
    window.location.href = '/movieapp/profile';
}
</script>
</html>