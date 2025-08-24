<%-- 
    Document   : giaiPT
    Created on : Oct 2, 2024, 12:49:12 PM
    Author     : imtom
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Kết quả</title>
</head>
<body>
<%
    // Lấy các hệ số a, b, c từ form
    double a = Double.parseDouble(request.getParameter("a"));
    double b = Double.parseDouble(request.getParameter("b"));
    double c = Double.parseDouble(request.getParameter("c"));

    // Giải phương trình
    if (a == 0) {
        // Trường hợp phương trình bậc 1: bx + c = 0
        if (b == 0) {
            if (c == 0) {
                out.println("<h2>Phương trình vô số nghiệm</h2>");
            } else {
                out.println("<h2>Phương trình vô nghiệm</h2>");
            }
        } else {
            double x = -c / b;
            out.println("<h2>Phương trình có một nghiệm: x = " + x + "</h2>");
        }
    } else {
        // Trường hợp phương trình bậc 2: ax² + bx + c = 0
        double delta = b * b - 4 * a * c;
        if (delta < 0) {
            out.println("<h2>Phương trình vô nghiệm</h2>");
        } else if (delta == 0) {
            double x = -b / (2 * a);
            out.println("<h2>Phương trình có nghiệm kép: x = " + x + "</h2>");
        } else {
            double x1 = (-b + Math.sqrt(delta)) / (2 * a);
            double x2 = (-b - Math.sqrt(delta)) / (2 * a);
            out.println("<h2>Phương trình có hai nghiệm phân biệt:</h2>");
            out.println("<p>x1 = " + x1 + "</p>");
            out.println("<p>x2 = " + x2 + "</p>");
        }
    }
%>
</body>
</html>

