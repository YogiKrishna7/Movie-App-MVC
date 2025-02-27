<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking History</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/bookingHistory.css">
</head>
<body>
    <header>
        <a href="${pageContext.request.contextPath}/movieapp/home" class="logo">MovieSpace</a>
    </header>

    <main>
        <section id="history">
            <h1>Booking History</h1>
            
            <c:choose>
                <c:when test="${empty bookings}">
                    <p class="no-bookings">No bookings found in your account</p>
                </c:when>
                <c:otherwise>
                    <div class="booking-list">
                        <c:forEach var="booking" items="${bookings}" varStatus="loop">
                            <div class="booking-item">
                            	<br>
                                <div class="booking-header">
                                    <h2>${booking.showtime.movie.title}</h2>
                                    <span class="payment-status ${booking.payment.status.toLowerCase()}">
                                        Payment Status: ${booking.payment.status}
                                    </span>
                                </div>
                                
                                <div class="booking-details">
                                    <div class="detail-row">
                                        <span class="detail-label">Theatre:</span>
                                        <span class="detail-value">${booking.showtime.theatre.name}</span>
                                    </div>
                                    
                                    <div class="detail-row">
                                        <span class="detail-label">Booked Date:</span>
                                        <span class="detail-value">${booking.bookingDate}</span>
                                    </div>
                                   
                                    <br>
                                </div>
                            </div>
                            
                            <c:if test="${not loop.last}">
                                <hr class="record-separator">
                            </c:if>
                        </c:forEach>
                    </div>
                </c:otherwise>
            </c:choose>
            
            <button onclick="GotoProfile()">Back to Home</button>
        </section>
    </main>

    <footer>
        <p>&copy; My Movie Booker</p>
    </footer>

    <script>
        function GotoProfile() {
            window.location.href = "${pageContext.request.contextPath}/movieapp/home";
        }
    </script>
</body>
</html>