<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
                    <img id="mainHeroImage" src="${pageContext.request.contextPath}/getgameimage?name=${game.getSafeTitle()}_1" alt="${game.title}">
                </div>

                <div class="image-nav">
                    <img class="thumb active" src="${pageContext.request.contextPath}/getgameimage?name=${game.getSafeTitle()}_1" onclick="switchImage(this)" alt="Thumb 1">
                    <img class="thumb" src="${pageContext.request.contextPath}/getgameimage?name=${game.getSafeTitle()}_2" onclick="switchImage(this)" alt="Thumb 2">
                    <img class="thumb" src="${pageContext.request.contextPath}/getgameimage?name=${game.getSafeTitle()}_3" onclick="switchImage(this)" alt="Thumb 3">
                </div>
                
                <div class="description-box">
				    <h1 class="game-main-title">${game.title}</h1>
				    
				    <div class="genre-text-display">
				        <strong>Genre:</strong> ${game.genre}
				    </div>
				
				    <p class="game-long-desc">${game.description}</p>
				</div>
            </section>

            <aside class="details-right">
                <div class="purchase-card">
                    <div class="game-logo-small">
                        <img src="${pageContext.request.contextPath}/getgameimage?name=${game.getSafeTitle()}_logo" alt="Logo" onerror="this.style.display='none'">
                    </div>
                    
                    <div class="price-display">
                        <span class="currency">$</span>
                        <span class="amount">${game.price}</span>
                    </div>

                    <div class="action-buttons">
                        <button class="btn-buy-now">Buy Now</button>
                        <button class="btn-add-cart">Add to Cart</button>
                    </div>

                    <div class="meta-info">
                        <div class="meta-row">
                            <span>Developer</span>
                            <span class="white-text">${game.creator}</span>
                        </div>
                        <div class="meta-row">
                            <span>Release Date</span>
                            <span class="white-text">${game.releaseDate}</span>
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