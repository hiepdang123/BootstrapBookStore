<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/bookstore_script.js"></script>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>

<div class="bg-light position-relative py-3">
	<img
		onclick="activeAsLink('${pageContext.request.contextPath}/clientHome');"
		class="float-left" alt=""
		src="${pageContext.request.contextPath}/img/bookstore-logo.svg)">
	<h1>Website Cửa hàng Sách với JSP/Servlet</h1>

	<div class="float-right position-absolute top-0 end-0">
		<c:if test="${not empty loginedUser }">
			Xin chào: <b> ${loginedUser.fullname} </b>
			|
			<a class="text-center" href="${pageContext.request.contextPath}/accountInfo">Thông
				tin tài khoản</a>
			|
			<a class="text-center" href="${pageContext.request.contextPath}/customerOrderList"><i
				class="fa fa-first-order" style="color: red"></i>Thông tin đơn hàng</a>
			|
			
			<c:if test="${not empty cartOfCustomer }">
				<a class="text-center" href="${pageContext.request.contextPath}/cartBook/viewCart">
					<img alt="ShoppingCart" width="20"><i
					class="fa fa-shopping-cart" style="color: red"></i>Gio hàng
				</a>
			</c:if>

			<a class="text-center" href="${pageContext.request.contextPath}/logout"><i
				class="fa fa-user-circle-o" style="color: red"></i>Đăng xuất</a>
		</c:if>

		<c:if test="${empty loginedUser }">
			<a class="text-center lh-lg" href="${pageContext.request.contextPath}/login"><i
				class="fa fa-user-circle-o" style="color: red"></i>Đăng nhập</a>
		</c:if>

	</div>
</div>