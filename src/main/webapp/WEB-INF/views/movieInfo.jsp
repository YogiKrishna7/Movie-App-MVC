<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Info</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/movieInfo.css">
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
    <main class="main-container">
        <div class="left-section">
            <img src="${selectedMovieObj.movieUrl}" alt="${selectedMovieObj.movieName}" style="width: 250px; height: 350px; object-fit: cover; border: 2px solid black; border-radius: 10px;">
            <h2>${selectedMovieObj.movieName}</h2>
            <p>Rating: ${selectedMovieObj.movieRating}</p>
            <p>Release Year: ${selectedMovieObj.releaseYear}</p>
            <p>Duration: ${selectedMovieObj.duration} hours</p>
        </div>
        <div class="theatre-selection">
            <h1>Select Theatre:</h1>
            <button>Theatre 1</button>
            <button>Theatre 2</button>
            <button>Theatre 3</button>
        </div>
    </main>
    <footer>
        <p>&copy; 2024 My Movie Booker</p>
    </footer>
</body>
</html>