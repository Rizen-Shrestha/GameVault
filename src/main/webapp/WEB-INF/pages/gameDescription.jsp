<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Game Details | Cyberpunk 2077</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/global.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/gameDescription.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/sidebar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css">
</head>
<body>

    <jsp:include page="../components/sidebar.jsp" />
    
    <main class="main">
        <div class="details-container">
            
            <section class="details-left">
                <div class="hero-image-wrapper">
                    <img id="mainHeroImage" src="images/hero-cp2077-1.jpg" alt="Game Banner">
                </div>

                <div class="image-nav">
                    <img class="thumb active" src="${pageContext.request.contextPath}/images/default_placeholder.png" onclick="switchImage(this)" alt="Thumb 1">
                    <img class="thumb" src="${pageContext.request.contextPath}/images/default_placeholder.png" onclick="switchImage(this)" alt="Thumb 2">
                    <img class="thumb" src="${pageContext.request.contextPath}/images/default_placeholder.png" onclick="switchImage(this)" alt="Thumb 3">
                </div>
                
                <div class="description-box">
                    <h1 class="game-main-title">Cyberpunk 2077</h1>
                    
                    <div class="genre-tags">
                        <span class="tag">Open World</span>
                        <span class="tag">RPG</span>
                        <span class="tag">Action</span>
                    </div>

                    <p class="game-long-desc">
                        Cyberpunk 2077 is an open-world, action-adventure story set in Night City, 
                        a megalopolis obsessed with power, glamour and body modification. You play 
                        as V, a mercenary outlaw going after a one-of-a-kind implant that is the 
                        key to immortality.
                    </p>
                </div>
            </section>

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
                            <span>Release Date</span>
                            <span class="white-text">Dec 10, 2020</span>
                        </div>
                    </div>
                </div>
            </aside>
            
        </div>
        <jsp:include page="../components/footer.jsp" />
    </main>

    <script>
        function switchImage(element) {
            document.getElementById('mainHeroImage').src = element.src;
            
            const thumbnails = document.querySelectorAll('.thumb');
            thumbnails.forEach(thumb => thumb.classList.remove('active'));
            element.classList.add('active');
        }
    </script>

</body>
</html>