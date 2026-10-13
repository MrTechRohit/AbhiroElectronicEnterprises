<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Checkout - Abhiro Electronic Enterprises</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header class="navbar">
        <div class="brand-container">
            <img src="${pageContext.request.contextPath}/images/logo.PNG" alt="Abhiro Logo" class="company-logo">
            <h2>Abhiro Electronic Enterprises</h2>
        </div>
        <a href="shop?action=cart" class="cart-btn">&larr; Back to Cart</a>
    </header>

    <main class="container">
        <h1>Secure Checkout</h1>
        <div class="checkout-form-container">
            <form action="shop" method="post" class="checkout-form">
                <input type="hidden" name="action" value="placeOrder">
                
                <div class="form-group">
                    <label>Full Name</label>
                    <input type="text" name="fullname" placeholder="Enter your full name" required>
                </div>
                
                <div class="form-group">
                    <label>Email Address</label>
                    <input type="email" name="email" placeholder="name@example.com" required>
                </div>

                <div class="form-group">
                    <label>Delivery Address</label>
                    <textarea name="address" rows="3" placeholder="House No, Street, City, Pincode" required></textarea>
                </div>

                <div class="form-group">
                    <label>Payment Method</label>
                    <select name="payment" class="form-select">
                        <option value="COD">Cash on Delivery (COD)</option>
                        <option value="UPI">UPI / Net Banking</option>
                    </select>
                </div>

                <button type="submit" class="btn-place-order">Place Order Now</button>
            </form>
        </div>
    </main>
</body>
</html>