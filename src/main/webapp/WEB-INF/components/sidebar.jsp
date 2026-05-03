<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<aside class="sidebar">
    <div class="top-group">
        <div class="logo">GV</div>
        <nav class="menu">
            <a href="${pageContext.request.contextPath}/home.jsp" class="menu-item active">
                <span class="icon">⌂</span> HOME
            </a>
            <a href="#" class="menu-item">
                <span class="icon">🎮</span> LIBRARY
            </a>
            <a href="#" class="menu-item">
                <span class="icon">🛒</span> EXPLORE
            </a>
        </nav>
    </div>

    <div class="bottom-group">
        <nav class="menu secondary-menu">
            <a href="#" class="menu-item"><span class="icon">⚙</span> SETTINGS</a>
            <a href="#" class="menu-item"><span class="icon">?</span> SUPPORT</a>
        </nav>
        <div class="user-profile">
            <img src="${pageContext.request.contextPath}/img.png" alt="User">
            <span class="username">PLAYER_123</span>
        </div>
    </div>
</aside>