<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/bookstore_script.js"></script>

<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/style.css">
<div class="header" >
	<img onclick="activeAsLink('${pageContext.request.contextPath}/clientHome');" class="header_left" alt="" src="${pageContext.request.contextPath}/img/bookstore-logo.svg)">
		<h1>Website Cửa hàng Sách với JSP/Servlet</h1>
	
	<div class="header_right" style="float: right; text-align: right;">
		<c:if test="${not empty loginedUser }">
			Xin chào: <b> ${loginedUser.fullname} </b>
			|
			<a href="${pageContext.request.contextPath}/accountInfo">Thông
				tin tài khoản</a>
			|
			<a href="${pageContext.request.contextPath}/customerOrderList"><i class="fa fa-first-order" style="color: red"></i>Thông
				tin đơn hàng</a>
			|
			
			<c:if test="${not empty cartOfCustomer }">
			<a href="${pageContext.request.contextPath}/cartBook/viewCart"> <img
				alt="ShoppingCart"
				width="20"><i class="fa fa-shopping-cart" style="color: red"></i>Gio hàng
			</a>
			</c:if>
		
			<a href="${pageContext.request.contextPath}/logout"><i class="fa fa-user-circle-o" style="color: red"></i>Đăng xuất</a>
		</c:if>
		
		<c:if test="${empty loginedUser }">
			<a href="${pageContext.request.contextPath}/login"><i class="fa fa-user-circle-o" style="color: red"></i>Đăng nhập</a>
		</c:if>
		
			</div>
</div>