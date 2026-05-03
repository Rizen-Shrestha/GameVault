<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>GameVault</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/globals.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/home.css">
	</head>
	
	<body>
	
		<jsp:include page="../components/sidebar.jsp" />
		
		<main class="main">
			<section id="hero-carousel" class="hero-container">
				<div class="hero-content">
					<div class="featured-badge">
						<span class="dot"></span> FEATURED GAME OF THE WEEK
					</div>
					<h1 id="hero-title">CRIMSON<br><span class="highlight">PROTOCOL</span></h1>
					<p id="hero-description">Experience the ultimate tactical extraction shooter set in the hyper-neon corridors of Neo-City.</p>
					
					<div class="hero-btns">
						<button class="btn-play">PLAY NOW</button>
						<button class="btn-details">VIEW DETAILS</button>
					</div>
				</div>
			
				<div class="hero-progress">
					<div class="progress-segment active"></div>
					<div class="progress-segment"></div>
					<div class="progress-segment"></div>
					<div class="progress-segment"></div>
				</div>
			</section>
			
			<section class="library-section">
				<div class="library-header">
					<h2 style="color: #d982ff">YOUR LIBRARY</h2>
					<a href="#" class="view-all">VIEW FULL LIBRARY <span>↗</span></a>
				</div>
			
				<div class="library-scroll" style="color:#94a3b8">
					<div class="game-card">
						<div class="card-img-wrapper">
							<img src="${pageContext.request.contextPath}/images/default_placeholder.png" alt="Cyberpunk">
						</div>
						<h3>CYBERPUNK 2077</h3>
						<div class="card-stats">
							<div class="stat-row"><span>TIME PLAYED</span> <span class="stat-val">248 HOURS</span></div>
							<div class="stat-row"><span>LAST PLAYED</span> <span class="stat-val">YESTERDAY</span></div>
						</div>
						<button class="btn-card-play">▶ PLAY NOW</button>
					</div>
			
					<div class="game-card">
						<div class="card-img-wrapper">
							<img src="${pageContext.request.contextPath}/images/default_placeholder.png" alt="Elden Ring">
							<div class="update-overlay">UPDATE AVAILABLE</div>
						</div>
						<h3>ELDEN RING</h3>
						<div class="card-stats">
							<div class="stat-row"><span>TIME PLAYED</span> <span class="stat-val">112 HOURS</span></div>
							<div class="stat-row"><span>LAST PLAYED</span> <span class="stat-val">3 DAYS AGO</span></div>
						</div>
						<button class="btn-card-update">⭳ UPDATE GAME</button>
					</div>
			
					<div class="game-card">
						<div class="card-img-wrapper">
							<img src="${pageContext.request.contextPath}/images/default_placeholder.png" alt="Starfield">
						</div>
						<h3>STARFIELD</h3>
						<div class="card-stats">
							<div class="stat-row"><span>TIME PLAYED</span> <span class="stat-val">54 HOURS</span></div>
							<div class="stat-row"><span>LAST PLAYED</span> <span class="stat-val">FEB 02, 2024</span></div>
						</div>
						<button class="btn-card-play">▶ PLAY NOW</button>
					</div>
					
					<div class="game-card">
						<div class="card-img-wrapper">
							<img src="${pageContext.request.contextPath}/images/default_placeholder.png" alt="Starfield">
						</div>
						<h3>STARFIELD</h3>
						<div class="card-stats">
							<div class="stat-row"><span>TIME PLAYED</span> <span class="stat-val">54 HOURS</span></div>
							<div class="stat-row"><span>LAST PLAYED</span> <span class="stat-val">FEB 02, 2024</span></div>
						</div>
						<button class="btn-card-play">▶ PLAY NOW</button>
					</div>
					
					<div class="game-card">
						<div class="card-img-wrapper">
							<img src="${pageContext.request.contextPath}/images/default_placeholder.png" alt="Starfield">
						</div>
						<h3>STARFIELD</h3>
						<div class="card-stats">
							<div class="stat-row"><span>TIME PLAYED</span> <span class="stat-val">54 HOURS</span></div>
							<div class="stat-row"><span>LAST PLAYED</span> <span class="stat-val">FEB 02, 2024</span></div>
						</div>
						<button class="btn-card-play">▶ PLAY NOW</button>
					</div>
				</div>
			</section>
			
			<section class="stats-bar">
				<div class="stat-item">
					<span class="stat-label">GAMES OWNED</span>
					<span class="stat-number green-glow">15</span>
				</div>
				<div class="stat-item">
					<span class="stat-label">HOURS PLAYED</span>
					<span class="stat-number purple-glow">500</span>
				</div>
				<div class="stat-item">
					<span class="stat-label">PREMIUM GAMES</span>
					<span class="stat-number green-glow">4</span>
				</div>
				<div class="stat-item">
					<span class="stat-label">WISHLIST</span>
					<span class="stat-number purple-glow">3</span>
				</div>
			</section>
			
			<section class="discounts-section">
				<div class="sale-main-card">
					<span class="event-tag">SEASONAL EVENT</span>
					<h2 style="color: #d982ff">MEGA SALE ON<br>SELECTED GAMES</h2>
					<p>Up to 90% off across the entire Archive catalogue.</p>
					<a href="#" class="shop-link">SHOP THE SALE ></a>
					<img src="${pageContext.request.contextPath}/images/default_placeholder.png" alt="Mascot" class="sale-mascot">
				</div>
			
				<div class="sale-side-column">
					<div class="deal-card">
						<div class="deal-header">
							<span class="deal-label">DAILY DEAL</span>
							<span class="discount-pct">-85%</span>
						</div>
						<h3 style="color: #d982ff">VOID RUNNER</h3>
						<p class="timer">🕒 ENDS IN 08:42:12</p>
						<button class="btn-view-deal">VIEW DEAL</button>
					</div>
			
					<div class="free-game-card">
						<div class="free-content">
							<span class="free-label">FREE THIS WEEK</span>
							<h3 style="color: #d982ff">DUSKLIGHT</h3>
							<p style="color: #4ade80">Available until Feb 14</p>
						</div>
						<img src="${pageContext.request.contextPath}/images/default_placeholder.png" alt="Dusklight" class="free-thumb">
					</div>
				</div>
			</section>
			
			<section class="trending-section">
				<div class="section-header">
					<h2 style="color: #d982ff">TRENDING GAMES</h2>
					<div class="slider-controls">
						<button class="ctrl-btn">❮</button>
						<button class="ctrl-btn">❯</button>
					</div>
				</div>
				<div class="trending-grid" style="color: #94a3b8">
					<div class="trend-card">
						<div class="trend-img">
							<img src="${pageContext.request.contextPath}/images/default_placeholder.png" alt="Shadow of Ronin">
							<span class="genre-tag">ACTION / RPG</span>
						</div>
						<div class="trend-info">
							<h3>SHADOW OF RONIN</h3>
							<div class="trend-footer">
								<span class="rating">⭐ 4.9</span>
								<span class="price">$59.99</span>
							</div>
						</div>
					</div>
				
					<div class="trend-card">
						<div class="trend-img">
							<img src="${pageContext.request.contextPath}/images/default_placeholder.png" alt="Void Walker">
							<span class="genre-tag">SCI-FI</span>
						</div>
						<div class="trend-info">
							<h3>VOID WALKER</h3>
							<div class="trend-footer">
								<span class="rating">⭐ 4.7</span>
								<span class="price">$45.00</span>
							</div>
						</div>
					</div>
				
					<div class="trend-card">
						<div class="trend-img">
							<img src="${pageContext.request.contextPath}/images/default_placeholder.png" alt="Neon Velocity">
							<span class="genre-tag">RACING</span>
						</div>
						<div class="trend-info">
							<h3>NEON VELOCITY</h3>
							<div class="trend-footer">
								<span class="rating">⭐ 4.8</span>
								<span class="price">$39.99</span>
							</div>
						</div>
					</div>
				</div>
			</section>
			
			<section class="arrivals-section">
				<div class="section-header">
					<h2 style="color: #d982ff">LATEST ARRIVALS</h2>
					<a href="#" class="view-all-link">VIEW ALL></a>
				</div>
				<div class="arrivals-grid" style="color: #94a3b8">
					<div class="arrival-card">
						<img src="${pageContext.request.contextPath}/images/default_placeholder.png" alt="Eldritch" class="arrival-thumb">
						<div class="arrival-info">
							<span class="genre-label">FANTASY / HORROR</span>
							<h3>ELDRITCH</h3>
							<button class="btn-add-cart">ADD TO CART</button>
						</div>
					</div>
				
					<div class="arrival-card">
						<img src="${pageContext.request.contextPath}/images/default_placeholder.png" alt="Cyber Co" class="arrival-thumb">
						<div class="arrival-info">
							<span class="genre-label">CYBERNETIC</span>
							<h3>CYBERCO</h3>
							<button class="btn-add-cart">ADD TO CART</button>
						</div>
					</div>
				
					<div class="arrival-card">
						<img src="${pageContext.request.contextPath}/images/default_placeholder.png" alt="Monolith" class="arrival-thumb">
						<div class="arrival-info">
							<span class="genre-label">ADVENTURE</span>
							<h3>MONOLITH</h3>
							<button class="btn-add-cart">ADD TO CART</button>
						</div>
					</div>
				</div>
			</section>
			
			<section class="store-lists-container">
				<div class="lists-grid" style="color: #94a3b8">
					<div class="list-column">
						<h3>TOP SELLERS</h3>
						<div class="list-item">
							<img src="${pageContext.request.contextPath}/images/default_placeholder.png" alt="Circuit Breaker">
							<div class="item-info">
								<h4>CIRCUIT BREAKER</h4>
								<p>Action • $29.99</p>
							</div>
						</div>
						<div class="list-item">
							<img src="${pageContext.request.contextPath}/images/default_placeholder.png" alt="Data Stream">
							<div class="item-info">
								<h4>DATA STREAM</h4>
								<p>Strategy • $14.99</p>
							</div>
						</div>
						<div class="list-item">
							<img src="${pageContext.request.contextPath}/images/default_placeholder.png" alt="Neo Noir">
							<div class="item-info">
								<h4>NEO NOIR</h4>
								<p>RPG • $44.99</p>
							</div>
						</div>
					</div>
			
					<div class="list-column">
						<h3>EDITOR'S CHOICE</h3>
						<div class="list-item">
							<img src="${pageContext.request.contextPath}/images/default_placeholder.png" alt="Etheria">
							<div class="item-info">
								<h4>ETHERIA</h4>
								<p>Adventure • $34.99</p>
							</div>
						</div>
						<div class="list-item">
							<img src="${pageContext.request.contextPath}/images/default_placeholder.png" alt="Velocity">
							<div class="item-info">
								<h4>VELOCITY 2099</h4>
								<p>Racing • $19.99</p>
							</div>
						</div>
						<div class="list-item">
							<img src="${pageContext.request.contextPath}/images/default_placeholder.png" alt="Core Pulse">
							<div class="item-info">
								<h4>CORE PULSE</h4>
								<p>Action • $24.99</p>
							</div>
						</div>
					</div>
			
					<div class="list-column">
						<h3>UNDER $20</h3>
						<div class="list-item">
							<img src="${pageContext.request.contextPath}/images/default_placeholder.png" alt="Pixel Void">
							<div class="item-info">
								<h4>PIXEL VOID</h4>
								<p>Indie • $9.99</p>
							</div>
						</div>
						<div class="list-item">
							<img src="${pageContext.request.contextPath}/images/default_placeholder.png" alt="Arcade Legacy">
							<div class="item-info">
								<h4>ARCADE LEGACY</h4>
								<p>Retro • $4.99</p>
							</div>
						</div>
						<div class="list-item">
							<img src="${pageContext.request.contextPath}/images/default_placeholder.png" alt="Logic Gate">
							<div class="item-info">
								<h4>LOGIC GATE</h4>
								<p>Puzzle • $12.00</p>
							</div>
						</div>
					</div>
			
					<div class="spotlight-card">
						<span class="spotlight-label">INDIE SPOTLIGHT</span>
						<h2>KATANA ZERO: RELOADED</h2>
						<p>A stylish neo-noir, action-platformer featuring breakneck action and instant-death combat. Slash, dash, and manipulate time to unravel your past.</p>
						<div class="spotlight-img-box">
							<img src="${pageContext.request.contextPath}/images/default_placeholder.png" alt="Katana Zero">
						</div>
						<button class="btn-spotlight">EXPLORE INDIE</button>
					</div>
				</div>
			</section>
			
			<section class="dev-cta-container">
				<div class="dev-cta-content">
					<h1 style="color: #d982ff">Bring Your <span style="color: #4ade80">World</span><br>to Our <span style="color: #4ade80">Players!</span></h1>
					<p>Join a curated ecosystem designed to put great games in front of the right eyes. Submit your project today and start building your community.</p>
					<button class="btn-submit-game">Submit Your Game!</button>
				</div>
			</section>
			
			<jsp:include page="../components/footer.jsp" />

		</main>
		
		<script>
			const slides = [
				{
					title: 'CRIMSON<br><span class="highlight">PROTOCOL</span>',
					desc: 'Experience the ultimate tactical extraction shooter set in the hyper-neon corridors of Neo-City.',
					img: '${pageContext.request.contextPath}/images/default_placeholder.png'
				},
				{
					title: 'VOID<br><span class="highlight">WALKER</span>',
					desc: 'Step into the shoes of a dimensional traveler in this mind-bending action adventure.',
					img: '${pageContext.request.contextPath}/images/default_placeholder.png'
				},
				{
					title: 'NEON<br><span class="highlight">VELOCITY</span>',
					desc: 'The fastest illegal street racing circuit in the galaxy. High stakes, higher speed.',
					img: '${pageContext.request.contextPath}/images/default_placeholder.png'
				},
				{
					title: 'SHADOW OF<br><span class="highlight">RONIN</span>',
					desc: 'Master the blade in a world where ancient tradition meets cybernetic future.',
					img: '${pageContext.request.contextPath}/images/default_placeholder.png'
				}
			];
		
			let currentIndex = 0;
			const heroSection = document.getElementById('hero-carousel');
			const heroTitle = document.getElementById('hero-title');
			const heroDesc = document.getElementById('hero-description');
			const segments = document.querySelectorAll('.progress-segment');
		
			function changeSlide() {
				currentIndex = (currentIndex + 1) % slides.length;
				const data = slides[currentIndex];
		
				heroSection.style.opacity = "0.9"; 
				
				setTimeout(() => {
					heroTitle.innerHTML = data.title;
					heroDesc.textContent = data.desc;
					heroSection.style.backgroundImage = `linear-gradient(to right, rgba(0,0,0,0.8), transparent), url('${data.img}')`;
					
					segments.forEach((seg, idx) => {
						seg.classList.toggle('active', idx === currentIndex);
					});
		
					heroSection.style.opacity = "1";
				}, 300);
			}
		
			setInterval(changeSlide, 5000);
		</script>
	</body>
</html>