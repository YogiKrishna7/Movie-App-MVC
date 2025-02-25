<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List, com.app.movie.entity.ShowtimeEntity" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movies in Theatre</title>
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

        .main-container {
            padding: 40px;
            width: 100%;
            max-width: 1200px;
            margin: 0 auto;
            flex-grow: 1;
        }

        .page-heading {
            text-align: center;
            margin-bottom: 2.5rem;
            color: #2c3e50;
            font-size: 2rem;
            padding-bottom: 1rem;
            border-bottom: 2px solid #ecf0f1;
        }

        /* Modified grid for 4 columns */
        .content {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(230px, 1fr));
            gap: 30px;
            padding: 0 15px;
            width: 100%;
        }

        /* Rectangular card styling */
        .movie-container {
            cursor: pointer;
            text-decoration: none;
            color: inherit;
        }

        .movie-box {
            background: white;
            border: 3px solid orange;
            
            overflow: hidden;
            height: 320px;
        }

        .movie-image {
            width: 100%;
            height: 220px;
            object-fit: cover;
        }

        .movie-title {
            padding: 12px;
            text-align: center;
            font-weight: bold;
            color: #2d3436;
            font-size: 1rem;
            height: 80px;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0;
        }

        .movie-container:hover .movie-box {
            background-color: red;
        }

        .movie-container:hover .movie-title {
            color: white;
        }

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
            padding: 2rem;
            color: #7f8c8d;
            grid-column: 1 / -1;
        }

        @media (max-width: 768px) {
            .content {
                grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
                gap: 20px;
            }
            
            .movie-box {
                height: 300px;
            }
            
            .movie-image {
                height: 200px;
            }
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