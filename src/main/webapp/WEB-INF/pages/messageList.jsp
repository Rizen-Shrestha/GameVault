<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>GameVault - Messages</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/global.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/adminSidebar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/messageList.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css">
</head>
<body>

<jsp:include page="../components/adminSidebar.jsp" />

<div class="main-wrapper">
    <div class="content-area">

        <header class="topbar">
            <h1 class="page-title">USER <span class="title-accent">MESSAGES</span></h1>
        </header>

        <div class="table-container">
            <c:choose>
                <c:when test="${empty messages}">
                    <div class="empty-state">
                        <div class="empty-inner">
                            <p>NO MESSAGES FOUND</p>
                        </div>
                    </div>
                </c:when>
                <c:otherwise>
                    <table class="message-table">
					<thead>
					    <tr>
					        <th>ID</th>
					        <th>FULL NAME</th>
					        <th>SUBJECT</th>
					        <th>MESSAGE</th>
					        <th>DATE</th>
					        <th style="text-align:center;">ACTIONS</th>
					    </tr>
					</thead>
					<tbody>
					    <c:forEach var="msg" items="${messages}">
					        <tr class="message-row">
					            <td>${msg.messageId}</td>
					            <td><span class="msg-subject">${msg.firstName} ${msg.lastName}</span></td>
					            <td>${msg.subject}</td>
								<td>
								    <span class="msg-preview">${msg.message}</span>
								</td>
					            <td>
					                <fmt:formatDate value="${msg.messageDate}" pattern="dd MMM, yyyy"/>
					            </td>
					            <td style="text-align:center;">
					                <form action="${pageContext.request.contextPath}/deleteMessage"
					                      method="post" style="display:inline;">
					                    <input type="hidden" name="messageId" value="${msg.messageId}" />
					                    <button type="submit" class="req-btn delete" title="Delete">
					                        <svg viewBox="0 0 24 24" fill="currentColor">
					                            <path d="M6 19c0 1.1.9 2 2 2h8c1.1 0 2-.9 2-2V7H6v12zM19 4h-3.5l-1-1h-5l-1 1H5v2h14V4z"/>
					                        </svg>
					                    </button>
					                </form>
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