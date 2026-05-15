<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GameVault</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/global.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/adminSidebar.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/adminDashboard.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css">

<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.1/chart.umd.js"></script>
</head>
<body>
	<jsp:include page="../components/adminSidebar.jsp" />

<div class="main-wrapper">

    <header class="topbar">
        <div class="topbar-brand">
            <span class="topbar-logo">GAMEVAULT</span>
        </div>
        <div class="topbar-actions">
            <button class="icon-btn" aria-label="Notifications">
                <svg viewBox="0 0 24 24" fill="currentColor"><path d="M12 22c1.1 0 2-.9 2-2h-4c0 1.1.9 2 2 2zm6-6v-5c0-3.07-1.64-5.64-4.5-6.32V4c0-.83-.67-1.5-1.5-1.5s-1.5.67-1.5 1.5v.68C7.63 5.36 6 7.92 6 11v5l-2 2v1h16v-1l-2-2z"/></svg>
            </button>
            <button class="icon-btn" aria-label="Settings">
                <svg viewBox="0 0 24 24" fill="currentColor"><path d="M19.14 12.94c.04-.3.06-.61.06-.94 0-.32-.02-.64-.07-.94l2.03-1.58c.18-.14.23-.41.12-.61l-1.92-3.32c-.12-.22-.37-.29-.59-.22l-2.39.96c-.5-.38-1.03-.7-1.62-.94l-.36-2.54c-.04-.24-.24-.41-.48-.41h-3.84c-.24 0-.43.17-.47.41l-.36 2.54c-.59.24-1.13.57-1.62.94l-2.39-.96c-.22-.08-.47 0-.59.22L2.74 8.87c-.12.21-.08.47.12.61l2.03 1.58c-.05.3-.09.63-.09.94s.02.64.07.94l-2.03 1.58c-.18.14-.23.41-.12.61l1.92 3.32c.12.22.37.29.59.22l2.39-.96c.5.38 1.03.7 1.62.94l.36 2.54c.05.24.24.41.48.41h3.84c.24 0 .44-.17.47-.41l.36-2.54c.59-.24 1.13-.56 1.62-.94l2.39.96c.22.08.47 0 .59-.22l1.92-3.32c.12-.22.07-.47-.12-.61l-2.01-1.58zM12 15.6c-1.98 0-3.6-1.62-3.6-3.6s1.62-3.6 3.6-3.6 3.6 1.62 3.6 3.6-1.62 3.6-3.6 3.6z"/></svg>
            </button>
            <div class="avatar">
                <img src="images/avatar.png" alt="Admin" onerror="this.style.display='none'">
                <span class="avatar-fallback">A</span>
            </div>
        </div>
    </header>

    <main class="content">

        <div class="page-heading">
            <span class="page-label">ADMIN</span>
            <h1 class="page-title">DASHBOARD</h1>
        </div>

        <div class="top-sections">

            <section class="card manage-users">
                <div class="card-header">
                    <div class="card-title-row">
                        <svg viewBox="0 0 24 24" fill="currentColor"><path d="M16 11c1.66 0 2.99-1.34 2.99-3S17.66 5 16 5c-1.66 0-3 1.34-3 3s1.34 3 3 3zm-8 0c1.66 0 2.99-1.34 2.99-3S9.66 5 8 5C6.34 5 5 6.34 5 8s1.34 3 3 3zm0 2c-2.33 0-7 1.17-7 3.5V19h14v-2.5c0-2.33-4.67-3.5-7-3.5zm8 0c-.29 0-.62.02-.97.05 1.16.84 1.97 1.97 1.97 3.45V19h6v-2.5c0-2.33-4.67-3.5-7-3.5z"/></svg>
                        <span>MANAGE USERS</span>
                    </div>
					<span class="badge-active">${activeCount} ACTIVE</span>
                </div>
				<div class="user-avatars">
				
				        <c:forEach var="user" items="${users}" begin="0" end="5">
				
				            <div class="user-card">
				
				                <div class="user-avatar-img">
				                    <img 
				                        src="${pageContext.request.contextPath}/getimage?name=${user.username}" 
				                        style="width:100%; height:100%; object-fit:cover;"
				                        onerror="this.style.display='none'">
				                </div>
				
				                <span class="user-label">
				                    ${user.firstName} ${user.lastName}
				                </span>
				
				                <c:if test="${user.accountStatus == 'ACTIVE'}">
				                    <span class="online-dot"></span>
				                </c:if>
				
				            </div>
				
				        </c:forEach>
				
				    </div>
                <a href="${pageContext.request.contextPath}/users" style="display: block;">
                	<button class="view-all-btn">VIEW ALL USERS</button>
                </a>
            </section>

            <section class="card manage-games">
                <div class="card-header">
                    <div class="card-title-row">
                        <svg viewBox="0 0 24 24" fill="currentColor"><path d="M21 6H3c-1.1 0-2 .9-2 2v8c0 1.1.9 2 2 2h18c1.1 0 2-.9 2-2V8c0-1.1-.9-2-2-2zm-10 7H8v3H6v-3H3v-2h3V8h2v3h3v2zm4.5 2c-.83 0-1.5-.67-1.5-1.5S14.67 12 15.5 12s1.5.67 1.5 1.5S16.33 15 15.5 15zm3-3c-.83 0-1.5-.67-1.5-1.5S17.67 10 18.5 10s1.5.67 1.5 1.5S19.33 12 18.5 12z"/></svg>
                        <span>MANAGE GAMES</span>
                    </div>
                </div>
                
				<div class="games-row">
				
				    <c:forEach var="game" items="${games}" begin="0" end="5">
				        <div class="game-card">
				            <div class="game-img">
				                <img
				                    src="${pageContext.request.contextPath}/getgameimage?id=${game.gameId}"
				                    style="width:100%; height:100%; object-fit:cover;"
				                    onerror="this.style.display='none'">
				            </div>
				
				            <span class="game-label">
				                ${game.title}
				            </span>
				        </div>
				    </c:forEach>
				</div>

                <div style="flex: 1;"></div>
                <a href="${pageContext.request.contextPath}/games" style="display: block;">
                    <button class="view-all-btn">VIEW ALL GAMES</button>
                </a>
            </section>

        </div>

        <section class="card analytics-card">
            <div class="card-header">
                <div class="card-title-row">
                    <svg viewBox="0 0 24 24" fill="currentColor"><path d="M19 3H5c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2zM9 17H7v-7h2v7zm4 0h-2V7h2v10zm4 0h-2v-4h2v4z"/></svg>
                    <span>SYSTEM ANALYTICS</span>
                </div>
                <div class="analytics-tabs">
                    <button class="tab-btn active">REAL TIME</button>
                    <button class="tab-btn">HISTORY</button>
                </div>
            </div>
            <div class="analytics-body">
                <div class="analytics-left">
                    <div class="traffic-info">
                        <span class="traffic-label">TRAFFIC LOAD</span>
                        <div class="traffic-value">92.4% <span class="traffic-delta">▲ 12%</span></div>
                    </div>
                    <div class="chart-legend">
                        <span class="legend-dot input"></span><span>INPUT</span>
                        <span class="legend-dot output"></span><span>OUTPUT</span>
                    </div>
                    <div class="chart-container">
                        <canvas id="analyticsChart" role="img" aria-label="System analytics line chart showing input and output traffic over time"></canvas>
                    </div>
                </div>
                <div class="analytics-right">
                    <div class="donut-wrapper">
                        <canvas id="donutChart" role="img" aria-label="Donut chart showing 6.8k total concurrent load"></canvas>
                        <div class="donut-label">
                            <span class="donut-value">6.8k</span>
                            <span class="donut-sub">CONCURRENT LOAD</span>
                        </div>
                    </div>
                    <div class="region-stats">
                        <div class="region-row">
                            <span class="region-dot dj"></span>
                            <span class="region-name">DJ_NORTH</span>
                            <span class="region-pct">70%</span>
                        </div>
                        <div class="region-row">
                            <span class="region-dot na"></span>
                            <span class="region-name">NA_WEST</span>
                            <span class="region-pct">25%</span>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <div class="bottom-sections">

            <section class="card messages-card">
                <div class="card-header">
                    <div class="card-title-row">
                        <svg viewBox="0 0 24 24" fill="currentColor"><path d="M20 4H4c-1.1 0-2 .9-2 2v12c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2zm0 4l-8 5-8-5V6l8 5 8-5v2z"/></svg>
                        <span>VIEW MESSAGES</span>
                    </div>
                </div>
                <div class="message-list">
                    <div class="message-item">
                        <div class="msg-avatar"></div>
                        <div class="msg-body">
                            <div class="msg-top">
                                <span class="msg-name">USER NAME</span>
                                <span class="msg-time">24 MIN</span>
                            </div>
                            <span class="msg-preview">This is the message</span>
                        </div>
                        <span class="msg-unread"></span>
                    </div>
                    <div class="message-item">
                        <div class="msg-avatar"></div>
                        <div class="msg-body">
                            <div class="msg-top">
                                <span class="msg-name">USER NAME</span>
                                <span class="msg-time">41 MIN</span>
                            </div>
                            <span class="msg-preview">This is the message</span>
                        </div>
                    </div>
                </div>
            </section>

            <section class="card requests-card">
                <div class="card-header">
                    <div class="card-title-row">
                        <svg viewBox="0 0 24 24" fill="currentColor"><path d="M21 6H3c-1.1 0-2 .9-2 2v8c0 1.1.9 2 2 2h18c1.1 0 2-.9 2-2V8c0-1.1-.9-2-2-2zm-10 7H8v3H6v-3H3v-2h3V8h2v3h3v2zm4.5 2c-.83 0-1.5-.67-1.5-1.5S14.67 12 15.5 12s1.5.67 1.5 1.5S16.33 15 15.5 15zm3-3c-.83 0-1.5-.67-1.5-1.5S17.67 10 18.5 10s1.5.67 1.5 1.5S19.33 12 18.5 12z"/></svg>
                        <span>GAME REQUESTS</span>
                    </div>
                </div>
                <div class="request-list">
                    <div class="request-item">
                        <div class="req-icon">
                            <svg viewBox="0 0 24 24" fill="currentColor"><path d="M21 6H3c-1.1 0-2 .9-2 2v8c0 1.1.9 2 2 2h18c1.1 0 2-.9 2-2V8c0-1.1-.9-2-2-2zm-10 7H8v3H6v-3H3v-2h3V8h2v3h3v2zm4.5 2c-.83 0-1.5-.67-1.5-1.5S14.67 12 15.5 12s1.5.67 1.5 1.5S16.33 15 15.5 15zm3-3c-.83 0-1.5-.67-1.5-1.5S17.67 10 18.5 10s1.5.67 1.5 1.5S19.33 12 18.5 12z"/></svg>
                        </div>
                        <div class="req-info">
                            <span class="req-name">GAME NAME</span>
                            <span class="req-status">AWAITING VERIFICATION</span>
                        </div>
                        <div class="req-actions">
                            <button class="req-btn approve">
                                <svg viewBox="0 0 24 24" fill="currentColor"><path d="M9 16.17L4.83 12l-1.42 1.41L9 19 21 7l-1.41-1.41z"/></svg>
                            </button>
                            <button class="req-btn reject">
                                <svg viewBox="0 0 24 24" fill="currentColor"><path d="M19 6.41L17.59 5 12 10.59 6.41 5 5 6.41 10.59 12 5 17.59 6.41 19 12 13.41 17.59 19 19 17.59 13.41 12z"/></svg>
                            </button>
                        </div>
                    </div>
                    <div class="request-item">
                        <div class="req-icon">
                            <svg viewBox="0 0 24 24" fill="currentColor"><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm-2 14.5v-9l6 4.5-6 4.5z"/></svg>
                        </div>
                        <div class="req-info">
                            <span class="req-name">GAME NAME</span>
                            <span class="req-status">AWAITING VERIFICATION</span>
                        </div>
                        <div class="req-actions">
                            <button class="req-btn approve">
                                <svg viewBox="0 0 24 24" fill="currentColor"><path d="M9 16.17L4.83 12l-1.42 1.41L9 19 21 7l-1.41-1.41z"/></svg>
                            </button>
                            <button class="req-btn reject">
                                <svg viewBox="0 0 24 24" fill="currentColor"><path d="M19 6.41L17.59 5 12 10.59 6.41 5 5 6.41 10.59 12 5 17.59 6.41 19 12 13.41 17.59 19 19 17.59 13.41 12z"/></svg>
                            </button>
                        </div>
                    </div>
                </div>
            </section>

        </div>


    </main>
    		<jsp:include page="../components/footer.jsp" />
    
</div>



<script>
    // Line chart
    const lineCtx = document.getElementById('analyticsChart').getContext('2d');
    new Chart(lineCtx, {
        type: 'line',
        data: {
            labels: ['12:00','12:20','04:45','14:00','14:20','06:20'],
            datasets: [
                {
                    label: 'Input',
                    data: [30, 55, 40, 70, 50, 90],
                    borderColor: '#00e676',
                    backgroundColor: 'rgba(0,230,118,0.07)',
                    borderWidth: 2,
                    pointRadius: 0,
                    tension: 0.4,
                    fill: false
                },
                {
                    label: 'Output',
                    data: [60, 35, 65, 30, 75, 45],
                    borderColor: '#cc44ff',
                    backgroundColor: 'rgba(180,60,255,0.07)',
                    borderWidth: 2,
                    pointRadius: 0,
                    tension: 0.4,
                    borderDash: [5, 4],
                    fill: false
                }
            ]
        },
        options: {
            responsive: true,
            maintainAspectRatio: false,
            plugins: { legend: { display: false } },
            scales: {
                x: {
                    ticks: { color: '#6a5a88', font: { size: 10, family: 'Rajdhani' } },
                    grid: { color: 'rgba(255,255,255,0.04)' },
                    border: { color: 'rgba(255,255,255,0.06)' }
                },
                y: {
                    display: false,
                    grid: { display: false }
                }
            }
        }
    });

    // Donut chart
    const donutCtx = document.getElementById('donutChart').getContext('2d');
    new Chart(donutCtx, {
        type: 'doughnut',
        data: {
            datasets: [{
                data: [70, 25, 5],
                backgroundColor: ['#00e676', '#cc44ff', '#1e1030'],
                borderWidth: 0,
                hoverOffset: 0
            }]
        },
        options: {
            responsive: true,
            maintainAspectRatio: false,
            cutout: '72%',
            plugins: { legend: { display: false }, tooltip: { enabled: false } }
        }
    });


</script>

</body>
</html>