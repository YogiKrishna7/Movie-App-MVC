<div align="center">

# 🎬 <span style="font-size: 2.5em;">MovieSpace</span> 🎬

**Movie Space** is a **Spring Boot MVC web application** designed for booking movie tickets online. It provides users with a easy and simple experience to browse movies, select seats, and book tickets. Built with **Java, Spring Boot, MySQL, JSP, and CSS**, this is my first Spring Boot Project which I made everything i learnt while learning

</div>

---

## ✨ Features

- **🎟️ User Authentication**: Register, log in, and log out securely.
- **🔍 Movie Search**: Search for movies by title or theatre.
- **💺 Seat Selection**: Choose available seats for a specific showtime.
- **📜 Booking History**: View past bookings and details.
- **💳 Payment Processing**: Securely process payments for bookings.

---

## 🛠️ Technologies Used

| Category       | Technologies                                                                 |
|----------------|------------------------------------------------------------------------------|
| **Backend**    | Spring Boot, Spring MVC, Spring Data JPA, Hibernate                          |
| **Frontend**   | JSP, HTML, CSS                                                              |
| **Database**   | MySQL                                                                        |
| **Build Tool** | Maven                                                                        |

---

## 🚀 Setup Instructions

### Prerequisites
- **Java 17** or higher.
- **MySQL** installed and running.
- **Maven** installed.

### Steps to Run the Project

1. **Clone the repository**:
   ```bash
   git clone https://github.com/yogikrishna7/MovieSpace.git
   cd MovieSpace
1.  **Set up the database**:
    
    -   Update the  `application.properties`  file with your MySQL credentials:
        ```
        spring.datasource.url=jdbc:mysql://localhost:3306/moviespace
        spring.datasource.username=your-username
        spring.datasource.password=your-password
        spring.jpa.hibernate.ddl-auto=update`
    -   Create a database named  `moviespace`  in MySQL.

1.  **Run the application**:
``
    mvn spring-boot:run
    ``
    
2.  **Access the application**:
    
    -   Open your browser and go to  `http://localhost:8080/movieapp`

## 🎯 Key Functionality


**Homepage**

Browse all available movies and search by title or theatre.

**User Authentication**

Register, log in, and log out securely.

**Movie Details**

View details of a specific movie and available theatres.

**Seat Selection**

Choose seats for a specific showtime.

**Order Summary**

Review selected seats and showtime details before payment.

**Payment Processing**

Securely process payments for bookings.

**Booking History**

View past bookings and details.

**Profile Management**

View and edit user profile information.



----------

## 🙏 Acknowledgments

-   Built with ❤️ using  **Spring Boot**,  **MySQL**,  **JSP**, and  **CSS**.
    
-   Inspired by modern ticket booking systems.
    

----------

<div align="center">

🎉  **Enjoy using MovieSpace!**  🎉  
If you have any questions or feedback, feel free to open an issue or reach out.

</div>
