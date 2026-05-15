<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>GameVault - Games</title>
    
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/global.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/adminSidebar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/gameList.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css">
</head>

<body>

<jsp:include page="../components/adminSidebar.jsp" />

<div class="main-wrapper">
    <div class="content-area">

		<header class="topbar">
		    <h1 class="page-title">GAME <span class="title-accent">LIBRARY</span></h1>
		
		    <div class="topbar-right">
		        <div class="search-box">
		            <svg class="search-icon" viewBox="0 0 24 24" fill="currentColor">
		                <path d="M15.5 14h-.79l-.28-.27A6.471 6.471 0 0 0 16 9.5 6.5 6.5 0 1 0 9.5 16c1.61 0 3.09-.59 4.23-1.57l.27.28v.79l5 4.99L20.49 19l-4.99-5zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z"/>
		            </svg>
		            <form action="${pageContext.request.contextPath}/games" method="get">
		                <input type="text"
		                       name="search"
		                       class="search-input"
		                       placeholder="SEARCH GAMES..."
		                       value="${param.search}" />
		            </form>
		        </div>
		
		        <a href="${pageContext.request.contextPath}/addGame" class="add-game-btn">
		            <svg viewBox="0 0 24 24" fill="currentColor">
		                <path d="M19 13h-6v6h-2v-6H5v-2h6V5h2v6h6v2z"/>
		            </svg>
		            ADD GAME
		        </a>
		    </div>
		</header>

        <div class="table-container">

            <c:choose>

                <c:when test="${empty games}">
                    <div class="empty-state">
                        <div class="empty-inner">
                            <p>NO GAMES FOUND</p>
                        </div>
                    </div>
                </c:when>

                <c:otherwise>

                    <table class="game-table">

                        <thead>
                        <tr>
                            <th>GAME TITLE</th>
                            <th>PRICE</th>
                            <th>RELEASE DATE</th>
                            <th>CREATOR</th>
                            <th style="text-align:center;">ACTIONS</th>
                        </tr>
                        </thead>

                        <tbody>

                        <c:forEach var="game" items="${games}">
                            <tr class="game-row">

                                <td>
                                    <span class="game-title">${game.title}</span>
                                </td>

                                <td>
                                    ${game.price}
                                </td>

                                <td>
                                    <fmt:formatDate value="${game.dateAdded}" pattern="dd MMM, yyyy"/>
                                </td>

                                <td>
                                    ${game.creator}
                                </td>

                                <td style="text-align:center;">
                                    <a href="${pageContext.request.contextPath}/editGame?id=${game.gameId}"
                                       class="edit-btn">
                                        Edit
                                    </a>
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