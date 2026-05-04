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
            
            <!-- Added Search Bar -->
            <div class="explore-search-container">
                <div class="search-bar">
                    <input type="text" placeholder="Search for games, publishers, or tags...">
                    <button class="search-btn">Search</button>
                </div>
            </div>
        </section>

        <!-- Trending Section -->
        <section class="trending-area">
            <h2 class="sub-title">Trending Now</h2>
            <div class="trending-grid">
                <div class="trending-card">
                    <img src="images/trending1.jpg" alt="Featured Game">
                    <div class="trending-overlay">
                        <span class="badge">🔥 HOT</span>
                        <h3>Black Myth: Wukong</h3>
                        <button class="btn-explore">Explore Now</button>
                    </div>
                </div>
                <div class="trending-card">
                    <img src="images/trending2.jpg" alt="Featured Game">
                    <div class="trending-overlay">
                        <span class="badge">NEW</span>
                        <h3>Star Wars Outlaws</h3>
                        <button class="btn-explore">Explore Now</button>
                    </div>
                </div>
            </div>
        </section>

        <!-- Genre Discovery -->
        <section class="genre-discovery">
            <div class="genre-tags">
                <button class="tag active">All</button>
                <button class="tag">Action</button>
                <button class="tag">Adventure</button>
                <button class="tag">Horror</button>
                <button class="tag">Multiplayer</button>
                <button class="tag">Open World</button>
                <button class="tag">RPG</button>
            </div>
        </section>

        <section class="discovery-area">
            <h2 class="sub-title">Popular Games</h2>
            <div class="explore-grid">
                <div class="explore-card">
                    <div class="card-img">
                        <img src="images/game9.jpg" alt="Game">
                        <div class="price-tag">$59.99</div>
                    </div>
                    <div class="card-info">
                        <h3>Final Fantasy VII Rebirth</h3>
                        <span class="genre-label">Action RPG</span>
                    </div>
                </div>
            
            	<div class="explore-card">
                    <div class="card-img">
                        <img src="images/game9.jpg" alt="Game">
                        <div class="price-tag">$59.99</div>
                    </div>
                    <div class="card-info">
                        <h3>Final Fantasy VII Rebirth</h3>
                        <span class="genre-label">Action RPG</span>
                    </div>
                </div>            
            
            	<div class="explore-card">
                    <div class="card-img">
                        <img src="images/game9.jpg" alt="Game">
                        <div class="price-tag">$59.99</div>
                    </div>
                    <div class="card-info">
                        <h3>Final Fantasy VII Rebirth</h3>
                        <span class="genre-label">Action RPG</span>
                    </div>
                </div>
            </div>               
          
            
        </section>

        <jsp:include page="../components/footer.jsp" />
    </main>

</body>
</html>