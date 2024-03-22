<%@page import="BaiTapJSP.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="BaiTapJSP.Product"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product</title>
</head>
<body>
	<h1>Product Management</h1>
	<form action="product" method="post">
		Name: <input type="text" name="name" />		
		Quantity: <input type="text" name="quantity" />	
		Price: <input type="text" name="price" />
		<input type="submit" value="Add Product">
	</form>
	
	<!-- Display list of products -->
	<h2>List of Products</h2>
	<table border="1">
        <tr>
            <th>Name</th>
            <th>Quantity</th>
            <th>Price</th>
        </tr>
        <%
            List<Product> products = (List<Product>)request.getAttribute("products");
            if (products != null) {
                for (Product product : products) {
        %>
                    <tr>
                        <td><%= product.getName() %></td>
                        <td><%= product.getQuantity() %></td>
                        <td><%= product.getPrice() %></td>
                    </tr>
        <%
                }
            }
        %>
    </table>
	
</body>
</html>