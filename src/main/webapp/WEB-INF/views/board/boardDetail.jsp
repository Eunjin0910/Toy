<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<jsp:include page="../templates/header.jsp" />
<script type="text/javascript" src="/js/board/board.js" charset="UTF-8"></script>
<section class="container">
    <h1>게시판 상세</h1>
    <hr style="margin-bottom: 30px;"/>
    <div>
        <form class="form-horizontal" id="writeFrom">
            <div class="form-group">
                <label for="title" class="col-sm-1 control-label">제목</label>
                <div class="col-sm-10">
                    <input type="text" name="title" class="form-control" id="title" placeholder="제목을 입력해주세요." value="${fn:escapeXml(board.title)}" disabled>
                </div>
            </div>
            <div class="form-group">
                <label for="content" class="col-sm-1 control-label">내용</label>
                <div class="col-sm-10">
                    <textarea class="form-control" name="content" id="content" style="height: 400px; resize: none;" placeholder="내용을 입력해주세요." disabled>${fn:escapeXml(board.content)}</textarea>
                </div>
            </div>
        </form>
        <a class="btn btn-default" onclick="boardDeleteAjax(${board.boardid});" href="#">삭제</a>
        <a class="btn btn-default pull-right" href="/board/write/${board.boardid}">수정</a>
    </div>
</section>
<jsp:include page="../templates/footer.jsp" />