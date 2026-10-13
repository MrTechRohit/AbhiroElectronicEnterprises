<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Abhiro Electronic Enterprises - Online Shopping</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header class="navbar">
        <div class="brand-container">
            <img src="${pageContext.request.contextPath}/images/logo.PNG" alt="Abhiro Logo" class="company-logo">
            <h2>Abhiro Electronic Enterprises</h2>
        </div>
        <a href="shop?action=cart" class="cart-btn">🛒 Cart (<span id="cart-badge">${cartCount}</span>)</a>
    </header>

    <main class="container">
        <!-- Category Filter Bar -->
        <div class="filter-bar">
            <a href="shop?category=All" class="filter-btn ${selectedCategory == 'All' ? 'active' : ''}">All Appliances</a>
            <a href="shop?category=ACs" class="filter-btn ${selectedCategory == 'ACs' ? 'active' : ''}">ACs</a>
            <a href="shop?category=Televisions" class="filter-btn ${selectedCategory == 'Televisions' ? 'active' : ''}">Televisions</a>
            <a href="shop?category=Appliances" class="filter-btn ${selectedCategory == 'Appliances' ? 'active' : ''}">Kitchen & Home</a>
            <a href="shop?category=Laundry" class="filter-btn ${selectedCategory == 'Laundry' ? 'active' : ''}">Laundry</a>
        </div>

        <h1>Featured Home Electronics</h1>
        <div class="product-grid">
            <c:forEach var="p" items="${products}">
                <div class="product-card">
                    <div>
                        <span class="category-tag">${p.category}</span>
                        <h3>${p.name}</h3>
                    </div>
                    <div>
                        <p class="price">₹ ${p.price}</p>
                        <form action="shop" method="post">
                            <input type="hidden" name="action" value="add">
                            <input type="hidden" name="id" value="${p.id}">
                            <button type="submit" class="btn-buy">Add to Cart</button>
                        </form>
                    </div>
                </div>
            </c:forEach>
        </div>
    </main>
</body>
</html>