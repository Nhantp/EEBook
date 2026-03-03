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

* Angular 
* TypeScript 
* Bootstrap
* HttpClient

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





