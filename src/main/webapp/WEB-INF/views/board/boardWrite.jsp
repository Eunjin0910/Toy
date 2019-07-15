<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:include page="../templates/header.jsp" />
<script type="text/javascript" src="/js/board/board.js" charset="UTF-8"></script>
<section class="container">
    <c:choose>
        <c:when test="${board.boardid != null && board.boardid != 0}">
            <h1>게시판 글 수정</h1>
        </c:when>
        <c:otherwise>
            <h1>게시판 글 등록</h1>
        </c:otherwise>
    </c:choose>
    <hr style="margin-bottom: 30px;"/>
    <div>
        <form class="form-horizontal" id="writeFrom">
            <input type="hidden" name="boardid" value="${board.boardid}">
            <div class="form-group">
                <label for="title" class="col-sm-1 control-label">제목</label>
                <div class="col-sm-10">
                    <input type="text" name="title" class="form-control" id="title" placeholder="제목을 입력해주세요." value="${board.title}">
                </div>
            </div>
            <div class="form-group">
                <label for="content" class="col-sm-1 control-label">내용</label>
                <div class="col-sm-10">
                    <textarea class="form-control" name="content" id="content" style="height: 400px; resize: none;" placeholder="내용을 입력해주세요.">${board.content}</textarea>
                </div>
            </div>
        </form>
        <c:choose>
            <c:when test="${board.boardid != null && board.boardid != 0}">
                <a class="btn btn-default pull-right" onclick="boardEidtAjax();" href="#">수정</a>
            </c:when>
            <c:otherwise>
                <a class="btn btn-default pull-right" onclick="boardWriteAjax();" href="#">등록</a>
            </c:otherwise>
        </c:choose>

    </div>
</section>
<jsp:include page="../templates/footer.jsp" />