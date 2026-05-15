<%@ page isELIgnored="false" %>
<aside class="sidebar">
    <!-- Top Logo -->
    <div class="sidebar-logo">
        <a href="home.jsp" class="purple-glow">GV</a>
    </div>

    <!-- Main Navigation -->
    <nav class="sidebar-nav">
        <ul>
            <li class="active">
                <a href="${pageContext.request.contextPath}/home">HOME</a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/library">LIBRARY</a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/explore">EXPLORE</a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/aboutus">ABOUT US</a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/contact">CONTACT</a>
            </li>
        </ul>
    </nav>

    <!-- Bottom Group -->
    <div class="sidebar-bottom">
        <div class="secondary-nav">
            <a href="settings.jsp">SETTINGS</a>
            <a href="support.jsp">SUPPORT</a>
        </div>
        
        <div class="user-profile">
            <div class="pfp-wrapper">
                <!-- Ensure this image exists in your webapp/images folder -->
                <img src="${pageContext.request.contextPath}/images/user_pfp.png" alt="Profile">
            </div>
            <span class="username">PLAYER_123</span>
        </div>
    </div>
</aside>