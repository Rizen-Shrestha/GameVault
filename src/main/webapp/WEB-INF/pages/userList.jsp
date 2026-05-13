<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GameVault</title>

	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/global.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/adminSidebar.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/userList.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css">
</head>
<body>

    <jsp:include page="../components/adminSidebar.jsp" />

    <div class="main-wrapper">
        <div class="content-area">

            <header class="topbar">
                <h1 class="page-title">USER <span class="title-accent">DIRECTORY</span></h1>
                <div class="topbar-right">
                    <div class="search-box">
                        <svg class="search-icon" viewBox="0 0 24 24" fill="currentColor">
                            <path d="M15.5 14h-.79l-.28-.27A6.471 6.471 0 0 0 16 9.5 6.5 6.5 0 1 0 9.5 16c1.61 0 3.09-.59 4.23-1.57l.27.28v.79l5 4.99L20.49 19l-4.99-5zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z"/>
                        </svg>
                        <form action="${pageContext.request.contextPath}/users" method="get">
                            <input
                                type="text"
                                name="search"
                                class="search-input"
                                placeholder="SEARCH OPERATOR..."
                                value="${param.search}"
                            />
                        </form>
                    </div>
                    <div class="topbar-avatar">
                        <img src="images/avatar.png" alt="Profile" onerror="this.style.display='none'">
                    </div>
                </div>
            </header>

<div class="table-container">

    <c:choose>

        <c:when test="${empty users}">
            <div class="empty-state">
                <div class="empty-inner">
                    <i class="fa-regular fa-folder-open fa-2x" style="opacity:0.5;"></i>
                    <p>NO OPERATORS FOUND</p>
                </div>
            </div>
        </c:when>

        <c:otherwise>

            <table class="user-table">
                <thead>
                    <tr>
                        <th>USER DETAILS</th>
                        <th>EMAIL ADDRESS</th>
                        <th>DATE OF BIRTH</th>
                        <th>ROLE</th>
                        <th>STATUS</th>
                        <th style="text-align:center;">ACTIONS</th>
                    </tr>
                </thead>

                <tbody>
                    <c:forEach var="user" items="${users}">
                        <tr class="user-row">

                            <td>
                                <div class="user-info">

                                    <div class="user-avatar">
                                      
												<img src="${pageContext.request.contextPath}/getimage?name=${user.username}" 
                                                 alt="Profile" 
                                                 style="width: 100%; height: 100%; object-fit: cover;"
                                                 onerror="handleImageError(this, '${user.username}', '${fn:substring(user.firstName, 0, 1)}${fn:substring(user.lastName, 0, 1)}')">                                         

                                      
                                    </div> 

                                    <div class="user-meta">
                                        <span class="user-name">
                                            ${user.firstName} ${user.lastName}
                                        </span>
                                        <span class="user-handle">
                                            @${user.username}
                                        </span>
                                    </div>

                                </div>
                            </td>

                            <td>${user.email}</td>

                            <td>
                                <fmt:formatDate value="${user.dob}" pattern="dd MMM, yyyy"/>
                            </td>

                            <td>
                                <span class="role-badge role-${fn:toLowerCase(user.role)}">
                                    ${user.role}
                                </span>
                            </td>

                            <td>
                                <span class="status-badge status-${fn:toLowerCase(user.accountStatus)}">
                                    <span class="status-dot"></span>
                                    ${user.accountStatus}
                                </span>
                            </td>

                            <td style="text-align:center;">
                                <label class="toggle-switch">
                                    <input type="checkbox"
                                           ${user.accountStatus == 'ACTIVE' ? 'checked' : ''}
                                           disabled>
                                    <span class="toggle-slider"></span>
                                </label>
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