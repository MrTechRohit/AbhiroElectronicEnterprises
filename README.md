🚀 Abhiro Electronic Enterprises
A Full-Stack E-Commerce Web Application Built with Java Servlets, JSP, XML, and MySQL

📖 About the Project
Abhiro Electronic Enterprises is a fully functional, dynamic e-commerce mini-project designed to simulate a modern online retail store for home electronics and appliances (such as ACs, Televisions, Refrigerators, and Washing Machines).

The project follows a robust MVC (Model-View-Controller) architecture, utilizing Jakarta Servlets for backend logic control, JSP (JavaServer Pages) for dynamic views, XML-based routing (web.xml), and JDBC for persistent database operations.

✨ Key Features & Functionalities
Dynamic Product Catalog & Filtering: Browse home electronics seamlessly and filter products instantly by specific categories (ACs, Televisions, Appliances, Laundry).

Admin CRUD Panel: A dedicated inventory management dashboard that allows administrators to Create (Add) new products and Delete existing items directly from the MySQL database.

Shopping Cart Management: Add items to a session-based cart, view subtotal amounts, remove individual items, or clear the entire cart.

Secure Checkout & Order Success Flow: Collects user shipping information and payment preferences (COD / UPI), culminating in a dedicated order confirmation success screen.

Custom Branding: Styled with modern glassmorphism aesthetics, responsive grids, and custom corporate logo integration.

🛠️ Tech Stack & Tools
Backend: Java EE, Jakarta Servlets, JSP (JavaServer Pages), JDBC

Database: MySQL, SQL Queries

Configuration: XML (web.xml deployment descriptor)

Frontend: HTML5, CSS3 (Responsive Grid, Custom UI)

Server / IDE: Apache Tomcat, Eclipse IDE for Enterprise Java

📂 Project Architecture
AbhiroElectronicEnterprises/
├── src/main/java/com/abhiro/controller/
│   └── ShopServlet.java          # Main Controller handling routing, cart, & CRUD logic
├── src/main/webapp/
│   ├── WEB-INF/
│   │   └── web.xml               # XML Deployment Descriptor
│   ├── images/
│   │   └── logo.png              # Company Branding Logo
│   ├── catalog.jsp               # Product Storefront & Category Filters
│   ├── admin.jsp                 # Admin CRUD Inventory Panel
│   ├── cart.jsp                  # Shopping Cart & Bill Calculation
│   ├── checkout.jsp              # Billing & Shipping Form
│   ├── orderSuccess.jsp          # Order Confirmation Screen
│   └── style.css                 # Modern UI Stylesheet
