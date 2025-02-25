<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList, com.app.movie.entity.MovieEntity, com.app.movie.entity.TheatreEntity" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Homepage</title>
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

        /* Header - Keep Original Style */
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

        .nav-links {
            display: flex;
            gap: 15px;
            align-items: center;
        }

        .nav-links input {
            padding: 10px;
            border: 2px solid black;
        }

        .profile-btn {
            border: 2px solid black;
            padding: 10px 15px;
            font-weight: bold;
            cursor: pointer;
            background: white;
        }

        /* Content Grid */
        .content {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 40px;
            padding: 40px;
            width: 100%;
            max-width: 1200px;
            margin: 0 auto;
        }

        /* Movie Cards */
        .movie-container {
            cursor: pointer;
            text-decoration: none;
            color: inherit;
            transition: transform 0.2s;
        }

        .movie-container:hover {
            transform: translateY(-5px);
        }

        .movie-box {
            background: white;
            border: 3px solid orange;
            border-radius: 8px;
            overflow: hidden;
            height: 350px;
        }

        .movie-image {
            width: 100%;
            height: 250px;
            object-fit: cover;
        }

        .movie-title {
            padding: 15px;
            text-align: center;
            font-weight: bold;
        }

        /* Theatre Cards */
        .theatre-container {
            cursor: pointer;
            transition: transform 0.2s;
        }

        .theatre-container:hover {
            transform: translateY(-5px);
        }

        .theatre-box {
            background: white;
            border: 3px solid orange;
            border-radius: 8px;
            height: 350px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            padding: 20px;
            text-align: center;
        }

        .theatre-name {
            font-size: 1.2rem;
            margin-bottom: 15px;
            color: #333;
        }

        .theatre-location {
            font-size: 1rem;
            color: #666;
        }

        /* Hover Effects */
        .movie-container:hover .movie-box,
        .theatre-container:hover .theatre-box {
            background-color: red;
            color: white;
        }

        .movie-container:hover .movie-title,
        .theatre-container:hover .theatre-name,
        .theatre-container:hover .theatre-location {
            color: white;
        }

        /* Footer - Keep Original Style */
        footer {
            text-align: center;
            padding: 15px;
            background: white;
            border-top: 2px solid black;
            width: 100%;
            margin-top: auto;
        }

        .no-results {
            text-align: center;
            grid-column: 1 / -1;
            padding: 2rem;
            color: #666;
        }
    </style>
</head>
<body>
    <header>
        <a href="${pageContext.request.contextPath}/movieapp/home" class="logo">Logo</a>
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
                for (MovieEntity movie : movieList) { %>
                    <a class="movie-container" onclick="GoToMovieInfo(<%= movie.getId() %>)">
                        <div class="movie-box">
                            <img src="<%= movie.getMovieUrl() %>" alt="<%= movie.getTitle() %>" class="movie-image">
                            <div class="movie-title"><%= movie.getTitle() %></div>
                        </div>
                    </a>
                <% }
            } else if (theatreList != null && !theatreList.isEmpty()) {
                for (TheatreEntity theatre : theatreList) { %>
                    <div class="theatre-container" onclick="GoToTheatreInfo(<%= theatre.getId() %>)">
                        <div class="theatre-box">
                            <h2 class="theatre-name"><%= theatre.getName() %></h2>
                            <h4 class="theatre-location"><%= theatre.getLocation() %></h4>
                        </div>
                    </div>
                <% }
            } else { %>
                <p class="no-results">No search results available.</p>
            <% } %>
    </div>

    <footer>
        <p>&copy; 2024 My Movie Booker</p>
    </footer>

    <script>
        // Keep original JavaScript functions unchanged
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
</body>
</html>