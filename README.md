# 📘 EEBook – Online Book Management System

## 📌 Introduction

EEBook is a full-stack web application for managing an online bookstore.
The system allows users to browse books, place orders, and manage accounts, while administrators can manage products, categories, and orders.

This project was built to practice and demonstrate skills in:

* RESTful API development
* Authentication & Authorization
* Database design
* Frontend–Backend integration
* Clean architecture (Layered Architecture)

---

## 🛠️ Technologies Used

### 🔹 Backend

* Java 17
* Spring Boot
* Spring Data JPA
* Spring Security
* JWT Authentication
* MySQL
* Gradle

### 🔹 Frontend

* Angular / React
* TypeScript / JavaScript
* Tailwind CSS / Bootstrap
* Axios / HttpClient

---

## 🏗️ System Architecture

The project follows a layered architecture:

```
Controller → Service → Repository → Database
```

* **Controller**: Handles HTTP requests
* **Service**: Contains business logic
* **Repository**: Interacts with database using JPA
* **DTO + Mapper**: Handles data transformation

---

## ✨ Main Features

### 👤 User Features

* Register / Login with JWT authentication
* View book list
* Search books by name
* Add books to cart
* Place orders
* View order history

### 🔐 Admin Features

* Manage books (Create, Read, Update, Delete)
* Manage categories
* Manage users
* Manage orders

---

## 🔑 Authentication & Authorization

* JWT-based authentication
* Role-based authorization (USER / ADMIN)
* Secured endpoints using Spring Security

---

## 🗄️ Database Design

Main entities:

* User
* Role
* Book
* Category
* Order
* OrderDetail

Relational mapping is implemented using JPA annotations.

---

## 🚀 How to Run the Project

### 🔹 Backend

```bash
git clone <your-repo-url>
cd EEBook
./gradlew bootRun
```

Backend runs at:

```
http://localhost:8080
```

---

### 🔹 Frontend

```bash
npm install
npm start
```

Frontend runs at:

```
http://localhost:3000 (React)
http://localhost:4200 (Angular)
```

---

## 📷 Screenshots

(Add screenshots here)

---

## 📈 Future Improvements

* Payment integration
* Docker deployment
* CI/CD pipeline
* Unit testing (JUnit + Mockito)

---

## 👨‍💻 Author

Your Name
Email: [your-email@gmail.com](mailto:your-email@gmail.com)
GitHub: [https://github.com/yourusername](https://github.com/yourusername)
# EEBook
