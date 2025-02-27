<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Booking - Order Summary</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/orderSummary.css">
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
        <div class="payment-section">
            <h4>Order Summary:</h4>
            <div class="payment-details">
                <p><strong>Title:</strong> ${movie}</p>
                <br>
                <p><strong>Date & Time:</strong> ${showdate} ${showtime}</p>
                <br>
                <p><strong>Theatre:</strong> ${theatre}</p>
                <br>
                <p><strong>Screen Number:</strong> ${screen}</p>
                <br>
                <p><strong>Selected Seats:</strong>
                    <c:forEach var="seat" items="${selectedSeats}" varStatus="loop">
                        ${seat}${!loop.last ? ', ' : ''}
                    </c:forEach>
                </p>
                <br>
                <p><strong>Total Price:</strong> ₹${totalPrice}</p>
            </div>
        </div>
    </main>
    <div class="buttons-container">
        <button class="button" 
    onclick="GotoPayments('${totalPrice}')">Confirm</button>
    
        <button class="button" onclick="GotoSeatSelection()">Cancel</button>
    </div>
    <footer>
        <p>&copy; 2024 My Movie Booker</p>
    </footer>
</body>
<script>
function GotoPayments(totalPrice) {

    window.location.href = "/movieapp/payments/" + totalPrice;
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

function GotoSeatSelection(){
	window.history.back();
}
</script>
</html>
