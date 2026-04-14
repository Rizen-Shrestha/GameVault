<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>GameVault</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath }/css/home.css">
	</head>
	
	<body>
	
		<!-- SIDEBAR -->
		<div class="sidebar">
		    <div>
		        <div class="logo">DV</div>
		
		        <ul class="menu">
		            <li class="active">Home</li>
		            <li>Library</li>
		            <li>Explore</li>
		        </ul>
		    </div>
		
		    <div>
		        <ul class="menu">
		            <li>Settings</li>
		            <li>Support</li>
		        </ul>
		
		        <div class="user">
		            <img src="https://via.placeholder.com/35">
		            <span>PLAYER_123</span>
		        </div>
		    </div>
		</div>
		
		<!-- MAIN -->
		<div class="main">
		
		    <!-- HERO -->
		    <section class="hero">
		        <div>
		            <h1>CRIMSON <span>PROTOCOL</span></h1>
		            <p>Experience the ultimate tactical extraction shooter in Neo-City.</p>
		
		            <div class="buttons">
		                <button class="primary">Play Now</button>
		                <button class="secondary">View Details</button>
		            </div>
		        </div>
		    </section>
		
		    <!-- LIBRARY -->
		    <section class="section">
		        <h2>Your Library</h2>
		
		        <div class="cards">
		            <div class="card">
		                <img src="https://via.placeholder.com/200x120">
		                <h3>Cyberpunk 2077</h3>
		                <button>Play Now</button>
		            </div>
		
		            <div class="card">
		                <img src="https://via.placeholder.com/200x120">
		                <h3>Elden Ring</h3>
		                <button>Update</button>
		            </div>
		
		            <div class="card">
		                <img src="https://via.placeholder.com/200x120">
		                <h3>Starfield</h3>
		                <button>Play Now</button>
		            </div>
		        </div>
		    </section>
		
		    <!-- TRENDING -->
		    <section class="section">
		        <h2>Trending Games</h2>
		
		        <div class="cards">
		            <div class="card">
		                <img src="https://via.placeholder.com/200x120">
		                <h3>Shadow of Ronin</h3>
		                <p>$59.99</p>
		            </div>
		
		            <div class="card">
		                <img src="https://via.placeholder.com/200x120">
		                <h3>Void Walker</h3>
		                <p>$45.00</p>
		            </div>
		
		            <div class="card">
		                <img src="https://via.placeholder.com/200x120">
		                <h3>Neon Velocity</h3>
		                <p>$39.99</p>
		            </div>
		        </div>
		    </section>
		
		    <!-- CTA -->
		    <section class="cta">
		        <h2>Bring Your World to Our Players!</h2>
		        <p>Join a curated ecosystem and grow your audience.</p>
		        <button class="primary">Submit Your Game</button>
		    </section>
		
		</div>
		
	</body>
</html>