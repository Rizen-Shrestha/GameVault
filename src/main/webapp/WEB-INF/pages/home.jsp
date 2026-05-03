<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
    <title>GameVault | Home</title>
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/global.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/sidebar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/home.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css">
</head>
<body>

    <jsp:include page="../components/sidebar.jsp" />
    
    <main class="main">
		<!-- Hero Section -->
		<section id="hero-carousel" class="hero-carousel-section">
		    <div class="hero-inner">
		        <div class="hero-content-wrapper">
		            
		            <h1 class="hero-main-title" id="hero-title">
		                CRIMSON<br><span class="purple-glow-text">PROTOCOL</span>
		            </h1>
		            
		            <p class="hero-desc" id="hero-desc">
		                Experience the ultimate tactical extraction shooter set in the hyper-neon corridors of Neo-City.
		            </p>
		            
		            <div class="hero-button-group">
		                <button class="btn-primary-purple">PLAY NOW</button>
		                <button class="btn-secondary-outline">VIEW DETAILS</button>
		            </div>
		        </div>
		
		        <div class="hero-bottom-nav">
		            <!-- Ensure these stay in the HTML -->
		            <div class="nav-segment active" onclick="setSlide(0)"><div class="filler"></div></div>
		            <div class="nav-segment" onclick="setSlide(1)"><div class="filler"></div></div>
		            <div class="nav-segment" onclick="setSlide(2)"><div class="filler"></div></div>
		            <div class="nav-segment" onclick="setSlide(3)"><div class="filler"></div></div>
		        </div>
		    </div>
		</section>
	
	    <!-- 2. YOUR LIBRARY -->
	    <!-- Your Library Section -->
		<section class="home-section library-section">
		    <div class="section-header">
		        <h2 class="section-title">YOUR LIBRARY</h2>
		        <a href="library.jsp" class="view-full-link">
		            VIEW FULL LIBRARY <span class="icon-external">↗</span>
		        </a>
		    </div>
		
		    <div class="library-grid">
		        <!-- Card 1: Cyberpunk -->
		        <div class="library-card">
		            <div class="card-image-box">
		                <img src="${pageContext.request.contextPath}/images/default_placeholder.png" alt="Cyberpunk 2077">
		            </div>
		            <div class="card-content">
		                <h3>CYBERPUNK 2077</h3>
		                <div class="card-details">
		                    <div class="detail-row"><span>TIME PLAHED</span> <span class="purple-text">248 HOURS</span></div>
		                    <div class="detail-row"><span>LAST PLAHED</span> <span class="purple-text">HESTERDAH</span></div>
		                </div>
		                <button class="btn-lib-primary">
		                    <span class="btn-icon">▶</span> PLAY NOW
		                </button>
		            </div>
		        </div>
		
		        <!-- Card 2: Elden Ring (Update variant) -->
		        <div class="library-card">
		            <div class="card-image-box">
		                <img src="${pageContext.request.contextPath}/images/elden_ring.jpg" alt="Elden Ring">
		                <div class="update-overlay">UPDATE AVAILABLE</div>
		            </div>
		            <div class="card-content">
		                <h3>ELDEN RING</h3>
		                <div class="card-details">
		                    <div class="detail-row"><span>TIME PLAHED</span> <span class="purple-text">112 HOURS</span></div>
		                    <div class="detail-row"><span>LAST PLAHED</span> <span class="purple-text">3 DAHS AGO</span></div>
		                </div>
		                <button class="btn-lib-outline">
		                    <span class="btn-icon">⭳</span> UPDATE GAME
		                </button>
		            </div>
		        </div>
		
		        <!-- Card 3: Starfield -->
		        <div class="library-card">
		            <div class="card-image-box">
		                <img src="${pageContext.request.contextPath}/images/starfield.jpg" alt="Starfield">
		            </div>
		            <div class="card-content">
		                <h3>STARFIELD</h3>
		                <div class="card-details">
		                    <div class="detail-row"><span>TIME PLAHED</span> <span class="purple-text">54 HOURS</span></div>
		                    <div class="detail-row"><span>LAST PLAHED</span> <span class="purple-text">FEB 02, 2024</span></div>
		                </div>
		                <button class="btn-lib-primary">
		                    <span class="btn-icon">▶</span> PLAY NOW
		                </button>
		            </div>
		        </div>
		
		        <!-- Card 4: Ghostrunner -->
		        <div class="library-card">
		            <div class="card-image-box">
		                <img src="${pageContext.request.contextPath}/images/ghostrunner.jpg" alt="Ghostrunner">
		            </div>
		            <div class="card-content">
		                <h3>GHOSTRUNNER</h3>
		                <div class="card-details">
		                    <div class="detail-row"><span>TIME PLAHED</span> <span class="purple-text">54 HOURS</span></div>
		                    <div class="detail-row"><span>LAST PLAHED</span> <span class="purple-text">FEB 02, 2024</span></div>
		                </div>
		                <button class="btn-lib-primary">
		                    <span class="btn-icon">▶</span> PLAY NOW
		                </button>
		            </div>
		        </div>
		    </div>
		</section>
	
	    <!-- 3. LIBRARY STATS -->
		<section class="stats-overview-section">
		    <div class="stats-container">
		        <!-- Games Owned -->
		        <div class="stat-item">
		            <span class="stat-label">GAMES OWNED</span>
		            <span class="stat-value neon-green-text">15</span>
		        </div>
		
		        <!-- Hours Played -->
		        <div class="stat-item">
		            <span class="stat-label">HOURS PLAYED</span>
		            <span class="stat-value neon-purple-text">500</span>
		        </div>
		
		        <!-- Premium Games -->
		        <div class="stat-item">
		            <span class="stat-label">PREMIUM GAMES</span>
		            <span class="stat-value neon-green-text">4</span>
		        </div>
		
		        <!-- Wishlist -->
		        <div class="stat-item">
		            <span class="stat-label">WISHLIST</span>
		            <span class="stat-value neon-purple-text">3</span>
		        </div>
		    </div>
		</section>
	
	    <!-- 4. SALES AREA -->
	    <section class="sales-section">
		    <!-- Left: Mega Sale Banner -->
		    <div class="mega-sale-banner">
		        <div class="banner-content">
		            <span class="event-tag">SEASONAL EVENT</span>
		            <h2 class="banner-title">MEGA SALE ON SELECTED GAMES</h2>
		            <p class="banner-subtitle">Up to 90% off across the entire Archive catalogue.</p>
		            <a href="#" class="shop-link">SHOP THE SALE ></a>
		        </div>
		        <!-- Optional: Add a darkened image grid background in CSS -->
		    </div>
		
		    <!-- Right: Sidebar Deals -->
		    <div class="deals-sidebar">
		        <!-- Daily Deal -->
		        <div class="daily-deal-card">
		            <div class="deal-header">
		                <span class="deal-label">DAILY DEAL</span>
		                <span class="discount-tag">-85%</span>
		            </div>
		            <h3 class="deal-game-title">VOID RUNNER</h3>
		            <div class="timer">
		                <span class="icon-clock">🕒</span> ENDS IN 08:42:12
		            </div>
		            <button class="btn-view-deal">VIEW DEAL</button>
		        </div>
		
		        <!-- Free This Week -->
		        <div class="free-game-card">
		            <div class="free-content">
		                <span class="free-label">FREE THIS WEEK</span>
		                <h3 class="free-game-title">DUSKLIGHT</h3>
		                <p class="free-date">Available until Feb 14</p>
		            </div>
		            <div class="free-thumb">
		                <img src="${pageContext.request.contextPath}/images/dusklight_thumb.jpg" alt="Dusklight">
		            </div>
		        </div>
		    </div>
		</section>
		
		<!-- Trending Games Section -->
		<section class="home-section trending-section">
		    <div class="section-header">
		        <h2 class="section-title">TRENDING GAMES</h2>
		        <div class="carousel-controls">
		            <button class="ctrl-btn">❮</button>
		            <button class="ctrl-btn">❯</button>
		        </div>
		    </div>
		    
		    <div class="trending-grid">
		        <!-- Card 1 -->
		        <div class="trending-card">
		            <div class="card-img-wrapper">
		                <img src="${pageContext.request.contextPath}/images/default_placeholder.png" alt="Shadow of Ronin">
		                <span class="genre-tag">ACTION / RPG</span>
		            </div>
		            <div class="card-info">
		                <h3>SHADOW OF RONIN</h3>
		                <div class="card-footer">
		                    <span class="rating">★ 4.9</span>
		                    <span class="price">$59.99</span>
		                </div>
		            </div>
		        </div>
		        
		        <div class="trending-card">
		            <div class="card-img-wrapper">
		                <img src="${pageContext.request.contextPath}/images/default_placeholder.png" alt="Shadow of Ronin">
		                <span class="genre-tag">ACTION / RPG</span>
		            </div>
		            <div class="card-info">
		                <h3>SHADOW OF RONIN</h3>
		                <div class="card-footer">
		                    <span class="rating">★ 4.9</span>
		                    <span class="price">$59.99</span>
		                </div>
		            </div>
		        </div>
		        
		        <div class="trending-card">
		            <div class="card-img-wrapper">
		                <img src="${pageContext.request.contextPath}/images/default_placeholder.png" alt="Shadow of Ronin">
		                <span class="genre-tag">ACTION / RPG</span>
		            </div>
		            <div class="card-info">
		                <h3>SHADOW OF RONIN</h3>
		                <div class="card-footer">
		                    <span class="rating">★ 4.9</span>
		                    <span class="price">$59.99</span>
		                </div>
		            </div>
		        </div>
		        
		    </div>
		</section>
	
	    <!-- 7. TOP SALES / CATEGORIES -->
	    <section class="home-section top-sales-section">
		    <div class="sales-columns-wrapper">
		        
		        <!-- Column 1: Top Sellers -->
		        <div class="sales-column">
		            <h2 class="column-title">TOP SELLERS</h2>
		            <div class="sales-list">
		                <div class="sales-item">
		                    <img src="${pageContext.request.contextPath}/images/default_placeholder.png" alt="Circuit Breaker" class="item-thumb">
		                    <div class="item-info">
		                        <h4>CIRCUIT BREAKER</h4>
		                        <p>Action • $29.99</p>
		                    </div>
		                </div>
		                <div class="sales-item">
		                    <img src="${pageContext.request.contextPath}/images/default_placeholder.png" alt="Data Stream" class="item-thumb">
		                    <div class="item-info">
		                        <h4>DATA STREAM</h4>
		                        <p>Strategy • $14.99</p>
		                    </div>
		                </div>
		                <div class="sales-item">
		                    <img src="${pageContext.request.contextPath}/images/default_placeholder.png" alt="Neo Noir" class="item-thumb">
		                    <div class="item-info">
		                        <h4>NEO NOIR</h4>
		                        <p>RPG • $44.99</p>
		                    </div>
		                </div>
		            </div>
		        </div>
		
		        <!-- Column 2: Editor's Choice -->
		        <div class="sales-column">
		            <h2 class="column-title">EDITOR'S CHOICE</h2>
		            <div class="sales-list">
		                <div class="sales-item">
		                    <img src="${pageContext.request.contextPath}/images/default_placeholder.png" alt="Etheria" class="item-thumb">
		                    <div class="item-info">
		                        <h4>ETHERIA</h4>
		                        <p>Adventure • $34.99</p>
		                    </div>
		                </div>
		                <div class="sales-item">
		                    <img src="${pageContext.request.contextPath}/images/default_placeholder.png" alt="Etheria" class="item-thumb">
		                    <div class="item-info">
		                        <h4>ETHERIA</h4>
		                        <p>Adventure • $34.99</p>
		                    </div>
		                </div>
		                <div class="sales-item">
		                    <img src="${pageContext.request.contextPath}/images/default_placeholder.png" alt="Etheria" class="item-thumb">
		                    <div class="item-info">
		                        <h4>ETHERIA</h4>
		                        <p>Adventure • $34.99</p>
		                    </div>
		                </div>
		            </div>
		        </div>
		
		        <div class="sales-column">
		            <h2 class="column-title">UNDER $20</h2>
		            <div class="sales-list">
		                <div class="sales-item">
		                    <img src="${pageContext.request.contextPath}/images/default_placeholder.png" alt="Pixel Void" class="item-thumb">
		                    <div class="item-info">
		                        <h4>PIXEL VOID</h4>
		                        <p>Indie • $9.99</p>
		                    </div>
		                </div>
		                <div class="sales-item">
		                    <img src="${pageContext.request.contextPath}/images/default_placeholder.png" alt="Pixel Void" class="item-thumb">
		                    <div class="item-info">
		                        <h4>PIXEL VOID</h4>
		                        <p>Indie • $9.99</p>
		                    </div>
		                </div>
		                <div class="sales-item">
		                    <img src="${pageContext.request.contextPath}/images/default_placeholder.png" alt="Pixel Void" class="item-thumb">
		                    <div class="item-info">
		                        <h4>PIXEL VOID</h4>
		                        <p>Indie • $9.99</p>
		                    </div>
		                </div>
		            </div>
		        </div>
		
		        <div class="indie-spotlight-card">
		            <span class="spotlight-tag">INDIE SPOTLIGHT</span>
		            <h2 class="spotlight-title">KATANA ZERO: RELOADED</h2>
		            <p class="spotlight-desc">
		                A stylish neo-noir, action-platformer featuring breakneck action and instant-death combat. 
		                Slash, dash, and manipulate time to unravel your past in a beautifully brutal acrobatic display.
		            </p>
		            <div class="spotlight-img">
		                <img src="${pageContext.request.contextPath}/images/default_placeholder.png" alt="Katana Zero">
		            </div>
		            <button class="btn-explore">EXPLORE INDIE</button>
		        </div>
		
		    </div>
		</section>
	
	    <!-- Developer Contact/CTA Section -->
		<section class="dev-cta-section">
		    <div class="cta-overlay">
		        <div class="cta-content">
		            <h1 class="cta-title">
					    Bring Your <span class="text-purple">World</span><br>
					    to Our <span class="text-purple">Players</span>!
					</h1>
		            <p class="cta-description">
		                Join a curated ecosystem designed to put great games in front of the right eyes. 
		                Submit your project today and start building your community.
		            </p>
		            <button class="btn-submit-game">Submit Your Game!</button>
		        </div>
		    </div>
		</section>
	
	    <jsp:include page="../components/footer.jsp" />
	</main>

	<script>
		const gameData = [
		    {
		        title: 'CRIMSON<br><span class="purple-glow-text">PROTOCOL</span>',
		        desc: 'Experience the ultimate tactical extraction shooter set in the hyper-neon corridors of Neo-City.',
		        bg: '${pageContext.request.contextPath}/images/hero_bg.jpg'
		    },
		    {
		        title: 'VOID<br><span class="purple-glow-text">WALKER</span>',
		        desc: 'Master the shadows in this stealth action odyssey across a dying world.',
		        bg: '${pageContext.request.contextPath}/images/hero_void.jpg'
		    },
		    {
		        title: 'NEON<br><span class="purple-glow-text">VELOCITY</span>',
		        desc: 'High-octane racing through the rain-soaked streets of the lower sectors.',
		        bg: '${pageContext.request.contextPath}/images/hero_neon.jpg'
		    },
		    {
		        title: 'SHADOW OF<br><span class="purple-glow-text">RONIN</span>',
		        desc: 'A cybernetic samurai tale of revenge and honor in the neon sprawl.',
		        bg: '${pageContext.request.contextPath}/images/hero_ronin.jpg'
		    }
		];
		
		let currentIndex = 0;
		
		function setSlide(index) {
		    currentIndex = index;
		    const game = gameData[index];
		    
		    // 1. Update Text Content
		    document.getElementById('hero-title').innerHTML = game.title;
		    document.getElementById('hero-desc').innerText = game.desc;
		    
		    // 2. Update Background
		    document.getElementById('hero-carousel').style.backgroundImage = `url())`;
		    
		    // 3. Update Nav Highlights
		    const segments = document.querySelectorAll('.nav-segment');
		    segments.forEach((seg, i) => {
		        if (i === index) {
		            seg.classList.add('active');
		        } else {
		            seg.classList.remove('active');
		        }
		    });
		}
		
		// Auto-play logic
		setInterval(() => {
		    currentIndex = (currentIndex + 1) % gameData.length;
		    setSlide(currentIndex);
		}, 5000);
		
		// Initialize first slide on load
		window.onload = () => setSlide(0);
	</script>

</body>
</html>