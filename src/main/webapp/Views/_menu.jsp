<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <div class="h_menu" >
            <a href="${pageContext.request.contextPath}/clientHome"><i class="fa fa-fw fa-home" style="color: red"></i>Trang chủ</a>
        
        |
        <a href="">Sách phổ biến</a>
        |
        <a href="">Sách bán chạy</a>
        |
        <a href="">Sách mới</a>
        |
        <a href="">Giá thấp đến cao</a>
        |
        <a href="">Giá cao đến thấp</a>
       <input type="text" placeholder="Tìm sách ..." name="search" onkeyup ="activeAsAjax('${pageContext.request.contextPath}/clientHome?keyword='+this.value);">
	</div>