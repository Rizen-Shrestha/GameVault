<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GameVault - Login</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
    <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;600;700&family=Rajdhani:wght@400;500;600&display=swap" rel="stylesheet">
</head>
<body>

    <header class="site-header">
        <span class="logo">GAMEVAULT</span>
    </header>

    <div class="page-body">

        <div class="characters-side">
            <img src="${pageContext.request.contextPath}/images/characters.png"
                 alt="Game Characters"
                 class="characters-img"
                 onerror="this.style.display='none'">
        </div>

        <div class="form-side">
            <div class="login-card">

                <h1 class="welcome-title">WELCOME BACK!</h1>

                <form action="${pageContext.request.contextPath}/login" method="post" class="login-form">

                    <div class="form-group">
                        <label>
                            <svg viewBox="0 0 24 24" fill="currentColor"><path d="M12 12c2.7 0 4.8-2.1 4.8-4.8S14.7 2.4 12 2.4 7.2 4.5 7.2 7.2 9.3 12 12 12zm0 2.4c-3.2 0-9.6 1.6-9.6 4.8v2.4h19.2v-2.4c0-3.2-6.4-4.8-9.6-4.8z"/></svg>
                            USERNAME
                        </label>
                        <div class="input-wrapper">
                            <span class="input-icon">
                                <svg viewBox="0 0 24 24" fill="currentColor"><path d="M12 12c2.7 0 4.8-2.1 4.8-4.8S14.7 2.4 12 2.4 7.2 4.5 7.2 7.2 9.3 12 12 12zm0 2.4c-3.2 0-9.6 1.6-9.6 4.8v2.4h19.2v-2.4c0-3.2-6.4-4.8-9.6-4.8z"/></svg>
                            </span>
                            <input type="text" name="username" placeholder="Username">
                        </div>
                    </div>

                    <div class="form-group">
                        <label>
                            <svg viewBox="0 0 24 24" fill="currentColor"><path d="M18 8h-1V6c0-2.76-2.24-5-5-5S7 3.24 7 6v2H6c-1.1 0-2 .9-2 2v10c0 1.1.9 2 2 2h12c1.1 0 2-.9 2-2V10c0-1.1-.9-2-2-2zm-6 9c-1.1 0-2-.9-2-2s.9-2 2-2 2 .9 2 2-.9 2-2 2zm3.1-9H8.9V6c0-1.71 1.39-3.1 3.1-3.1 1.71 0 3.1 1.39 3.1 3.1v2z"/></svg>
                            PASSWORD
                        </label>
                        <div class="input-wrapper">
                            <span class="input-icon">
                                <svg viewBox="0 0 24 24" fill="currentColor"><path d="M18 8h-1V6c0-2.76-2.24-5-5-5S7 3.24 7 6v2H6c-1.1 0-2 .9-2 2v10c0 1.1.9 2 2 2h12c1.1 0 2-.9 2-2V10c0-1.1-.9-2-2-2zm-6 9c-1.1 0-2-.9-2-2s.9-2 2-2 2 .9 2 2-.9 2-2 2zm3.1-9H8.9V6c0-1.71 1.39-3.1 3.1-3.1 1.71 0 3.1 1.39 3.1 3.1v2z"/></svg>
                            </span>
                            <input type="password" id="password" name="password" placeholder="Password">
                            
                        </div>
                    </div>

                    <div class="remember-row">
                        <label class="checkbox-label">
                            <input type="checkbox" name="rememberMe" checked>
                            <span class="custom-checkbox"></span>
                            <span class="remember-text">Remember me</span>
                        </label>
                    </div>

                    <button type="submit" class="login-btn">LOGIN</button>

                    <div class="form-links">
                        <a href="${pageContext.request.contextPath}/register" class="create-link">CREATE ACCOUNT</a>
                    </div>

                </form>
            </div>
        </div>

    </div>

</body>
</html>

