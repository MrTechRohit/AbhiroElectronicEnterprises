# Abhiro Electronic Enterprises 🛒⚡

A modern, responsive, and dynamic e-commerce web application built for Home Electronics & Appliances using **Java Servlets, JSP, JSTL, HTML5, and CSS3**.

## 🚀 Features

* **Product Catalog & Filtering:** Browse electronic items categorized into ACs, Televisions, Appliances, and Laundry with real-time category filtering tabs.
* **Shopping Cart Management:** Add products to the cart, remove specific items, view dynamic totals, and clear the cart seamlessly.
* **Admin Dashboard (CRUD):** 
  * **Create:** Add new products with name, price, category, and custom image filenames.
  * **Read:** View existing inventory in a clean tabular format.
  * **Update:** Edit existing product details easily.
  * **Delete:** Remove products from the catalog.
* **Secure Checkout Flow:** User-friendly billing/checkout form and order success confirmation screen.
* **Glowing UI/UX:** Designed with a modern dark-theme neon/glow aesthetic using custom CSS3.

---

## 🛠️ Tech Stack

* **Backend:** Java Servlets, JSP (JavaServer Pages), JSTL (Jakarta Server Pages Standard Tag Library)
* **Frontend:** HTML5, CSS3 (Responsive Grid & Flexbox layout)
* **Server:** Apache Tomcat (v11.0+)
* **Storage:** In-Memory / Session-based Java Collections (Fast & lightweight)

---

## 📂 Project Directory Structure

```text
AbhiroElectronicEnterprises/
│
├── src/main/java/
│   └── com/abhiro/controller/
│       └── ShopServlet.java          # Main Controller handling routing & CRUD logic
│
└── src/main/webapp/
    ├── WEB-INF/
    │   └── web.xml                   # Servlet mappings & configuration
    ├── images/
    │   ├── logo.png                  # Company logo
    │   ├── ac.jpg                    # Product thumbnails
    │   ├── tv.jpg
    │   ├── fridge.jpg
    │   └── laundry.jpg
    ├── catalog.jsp                   # Main product display & filters
    ├── cart.jsp                      # Shopping cart management view
    ├── admin.jsp                     # Admin CRUD dashboard
    ├── editProduct.jsp               # Product update form
    ├── checkout.jsp                  # Customer billing form
    ├── orderSuccess.jsp              # Order confirmation page
    └── style.css                     # Custom glowing/neon UI stylesheet
