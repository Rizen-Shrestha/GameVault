<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>GameVault - Game Requests</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/global.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/adminSidebar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/requestList.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css">
</head>
<body>

<jsp:include page="../components/adminSidebar.jsp" />

<div class="main-wrapper">
    <div class="content-area">

        <header class="topbar">
            <h1 class="page-title">GAME <span class="title-accent">REQUESTS</span></h1>
            <div class="topbar-right">
                <div class="search-box">
                    <svg class="search-icon" viewBox="0 0 24 24" fill="currentColor">
                        <path d="M15.5 14h-.79l-.28-.27A6.471 6.471 0 0 0 16 9.5 6.5 6.5 0 1 0 9.5 16c1.61 0 3.09-.59 4.23-1.57l.27.28v.79l5 4.99L20.49 19l-4.99-5zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z"/>
                    </svg>
                    <form action="${pageContext.request.contextPath}/requests" method="get">
                        <input type="text" name="search" class="search-input"
                               placeholder="SEARCH REQUESTS..."
                               value="${param.search}" />
                    </form>
                </div>
            </div>
        </header>

        <div class="table-container">
            <c:choose>
                <c:when test="${empty requests}">
                    <div class="empty-state">
                        <div class="empty-inner">
                            <p>NO REQUESTS FOUND</p>
                        </div>
                    </div>
                </c:when>
                <c:otherwise>
                    <table class="request-table">
                        <thead>
                            <tr>
                                <th>GAME TITLE</th>
                                <th>CREATOR</th>
                                <th>PRICE</th>
                                <th>DESCRIPTION</th>
                                <th>STATUS</th>
                                <th style="text-align:center;">ACTIONS</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="req" items="${requests}">
                                <tr class="request-row">
                                    <td><span class="req-title">${req.title}</span></td>
                                    <td>${req.creator}</td>
                                    <td>$${req.price}</td>
                                    <td>
                                        <span class="req-description">
                                            ${fn:length(req.description) > 60
                                                ? fn:substring(req.description, 0, 60).concat('...')
                                                : req.description}
                                        </span>
                                    </td>
                                    <td>
                                        <span class="status-badge status-${fn:toLowerCase(req.requestStatus)}">
                                            <span class="status-dot"></span>
                                            ${req.requestStatus}
                                        </span>
                                    </td>
                                    <td style="text-align:center;">
                                        <div class="action-btns">
                                            <!-- Accept: go to addGame pre-filled -->
                                            <a href="${pageContext.request.contextPath}/addGame?requestId=${req.requestId}"
                                               class="req-btn approve" title="Accept">
                                                <svg viewBox="0 0 24 24" fill="currentColor">
                                                    <path d="M9 16.17L4.83 12l-1.42 1.41L9 19 21 7l-1.41-1.41z"/>
                                                </svg>
                                            </a>
                                            <!-- Reject: post to reject servlet -->
                                            <form action="${pageContext.request.contextPath}/rejectRequest" method="post" style="display:inline;">
                                                <input type="hidden" name="requestId" value="${req.requestId}" />
                                                <button type="submit" class="req-btn reject" title="Reject">
                                                    <svg viewBox="0 0 24 24" fill="currentColor">
                                                        <path d="M19 6.41L17.59 5 12 10.59 6.41 5 5 6.41 10.59 12 5 17.59 6.41 19 12 13.41 17.59 19 19 17.59 13.41 12z"/>
                                                    </svg>
                                                </button>
                                            </form>
                                        </div>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </c:otherwise>
            </c:choose>
        </div>

    </div>
    <jsp:include page="../components/footer.jsp"/>
</div>
</body>
</html>