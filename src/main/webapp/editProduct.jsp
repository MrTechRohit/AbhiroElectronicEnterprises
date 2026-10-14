<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Product - Abhiro Electronic Enterprises</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header class="navbar">
        <div class="brand-container">
            <img src="${pageContext.request.contextPath}/images/logo.PNG" alt="Abhiro Logo" class="company-logo">
            <h2>Admin Panel - Update Product</h2>
        </div>
        <a href="shop?action=admin" class="cart-btn">&larr; Back to Admin</a>
    </header>

    <main class="container">
        <h1>Edit Product Details</h1>
        <div class="checkout-form-container">
            <form action="shop" method="post" class="checkout-form">
                <input type="hidden" name="action" value="updateProduct">
                <input type="hidden" name="id" value="${product.id}">
                
                <div class="form-group">
                    <label>Product Name</label>
                    <input type="text" name="name" value="${product.name}" required>
                </div>
                
                <div class="form-group">
                    <label>Price (₹)</label>
                    <input type="number" name="price" value="${product.price}" required>
                </div>

                <div class="form-group">
                    <label>Category</label>
                    <select name="category" class="form-select">
                        <option value="ACs" ${product.category == 'ACs' ? 'selected' : ''}>ACs</option>
                        <option value="Televisions" ${product.category == 'Televisions' ? 'selected' : ''}>Televisions</option>
                        <option value="Appliances" ${product.category == 'Appliances' ? 'selected' : ''}>Appliances</option>
                        <option value="Laundry" ${product.category == 'Laundry' ? 'selected' : ''}>Laundry</option>
                    </select>
                </div>

                <div class="form-group">
                    <label>Image Filename</label>
                    <input type="text" name="image" value="${product.image}" required>
                </div>

                <button type="submit" class="btn-place-order" style="background: #2563eb;">Save Changes</button>
            </form>
        </div>
    </main>
</body>
</html>