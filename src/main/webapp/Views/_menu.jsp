<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <div class="overflow-hidden bg-dark py-3 text-white" >
            <a class="float-left text-white text-decoration-none" href="${pageContext.request.contextPath}/clientHome"><i class="fa fa-fw fa-home" style="color: red"></i>Trang chủ</a>
        
        |
        <a class="float-left text-white text-decoration-none"  href="">Sách phổ biến</a>
        |
        <a class="float-left text-white text-decoration-none" href="">Sách bán chạy</a>
        |
        <a class="float-left text-white text-decoration-none" href="">Sách mới</a>
        |
        <a class="float-left text-white text-decoration-none" href="">Giá thấp đến cao</a>
        |
        <a class="float-left text-white text-decoration-none" href="">Giá cao đến thấp</a>
       <input class="float-end mx-5" type="text" placeholder="Tìm sách ..." name="search" onkeyup ="activeAsAjax('${pageContext.request.contextPath}/clientHome?keyword='+this.value);">
	</div>