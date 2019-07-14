<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<article class="text-center" style="margin-top: 10px;">
    <ul class="pagination">
        <c:choose>

            <c:when test="${page.finalPageNum < 5}">
                <li><a href="/?pageNum=${page.firstPageNum}&searchText=${page.searchText}">&laquo;</a></li>
                <c:forEach var="i" begin="${page.firstPageNum}" end="${page.finalPageNum}" step="1">
                    <c:choose>
                        <c:when test="${i eq page.pageNum}"><li class="active"><a href="/?pageNum=${i}&searchText=${page.searchText}" class="active">${i}</a></li></c:when>
                        <c:otherwise><li><a href="/?pageNum=${i}&searchText=${page.searchText}">${i}</a></li></c:otherwise>
                    </c:choose>
                </c:forEach>
                <li><a href="/?pageNum=${page.finalPageNum}&searchText=${page.searchText}">&raquo;</a></li>
            </c:when>

            <c:when test="${page.pageNum < 3}">
                <li><a href="/?pageNum=${page.firstPageNum}&searchText=${page.searchText}">&laquo;</a></li>
                <c:forEach var="i" begin="${page.firstPageNum}" end="${page.firstPageNum + 4}" step="1">
                    <c:choose>
                        <c:when test="${i eq page.pageNum}"><li class="active"><a href="/?pageNum=${i}&searchText=${page.searchText}" class="active">${i}</a></li></c:when>
                        <c:otherwise><li><a href="/?pageNum=${i}&searchText=${page.searchText}">${i}</a></li></c:otherwise>
                    </c:choose>
                </c:forEach>
                <li><a href="/?pageNum=${page.finalPageNum}&searchText=${page.searchText}">&raquo;</a></li>
            </c:when>

            <c:when test="${page.pageNum > page.finalPageNum - 3}">
                <li><a href="/?pageNum=${page.firstPageNum}&searchText=${page.searchText}">&laquo;</a></li>
                <c:forEach var="i" begin="${page.finalPageNum - 4}" end="${page.finalPageNum}" step="1">
                    <c:choose>
                        <c:when test="${i eq page.pageNum}"><li class="active"><a href="/?pageNum=${i}&searchText=${page.searchText}" class="active">${i}</a></li></c:when>
                        <c:otherwise><li><a href="/?pageNum=${i}&searchText=${page.searchText}">${i}</a></li></c:otherwise>
                    </c:choose>
                </c:forEach>
                <li><a href="/?pageNum=${page.finalPageNum}&searchText=${page.searchText}">&raquo;</a></li>
            </c:when>

            <c:otherwise>
                <li><a href="/?pageNum=${page.firstPageNum}&searchText=${page.searchText}">&laquo;</a></li>
                <c:forEach var="i" begin="${page.pageNum - 2}" end="${page.pageNum + 2}" step="1">
                    <c:choose>
                        <c:when test="${i eq page.pageNum}"><li class="active"><a href="/?pageNum=${i}&searchText=${page.searchText}">${i}</a></li></c:when>
                        <c:otherwise><li><a href="/?pageNum=${i}&searchText=${page.searchText}">${i}</a></li></c:otherwise>
                    </c:choose>
                </c:forEach>
                <li><a href="/?pageNum=${page.finalPageNum}&searchText=${page.searchText}">&raquo;</a></li>
            </c:otherwise>

        </c:choose>
    </ul>
</article>