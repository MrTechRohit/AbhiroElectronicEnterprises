<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Shopping Cart - Abhiro Electronic Enterprises</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header class="navbar">
        <div class="brand-container">
            <img src="${pageContext.request.contextPath}/images/logo.PNG" alt="Abhiro Logo" class="company-logo">
            <h2>Abhiro Electronic Enterprises</h2>
        </div>
        <a href="shop" class="cart-btn">&larr; Continue Shopping</a>
    </header>

    <main class="container">
        <h1>Your Shopping Cart</h1>
        <c:choose>
            <c:when test="${empty sessionScope.cart}">
                <p class="empty-msg">Your cart is currently empty. Explore our catalog!</p>
            </c:when>
            <c:otherwise>
                <div class="cart-table-wrapper">
                    <table class="cart-table">
                        <tr>
                            <th>Item Name</th>
                            <th>Category</th>
                            <th>Price</th>
                            <th>Action</th>
                        </tr>
                        <c:set var="total" value="0"/>
                        <c:forEach var="item" items="${sessionScope.cart}" varStatus="status">
                            <tr>
                                <td>${item.name}</td>
                                <td>${item.category}</td>
                                <td>₹ ${item.price}</td>
                                <td>
                                    <form action="shop" method="post">
                                        <input type="hidden" name="action" value="remove">
                                        <input type="hidden" name="index" value="${status.index}">
                                        <button type="submit" class="btn-remove">Remove</button>
                                    </form>
                                </td>
                            </tr>
                            <c:set var="total" value="${total + item.price}"/>
                        </c:forEach>
                    </table>
                    <div class="cart-summary">
                        <h3>Total Amount: ₹ ${total}</h3>
                        <div class="cart-actions-group">
                            <form action="shop" method="post" style="display:inline;">
                                <input type="hidden" name="action" value="clear">
                                <button type="submit" class="btn-clear">Clear Cart</button>
                            </form>
                            <a href="shop?action=checkout" class="btn-checkout">Proceed to Checkout &rarr;</a>
                        </div>
                    </div>
                </div>
            </c:otherwise>
        </c:choose>
    </main>
</body>
</html>