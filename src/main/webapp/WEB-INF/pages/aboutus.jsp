<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>About Us | GameVault</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/global.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/aboutus.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/sidebar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css">
</head>
<body>

    <jsp:include page="../components/sidebar.jsp" />
    
    <main class="main">
        <section class="about-hero">
            <h1 class="page-title">About GameVault</h1>
            <p class="tagline">The ultimate repository for digital adventures.</p>
        </section>

        <section class="about-content">
            <div class="content-card">
                <h2 class="sub-title">Our Mission</h2>
                <p>
                    GameVault was founded in 2026 with a vision to bridge the gap between massive digital libraries and the gamers who own them. 
                    In an era where digital collections span hundreds of titles across multiple platforms, we recognized the need for a unified, 
                    high-performance vault that treats your software collection as a curated gallery rather than a simple list of files.
                </p>
                <p>
                    Our platform is built on a "gamer-first" design philosophy. We utilize cutting-edge web technologies to ensure that 
                    navigating through thousands of entries is as smooth as a high-refresh-rate display. From intricate metadata tracking 
                    to visual storytelling through cinematic hero images, every pixel is optimized to celebrate the art of gaming. 
                    We believe that managing your games should be an experience just as engaging as playing them.
                </p>
            </div>
        </section>

        <section class="team-section">
		    <h2 class="sub-title">The Project Team</h2>
		    <div class="team-list">
		        
		        <div class="team-card horizontal">
		            <div class="member-image">
		                <img src="${pageContext.request.contextPath}/images/default_placeholder.png" alt="Lead Developer">
		            </div>
		            <div class="member-info">
		                <h3>Ashraya Belbase</h3>
		                <span class="role">Lead Developer</span>
		                <p>
		                    As the Lead Developer, Ashraya architected the core engine of GameVault. From implementing robust 
		                    Servlet-based controllers to managing complex relational database schemas, their focus is on 
		                    scalability and backend security. They ensure that the vault remains secure, authenticated, 
		                    and capable of handling rapid data retrieval for thousands of users simultaneously.
		                </p>
		            </div>
		        </div>
		
		        <div class="team-card horizontal">
		            <div class="member-image">
		                <img src="${pageContext.request.contextPath}/images/default_placeholder.png" alt="UI/UX Designer">
		            </div>
		            <div class="member-info">
		                <h3>Surakshya Karki</h3>
		                <span class="role">UI/UX Designer</span>
		                <p>
		                    Surakshya is the creative force behind GameVault's distinct neon aesthetic. By prioritizing high-contrast 
		                    visuals and intuitive navigation flows, they transformed a standard database application into a 
		                    cinematic digital experience. Their work focuses on user journey mapping, ensuring that from 
		                    the moment a user logs in, every interaction feels responsive and purposeful.
		                </p>
		            </div>
		        </div>
		
		        <div class="team-card horizontal">
		            <div class="member-image">
		                <img src="${pageContext.request.contextPath}/images/default_placeholder.png" alt="Frontend Engineer">
		            </div>
		            <div class="member-info">
		                <h3>Rizen Shrestha</h3>
		                <span class="role">Frontend Engineer</span>
		                <p>
		                    Specializing in the intersection of design and code, Rizen handles the intricate JSP and CSS 
		                    integrations that bring the vault to life. They are responsible for making GameVault fully 
		                    responsive across all devices and implementing the dynamic JavaScript features—like the 
		                    multi-image hero galleries—that give the platform its interactive, high-tech edge.
		                </p>
		            </div>
		        </div>
		        
		    </div>
		</section>
        
        <jsp:include page="../components/footer.jsp" />
    </main>

</body>
</html>