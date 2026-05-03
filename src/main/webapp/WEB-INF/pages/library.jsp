<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Your Library</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/global.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/library.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/sidebar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css">
    
</head>
<body>

    <jsp:include page="../components/sidebar.jsp" />
    <main class="main">
        <section class="library-header-group">
            <h1 class="page-title">Your Library</h1>
        </section>

        <section class="recommended-area">
            <h2 class="sub-title">Recommended for You</h2>
            <div class="library-grid">
                <div class="library-card">
                    <div class="card-image-box">
                        <img src="images/game1.jpg" alt="Game">
                    </div>
                    <h3>Cyberpunk 2077</h3>
                    <div class="card-details">
                        <div class="detail-row">
                            <span>GENRE</span>
                            <span class="purple-text">RPG</span>
                        </div>
                    </div>
                    <button class="btn-play">View Store</button>
                </div>
                
                <div class="library-card">
                    <div class="card-image-box">
                        <img src="images/game3.jpg" alt="Game">
                    </div>
                    <h3>Hades II</h3>
                    <div class="card-details">
                        <div class="detail-row">
                            <span>GENRE</span>
                            <span class="purple-text">ACTION</span>
                        </div>
                    </div>
                    <button class="btn-play">View Store</button>
                </div>

                <div class="library-card">
                    <div class="card-image-box">
                        <img src="images/game4.jpg" alt="Game">
                    </div>
                    <h3>Starfield</h3>
                    <div class="card-details">
                        <div class="detail-row">
                            <span>GENRE</span>
                            <span class="purple-text">SCI-FI</span>
                        </div>
                    </div>
                    <button class="btn-play">View Store</button>
                </div>

                <div class="library-card">
                    <div class="card-image-box">
                        <img src="images/game5.jpg" alt="Game">
                    </div>
                    <h3>The Witcher 3</h3>
                    <div class="card-details">
                        <div class="detail-row">
                            <span>GENRE</span>
                            <span class="purple-text">RPG</span>
                        </div>
                    </div>
                    <button class="btn-play">View Store</button>
                </div>
            </div>
        </section>
        
        <section class="owned-area">
        	
            <h2 class="sub-title">Owned Games</h2>
            
            <div class="search-genre">
		        <div class="library-controls">
		            <div class="search-box">
		                <input type="text" placeholder="Search your collection...">
		            </div>
		            
		            <div class="genre-select-wrapper">
		                <select class="genre-dropdown">
		                    <option value="all">All Genres</option>
		                    <option value="action">Action</option>
		                    <option value="rpg">RPG</option>
		                    <option value="strategy">Strategy</option>
		                    <option value="indie">Indie</option>
		                </select>
		            </div>
		        </div>
		    </div>
            <div class="library-grid">
                <div class="library-card">
                    <div class="card-image-box">
                        <img src="images/game2.jpg" alt="Game">
                    </div>
                    <h3>Elden Ring</h3>
                    <div class="card-details">
                        <div class="detail-row">
                            <span>TIME PLAYED</span>
                            <span class="purple-text">124 HRS</span>
                        </div>
                        <div class="detail-row">
                            <span>LAST PLAYED</span>
                            <span>2 DAYS AGO</span>
                        </div>
                    </div>
                    <button class="btn-play">Play Now</button>
                </div>

                <div class="library-card">
                    <div class="card-image-box">
                        <img src="images/game6.jpg" alt="Game">
                    </div>
                    <h3>Ghost of Tsushima</h3>
                    <div class="card-details">
                        <div class="detail-row">
                            <span>TIME PLAYED</span>
                            <span class="purple-text">86 HRS</span>
                        </div>
                        <div class="detail-row">
                            <span>LAST PLAYED</span>
                            <span>YESTERDAY</span>
                        </div>
                    </div>
                    <button class="btn-play">Play Now</button>
                </div>

                <div class="library-card">
                    <div class="card-image-box">
                        <img src="images/game7.jpg" alt="Game">
                    </div>
                    <h3>Valorant</h3>
                    <div class="card-details">
                        <div class="detail-row">
                            <span>TIME PLAYED</span>
                            <span class="purple-text">542 HRS</span>
                        </div>
                        <div class="detail-row">
                            <span>LAST PLAYED</span>
                            <span>TODAY</span>
                        </div>
                    </div>
                    <button class="btn-play">Play Now</button>
                </div>

                <div class="library-card">
                    <div class="card-image-box">
                        <img src="images/game8.jpg" alt="Game">
                    </div>
                    <h3>Doom Eternal</h3>
                    <div class="card-details">
                        <div class="detail-row">
                            <span>TIME PLAYED</span>
                            <span class="purple-text">45 HRS</span>
                        </div>
                        <div class="detail-row">
                            <span>LAST PLAYED</span>
                            <span>1 WEEK AGO</span>
                        </div>
                    </div>
                    <button class="btn-play">Play Now</button>
                </div>
            </div>
        </section>
    	<jsp:include page="../components/footer.jsp" />
    </main>

</body>
</html>