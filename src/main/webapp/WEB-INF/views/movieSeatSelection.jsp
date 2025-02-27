<%@ page import="com.app.movie.entity.TheatreEntity, java.util.List" %>
<%@ page import="com.app.movie.entity.SeatEntity, java.util.List" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Booking - Seat Selection</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/movieSeatSelection.css">
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
        <%
            TheatreEntity selectedTheatre = (TheatreEntity) request.getAttribute("theatre");
        %>
    
        <div class="left-section">
                <div class="box">
                    <img class="movie-image" src="${movieInfo.getMovieUrl()}" alt="${movieInfo.getTitle()}">
                    <h3><strong>Theatre:</strong> ${theatre.getName()}</h3>       
                    <h3><strong>Movie:</strong> ${movieInfo.getTitle()}</h3>  
                    <h3><strong>Release Date:</strong> ${movieInfo.getReleaseDate()}</h3>         
                    <h3><strong>Duration: </strong>${movieInfo.getDuration()}</h3>      
                    <h3><strong>Genre:</strong> ${movieInfo.getGenre()}</h3>      
                    <h3><strong>About:</strong> ${movieInfo.getDescription()}</h3> 
                </div>
        </div>
        <div id="seats-selection">
            <h4>Select Seats:</h4>
            <div class="seats">
			<%
			    List<SeatEntity> seats = (List<SeatEntity>) request.getAttribute("seats");
			    if (seats != null && !seats.isEmpty()) {
			        for (SeatEntity seat : seats) {
			            boolean isBooked = "true".equalsIgnoreCase(seat.isBooked());
			            String seatClass = isBooked ? "seat booked" : "seat available";
			%>
			            <div class="<%= seatClass %>" onclick="<%= isBooked ? "" : "toggleSeat(this)" %>">
			                <%= seat.getSeatNumber() %>
			            </div>
			<%
			        }
			    } else {
			%>
			        <p>No seats available.</p>
			<%
			    }
			%>
            </div>
        </div>
    </main>

    <div class="buttons-container">
        <button class="button" onclick="GotoSummary(<%= selectedTheatre.getId() %>, ${showtimeId.getShowTimeId()})">Confirm</button>
        <button class="button" onclick="GotoTheatreInfo()">Cancel</button>
    </div>

    <footer>
        <p>&copy; 2024 My Movie Booker</p>
    </footer>
</body>
<script>
	let selectedSeats = [];
	
	function toggleSeat(seatElement) {
	    if (!seatElement.classList.contains("booked")) {
	        seatElement.classList.toggle("selected");
	
	        let seatNumber = seatElement.innerText.trim();
	        if (selectedSeats.includes(seatNumber)) {
	            selectedSeats = selectedSeats.filter(seat => seat !== seatNumber);
	        } else {
	            selectedSeats.push(seatNumber);
	        }
	    }
	}

    function GotoSummary(theatreId, showtimeId) {
        if (selectedSeats.length === 0) {
            alert("Please select at least one seat before proceeding.");
            return;
        }

        let seatsParam = selectedSeats.join(",");
        
        window.location.href = "/movieapp/order-summary/" + seatsParam + "/" + theatreId + "/" + showtimeId;
    }
	
	function GotoTheatreInfo(){
		window.history.back();
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