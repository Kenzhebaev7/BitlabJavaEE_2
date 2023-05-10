<%@ page import="com.javaee.bitlab.database.models.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="./css/style.css">
</head>

<%
    User currentUser = (User) session.getAttribute("currentUser");
%>

<nav class="navbar navbar-expand-lg bg-light" data-bs-theme="white">
    <div class="container-fluid">
        <a class="navbar-brand" href="/">BITLAB SHOP</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/">Top Sales</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/">New Sales</a>
                </li>
                <%
                    if (currentUser != null) {
                %>
                <li class="nav-item">
                    <a class="nav-link" href="/add_item">Add Item</a>
                </li>
                <% } %>
            </ul>
            <ul class="navbar-nav d-flex justify-content-end">
                <%
                    if (currentUser == null) {
                %>
                <li class="nav-item">
                    <a class="nav-link" href="/register">Register</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/login">Login</a>
                </li>
                <%
                } else {
                %>
                <li class="nav-item dropdown-center" style="margin-right: 10px">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        <%= currentUser.getFullName() %>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="/profile">Profile</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="/logout">Logout</a></li>
                    </ul>
                </li>
            </ul>

            <% } %>

        </div>
        <hr>

    </div>
    <hr>

</nav>
