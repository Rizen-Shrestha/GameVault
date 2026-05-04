<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Game Details | Cyberpunk 2077</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/global.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/details.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/sidebar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css">
</head>
<body>

    <jsp:include page="../components/sidebar.jsp" />
    
    <main class="main">
        <div class="details-container">
            
            <!-- Left Side: Cinematic & Info -->
            <section class="details-left">
                <div class="hero-image-wrapper">
                    <img src="images/hero-cp2077.jpg" alt="Game Banner">
                </div>
                
                <div class="description-box">
                    <h1 class="game-main-title">Cyberpunk 2077</h1>
                    <p class="game-long-desc">
                        Cyberpunk 2077 is an open-world, action-adventure story set in Night City, 
                        a megalopolis obsessed with power, glamour and body modification. You play 
                        as V, a mercenary outlaw going after a one-of-a-kind implant that is the 
                        key to immortality.
                    </p>
                </div>

                <div class="specs-section">
                    <h3 class="detail-sub-title">Specifications</h3>
                    <div class="specs-grid">
                        <div class="spec-item"><span>OS</span><strong>Windows 10 64-bit</strong></div>
                        <div class="spec-item"><span>Processor</span><strong>Intel Core i7-6700</strong></div>
                        <div class="spec-item"><span>Memory</span><strong>16 GB RAM</strong></div>
                        <div class="spec-item"><span>Graphics</span><strong>GTX 1060 6GB</strong></div>
                    </div>
                </div>
            </section>

            <!-- Right Side: Buy Card -->
            <aside class="details-right">
                <div class="purchase-card">
                    <div class="game-logo-small">
                        <img src="images/logo-cp2077.png" alt="Logo">
                    </div>
                    
                    <div class="price-display">
                        <span class="currency">$</span>
                        <span class="amount">59.99</span>
                    </div>

                    <div class="action-buttons">
                        <button class="btn-buy-now">Buy Now</button>
                        <button class="btn-add-cart">Add to Cart</button>
                    </div>

                    <div class="meta-info">
                        <div class="meta-row">
                            <span>Developer</span>
                            <span class="white-text">CD PROJEKT RED</span>
                        </div>
                        <div class="meta-row">
                            <span>Publisher</span>
                            <span class="white-text">CD PROJEKT RED</span>
                        </div>
                        <div class="meta-row">
                            <span>Release Date</span>
                            <span class="white-text">Dec 10, 2020</span>
                        </div>
                        <div class="meta-row">
                            <span>Genre</span>
                            <span class="neon-text">Open World, RPG</span>
                        </div>
                    </div>
                </div>
            </aside>
            
        </div>
        <jsp:include page="../components/footer.jsp" />
    </main>

</body>
</html>