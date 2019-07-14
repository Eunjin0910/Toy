<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:include page="../templates/header.jsp" />
<section style="background-color: antiquewhite">
    <h1>�Խ���</h1>
    <p>�Խ��� ����</p>
    <article>
        <input type="text" placeholder="���� �˻�� �Է����ּ���." style="width: 70%;">
        <input type="button" style="width: 20%" value="�˻�">
    </article>
    <table>
        <colgroup>
            <col width="8%">
            <col width="32%">
            <col width="40%">
            <col width="20%">
        </colgroup>
        <thead>
            <tr>
                <th>No</th>
                <th>����</th>
                <th>����</th>
                <th>�������</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="board" items="${boardList}">
                <tr>
                    <td>${board.no}</td>
                    <td>${board.title}</td>
                    <td>${board.content}</td>
                    <td>${board.regdate}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</section>
<jsp:include page="../templates/footer.jsp" />