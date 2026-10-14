<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard - Abhiro Electronic Enterprises</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header class="navbar">
        <div class="brand-container">
            <img src="${pageContext.request.contextPath}/images/logo.PNG" alt="Abhiro Logo" class="company-logo">
            <h2>Admin Panel (CRUD & Images)</h2>
        </div>
        <a href="shop" class="cart-btn">&larr; Back to Shop</a>
    </header>

    <main class="container">
        <h1>Add New Electronic Product</h1>
        <div class="checkout-form-container" style="margin-bottom: 35px;">
            <form action="shop" method="post" class="checkout-form">
                <input type="hidden" name="action" value="addProduct">
                <div class="form-group">
                    <label>Product Name</label>
                    <input type="text" name="name" placeholder="e.g. Smart Refrigerator 300L" required>
                </div>
                <div class="form-group">
                    <label>Price (₹)</label>
                    <input type="number" name="price" placeholder="45000" required>
                </div>
                <div class="form-group">
                    <label>Category</label>
                    <select name="category" class="form-select">
                        <option value="ACs">ACs</option>
                        <option value="Televisions">Televisions</option>
                        <option value="Appliances">Appliances</option>
                        <option value="Laundry">Laundry</option>
                    </select>
                </div>
                <div class="form-group">
                    <label>Image Filename (e.g., fridge.jpg)</label>
                    <input type="text" name="image" placeholder="fridge.jpg" required>
                    <small style="color:#94a3b8;">Make sure image file is placed in webapp/images/ folder.</small>
                </div>
                <button type="submit" class="btn-place-order" style="background: #0284c7;">Add Product with Image</button>
            </form>
        </div>

        <h1>Manage Existing Inventory</h1>
        <table class="cart-table">
            <tr>
                <th>ID</th>
                <th>Image</th>
                <th>Name</th>
                <th>Category</th>
                <th>Price</th>
                <th>Actions</th>
            </tr>
            <c:forEach var="p" items="${products}">
                <tr>
                    <td>${p.id}</td>
                    <td><img src="${pageContext.request.contextPath}/images/${p.image}" width="40" height="40" style="object-fit:contain; background:#fff; border-radius:4px;" onerror="this.src='https://via.placeholder.com/40'"></td>
                    <td>${p.name}</td>
                    <td>${p.category}</td>
                    <td>₹ ${p.price}</td>
                    <td>
                        <a href="shop?action=editForm&id=${p.id}" class="btn-remove" style="background: #0284c7; text-decoration:none; padding: 6px 10px; margin-right: 5px; display:inline-block;">Edit</a>
                        <form action="shop" method="post" style="display:inline;">
                            <input type="hidden" name="action" value="deleteProduct">
                            <input type="hidden" name="id" value="${p.id}">
                            <button type="submit" class="btn-remove">Delete</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </main>
</body>
</html>