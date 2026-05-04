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
                    <form action="${pageContext.request.contextPath}/games" method="get">
                        <input type="text"
                               name="search"
                               class="search-input"
                               placeholder="SEARCH GAMES..."
                               value="${param.search}" />
                    </form>
                </div>
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
                                    $${game.price}
                                </td>

                                <td>
                                    <fmt:formatDate value="${game.releaseDate}" pattern="dd MMM, yyyy"/>
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