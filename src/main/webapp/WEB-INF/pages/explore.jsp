<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Explore Games</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/global.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/explore.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/sidebar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css">
</head>
<body>

    <jsp:include page="../components/sidebar.jsp" />
    <main class="main">
        <section class="explore-header">
            <div class="header-content">
                <h1 class="page-title">Explore</h1>
                <p class="tagline">Find your next favorite adventure.</p>
            </div>
        </section>

        <!-- Trending Section-->
        <section class="trending-area">
            <h2 class="sub-title">Trending Now</h2>
            <div class="trending-grid">
                <c:forEach var="game" items="${games}" begin="0" end="2">
                    <div class="trending-card">
                        <img src="${pageContext.request.contextPath}/getgameimage?name=${game.getSafeTitle()}_1" alt="${game.title}">
                        <div class="trending-overlay">
                            <h3>${game.title}</h3>
                            <button class="btn-explore">View Details</button>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </section>

        <!-- Search Bar-->
        <section class="explore-search-container">
            <form action="explore" method="GET" class="search-bar">
                <input type="text" name="search" placeholder="Search for games..." value="${param.search}">
                <button type="submit" class="search-btn">Search</button>
            </form>
        </section>

        <!-- Genres -->
        <section class="genre-discovery">
            <div class="genre-tags">
                <button class="tag active">All</button>
                <button class="tag">Action</button>
                <button class="tag">Adventure</button>
                <button class="tag">RPG</button>
                <button class="tag">Horror</button>
                <button class="tag">Open World</button>
                <button class="tag">Multiplayer</button>
            </div>
        </section>

        <!-- Browse Collection-->
        <section class="discovery-area">
            <h2 class="sub-title">Browse our Collection</h2>
            <c:if test="${empty games}">
			    <div class="no-results">
			        <p>No game found. Try a different search</p>
			    </div>
			</c:if>
            <div class="explore-grid">
                <c:forEach var="game" items="${games}">
                    <div class="explore-card">
                        <div class="card-img">
                            <img src="${pageContext.request.contextPath}/getgameimage?name=${game.getSafeTitle()}_1" alt="${game.title}">
                            <div class="price-tag">$${game.price}</div>
                        </div>
                        <div class="card-info">
                            <h3>${game.title}</h3>
                            <span class="genre-label">${game.genre}</span>
                        </div>
                    </div>
                </c:forEach>
            </div>               
        </section>

        <jsp:include page="../components/footer.jsp" />
    </main>
</body>
</html>