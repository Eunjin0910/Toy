<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<jsp:include page="../templates/header.jsp" />
<script type="text/javascript" src="/js/board/board.js" charset="UTF-8"></script>
<section class="container">
    <h1>게시판 글 목록</h1>
    <hr/>
    <article>
        <div class="pull-right" style="margin-bottom: 10px;">
            <form class="form-inline" id="searchFrom" action="/board/list">
                <input type="hidden" name="pageNum" value="0">
                <input class="form-control" type="text" name="searchText" placeholder="제목을 입력해주세요." value="${page.searchText}">
                <button class="btn btn-default pull-right" type="submit">검색</button>
            </form>
        </div>
    </article>
    <div>
        <table class="table table-bordered">
            <colgroup>
                <col width="5%">
                <col width="25%">
                <col width="60%">
                <col width="10%">
            </colgroup>
            <thead>
                <tr>
                    <th>No</th>
                    <th>제목</th>
                    <th>내용</th>
                    <th>등록일자</th>
                </tr>
            </thead>
            <tbody>
                <c:choose>
                    <c:when test="${fn:length(boardList) > 0}">
                        <c:forEach var="board" items="${boardList}">
                            <tr>
                                <td>${page.totCount - board.no + 1}</td>
                                <td>${fn:escapeXml(board.title)}</td>
                                <td><a href="/board/boardDetail/${board.boardid}">${fn:escapeXml(board.content)}</a></td>
                                <td><fmt:formatDate value="${board.regdate}" pattern="yyyy-MM-dd"/></td>
                            </tr>
                        </c:forEach>
                    </c:when>
                    <c:otherwise>
                        <tr>
                            <td colspan="4" class="text-center">등록된 게시글이 없습니다.</td>
                        </tr>
                    </c:otherwise>
                </c:choose>
            </tbody>
        </table>
        <a class="btn btn-default pull-right" href="/board/write/0">글쓰기</a>
    </div>
    <jsp:include page="../common/pageNavi.jsp" />
</section>
<jsp:include page="../templates/footer.jsp" />