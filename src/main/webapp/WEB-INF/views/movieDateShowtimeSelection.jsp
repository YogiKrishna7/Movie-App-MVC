<%@ page import="com.app.movie.entity.TheatreEntity, java.util.List, com.app.movie.entity.ShowtimeEntity" %>
<%@ page import="java.text.SimpleDateFormat, java.util.Date" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Theatre Information</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/movieDateShowtimeSelection.css">
</head>
<body>
    <header>
        <a href="${pageContext.request.contextPath}/movieapp/home" class="logo">Logo</a>
        <div class="nav-links">
            <input type="text" placeholder="Search Movie" class="search-box">
            <input type="text" placeholder="Search Theatre" class="search-box">
        </div>
        <button class="profile-btn" onclick="GotoProfile()">Profile</button>
    </header>

    <main class="main-container">
        <%
            TheatreEntity selectedTheatre = (TheatreEntity) request.getAttribute("selectedTheatre");
            List<ShowtimeEntity> datesAndTimes = (List<ShowtimeEntity>) request.getAttribute("datesAndTimes");

            SimpleDateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd");
        %>
        <div class="content-container">
            
            <div class="left-section">
                <div class="box">
                    <img class="movie-image" src="${movieInfo.getMovieUrl()}" alt="${movieInfo.getTitle()}">
                    <h3><strong>Theatre:</strong> ${selectedTheatre.getName()}</h3>       
                    <h3><strong>Movie:</strong> ${movieInfo.getTitle()}</h3>  
                    <h3><strong>Release Date:</strong> ${movieInfo.getReleaseDate()}</h3>         
                    <h3><strong>Duration: </strong>${movieInfo.getDuration()}</h3>      
                    <h3><strong>Genre:</strong> ${movieInfo.getGenre()}</h3>      
                    <h3><strong>About:</strong> ${movieInfo.getDescription()}</h3> 
                </div>
            </div>

            <div id="seats-selection">
                <h4>Select Date:</h4>
                <div class="dropdown-container">
                    <select id="dateDropdown" onchange="populateShowtimes()">
                        <option value="">Select Date</option>
                        <% for (ShowtimeEntity showtime : datesAndTimes) { %>
                            <option value="<%= dateFormatter.format(showtime.getStartDate()) %>">
                                <%= dateFormatter.format(showtime.getStartDate()) %>
                            </option>
                        <% } %>
                    </select>
                </div>

                <h4>Select Show Time:</h4>
                <div class="dropdown-container">
                    <select id="timeDropdown">
                        <option value="">Select Show Time</option>
                    </select>
                </div>
            </div>
        </div>

        <div class="buttons-container">
            <button class="button" onclick="GotoSeatSelection(<%= selectedTheatre.getId() %>)">Continue</button>
            <button class="button" onclick="GotoMovieInfo()">Cancel</button>
        </div>
    </main>

    <footer>
        <p>&copy; 2024 My Movie Booker</p>
    </footer>

    <script>
        var showtimesData = {};
        <% for (ShowtimeEntity showtime : datesAndTimes) { %>
            var date = "<%= dateFormatter.format(showtime.getStartDate()) %>";
            var time = "<%= showtime.getStartTime() %>";
            if (!showtimesData[date]) {
                showtimesData[date] = [];
            }
            showtimesData[date].push(time);
        <% } %>

        function populateShowtimes() {
            var dateDropdown = document.getElementById("dateDropdown");
            var timeDropdown = document.getElementById("timeDropdown");
            var selectedDate = dateDropdown.value;

            timeDropdown.innerHTML = '<option value="">Select Show Time</option>';

            if (selectedDate && showtimesData[selectedDate]) {
                showtimesData[selectedDate].forEach(function(time) {
                    var option = document.createElement("option");
                    option.value = time;
                    option.textContent = time;
                    timeDropdown.appendChild(option);
                });
            }
        }

        function GotoSeatSelection(theatreId) {
            var selectedDate = document.getElementById("dateDropdown").value;
            var selectedTime = document.getElementById("timeDropdown").value;

            if (!selectedDate || !selectedTime) {
                alert("Please select both date and time before continuing!");
                return;
            }

            window.location.href = "/movieapp/seat-selection-movie/" + selectedDate + "/" + selectedTime + "/" + theatreId;
        }

        function GotoMovieInfo(){
        	window.history.back();
        }

        function GotoProfile(){
            window.location.href="/movieapp/profile";
        }
    </script>
</body>
</html>
