  <%@ page isELIgnored="false" %>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   
    <aside class="sidebar">
        <div class="sidebar-logo">
            <div class="logo-box">
                <img src="images/logo.png" alt="GameVault Logo" onerror="this.style.display='none'">
                <span class="logo-fallback">GV</span>
            </div>
        </div>
        <nav class="sidebar-nav">
			<a href="${pageContext.request.contextPath}/dashboard" class="${activePage == 'home' ? 'nav-item active' : 'nav-item'}">
			                <svg viewBox="0 0 24 24" fill="currentColor"><path d="M10 20v-6h4v6h5v-8h3L12 3 2 12h3v8z"/></svg>
                <span>HOME</span>
            </a>
			<a href="${pageContext.request.contextPath}/games" class="${activePage == 'games' ? 'nav-item active' : 'nav-item'}">
			                <svg viewBox="0 0 24 24" fill="currentColor"><path d="M21 6H3c-1.1 0-2 .9-2 2v8c0 1.1.9 2 2 2h18c1.1 0 2-.9 2-2V8c0-1.1-.9-2-2-2zm-10 7H8v3H6v-3H3v-2h3V8h2v3h3v2zm4.5 2c-.83 0-1.5-.67-1.5-1.5S14.67 12 15.5 12s1.5.67 1.5 1.5S16.33 15 15.5 15zm3-3c-.83 0-1.5-.67-1.5-1.5S17.67 10 18.5 10s1.5.67 1.5 1.5S19.33 12 18.5 12z"/></svg>
                <span>GAMES</span>
            </a>
			<a href="${pageContext.request.contextPath}/requests" class="${activePage == 'requests' ? 'nav-item active' : 'nav-item'}">
			                <svg viewBox="0 0 24 24" fill="currentColor"><path d="M20 2H4c-1.1 0-2 .9-2 2v18l4-4h14c1.1 0 2-.9 2-2V4c0-1.1-.9-2-2-2z"/></svg>
                <span>REQUESTS</span>
            </a>
			<a href="${pageContext.request.contextPath}/messages" class="${activePage == 'messages' ? 'nav-item active' : 'nav-item'}">
			                <svg viewBox="0 0 24 24" fill="currentColor"><path d="M20 4H4c-1.1 0-2 .9-2 2v12c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2zm0 4l-8 5-8-5V6l8 5 8-5v2z"/></svg>
                <span>MESSAGES</span>
            </a>
			<a href="${pageContext.request.contextPath}/users" class="${activePage == 'users' ? 'nav-item active' : 'nav-item'}">
			                <svg viewBox="0 0 24 24" fill="currentColor"><path d="M16 11c1.66 0 2.99-1.34 2.99-3S17.66 5 16 5c-1.66 0-3 1.34-3 3s1.34 3 3 3zm-8 0c1.66 0 2.99-1.34 2.99-3S9.66 5 8 5C6.34 5 5 6.34 5 8s1.34 3 3 3zm0 2c-2.33 0-7 1.17-7 3.5V19h14v-2.5c0-2.33-4.67-3.5-7-3.5zm8 0c-.29 0-.62.02-.97.05 1.16.84 1.97 1.97 1.97 3.45V19h6v-2.5c0-2.33-4.67-3.5-7-3.5z"/></svg>
                <span>USERS</span>
            </a>
        </nav>

        <div class="sidebar-bottom">
            <a href="${pageContext.request.contextPath}/logout" class="nav-item logout-btn">
                <svg viewBox="0 0 24 24" fill="currentColor"><path d="M17 7l-1.41 1.41L18.17 11H8v2h10.17l-2.58 2.58L17 17l5-5zM4 5h8V3H4c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h8v-2H4V5z"/></svg>
                <span>LOGOUT</span>
            </a>
        </div>
    </aside>