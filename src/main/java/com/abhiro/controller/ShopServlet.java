package com.abhiro.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ShopServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private static final List<Map<String, Object>> PRODUCTS = new ArrayList<>();
    static {
        PRODUCTS.add(createProduct(1, "Smart Inverter Split AC 1.5 Ton", 42999, "ACs", "ac.jpg"));
        PRODUCTS.add(createProduct(2, "55-inch 4K Ultra HD Smart LED TV", 54999, "Televisions", "tv.jpg"));
        PRODUCTS.add(createProduct(3, "Double Door Frost-Free Refrigerator", 31500, "Appliances", "fridge.jpg"));
        PRODUCTS.add(createProduct(4, "High-Speed AI Front Load Washing Machine", 36000, "Laundry", "laundry.jpg"));
    }

    private static Map<String, Object> createProduct(int id, String name, double price, String category, String image) {
        Map<String, Object> p = new HashMap<>();
        p.put("id", id);
        p.put("name", name);
        p.put("price", price);
        p.put("category", category);
        p.put("image", image);
        return p;
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String action = request.getParameter("action");
        String categoryFilter = request.getParameter("category");

        if ("cart".equals(action)) {
            request.getRequestDispatcher("cart.jsp").forward(request, response);
        } else if ("checkout".equals(action)) {
            request.getRequestDispatcher("checkout.jsp").forward(request, response);
        } else if ("success".equals(action)) {
            session.removeAttribute("cart"); // Clear cart after order success
            request.getRequestDispatcher("orderSuccess.jsp").forward(request, response);
        } else {
            // Category Filter Logic
            List<Map<String, Object>> displayList = new ArrayList<>();
            if (categoryFilter == null || "All".equals(categoryFilter)) {
                displayList = PRODUCTS;
            } else {
                for (Map<String, Object> p : PRODUCTS) {
                    if (categoryFilter.equals(p.get("category"))) {
                        displayList.add(p);
                    }
                }
            }

            request.setAttribute("products", displayList);
            request.setAttribute("selectedCategory", categoryFilter != null ? categoryFilter : "All");

            // Cart count calculation
            @SuppressWarnings("unchecked")
            List<Map<String, Object>> cart = (List<Map<String, Object>>) session.getAttribute("cart");
            int cartCount = (cart != null) ? cart.size() : 0;
            request.setAttribute("cartCount", cartCount);

            request.getRequestDispatcher("catalog.jsp").forward(request, response);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String action = request.getParameter("action");

        @SuppressWarnings("unchecked")
        List<Map<String, Object>> cart = (List<Map<String, Object>>) session.getAttribute("cart");
        if (cart == null) {
            cart = new ArrayList<>();
            session.setAttribute("cart", cart);
        }

        if ("add".equals(action)) {
            int productId = Integer.parseInt(request.getParameter("id"));
            for (Map<String, Object> prod : PRODUCTS) {
                if ((int) prod.get("id") == productId) {
                    cart.add(prod);
                    break;
                }
            }
            response.sendRedirect("shop");
        } else if ("remove".equals(action)) {
            int index = Integer.parseInt(request.getParameter("index"));
            if (index >= 0 && index < cart.size()) {
                cart.remove(index);
            }
            response.sendRedirect("shop?action=cart");
        } else if ("clear".equals(action)) {
            cart.clear();
            response.sendRedirect("shop?action=cart");
        } else if ("placeOrder".equals(action)) {
            // Handle order placement details here
            response.sendRedirect("shop?action=success");
        }
    }
}