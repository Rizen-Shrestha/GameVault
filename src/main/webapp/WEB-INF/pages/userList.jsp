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
    <title>User Directory</title>
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/userList.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/footer.css">
    
 	
</head>
<body>

    <aside class="sidebar">
        <div class="sidebar-logo">
            <div class="logo-box">
                <img src="images/logo.png" alt="GameVault Logo" onerror="this.style.display='none'">
                <span class="logo-fallback">GV</span>
            </div>
        </div>
        <nav class="sidebar-nav">
            <a href="dashboard.jsp" class="nav-item">
                <svg viewBox="0 0 24 24" fill="currentColor"><path d="M10 20v-6h4v6h5v-8h3L12 3 2 12h3v8z"/></svg>
                <span>HOME</span>
            </a>
            <a href="games.jsp" class="nav-item">
                <svg viewBox="0 0 24 24" fill="currentColor"><path d="M21 6H3c-1.1 0-2 .9-2 2v8c0 1.1.9 2 2 2h18c1.1 0 2-.9 2-2V8c0-1.1-.9-2-2-2zm-10 7H8v3H6v-3H3v-2h3V8h2v3h3v2zm4.5 2c-.83 0-1.5-.67-1.5-1.5S14.67 12 15.5 12s1.5.67 1.5 1.5S16.33 15 15.5 15zm3-3c-.83 0-1.5-.67-1.5-1.5S17.67 10 18.5 10s1.5.67 1.5 1.5S19.33 12 18.5 12z"/></svg>
                <span>GAMES</span>
            </a>
            <a href="requests.jsp" class="nav-item">
                <svg viewBox="0 0 24 24" fill="currentColor"><path d="M20 2H4c-1.1 0-2 .9-2 2v18l4-4h14c1.1 0 2-.9 2-2V4c0-1.1-.9-2-2-2z"/></svg>
                <span>REQUESTS</span>
            </a>
            <a href="messages.jsp" class="nav-item">
                <svg viewBox="0 0 24 24" fill="currentColor"><path d="M20 4H4c-1.1 0-2 .9-2 2v12c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2zm0 4l-8 5-8-5V6l8 5 8-5v2z"/></svg>
                <span>MESSAGES</span>
            </a>
            <a href="${pageContext.request.contextPath}/users" class="nav-item active">
                <svg viewBox="0 0 24 24" fill="currentColor"><path d="M16 11c1.66 0 2.99-1.34 2.99-3S17.66 5 16 5c-1.66 0-3 1.34-3 3s1.34 3 3 3zm-8 0c1.66 0 2.99-1.34 2.99-3S9.66 5 8 5C6.34 5 5 6.34 5 8s1.34 3 3 3zm0 2c-2.33 0-7 1.17-7 3.5V19h14v-2.5c0-2.33-4.67-3.5-7-3.5zm8 0c-.29 0-.62.02-.97.05 1.16.84 1.97 1.97 1.97 3.45V19h6v-2.5c0-2.33-4.67-3.5-7-3.5z"/></svg>
                <span>USERS</span>
            </a>
        </nav>

        <div class="sidebar-bottom">
            <a href="${pageContext.request.contextPath}/logout" class="nav-item logout-btn">
                <svg viewBox="0 0 24 24" fill="currentColor"><path d="M17 7l-1.41 1.41L18.17 11H8v2h10.17l-2.58 2.58L17 17l5-5zM4 5h8V3H4c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h8v-2H4V5z"/></svg>
                <span>LOGOUT</span>
            </a>
        </div>
    </aside>

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