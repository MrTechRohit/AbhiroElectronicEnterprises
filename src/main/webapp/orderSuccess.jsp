<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Order Success - Abhiro Electronic Enterprises</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header class="navbar">
        <div class="brand-container">
            <img src="${pageContext.request.contextPath}/images/logo.PNG" alt="Abhiro Logo" class="company-logo">
            <h2>Abhiro Electronic Enterprises</h2>
        </div>
    </header>

    <main class="container success-container">
        <div class="success-card">
            <span class="success-icon">✅</span>
            <h1>Order Placed Successfully!</h1>
            <p>Thank you for shopping with <strong>Abhiro Electronic Enterprises</strong>. Your order has been confirmed.</p>
            <a href="shop" class="btn-continue">Continue Shopping</a>
        </div>
    </main>
</body>
</html>