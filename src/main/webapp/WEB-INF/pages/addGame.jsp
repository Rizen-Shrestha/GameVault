<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>GameVault - Add Game</title>

	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/global.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/adminSidebar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/addGame.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css">
</head>

<body>

<jsp:include page="../components/adminSidebar.jsp" />

<div class="main-wrapper">
    <div class="content-area">

        <header class="topbar">
            <div class="topbar-left">
                <a href="${pageContext.request.contextPath}/games" class="back-btn">
                    <svg viewBox="0 0 24 24" fill="currentColor">
                        <path d="M20 11H7.83l5.59-5.59L12 4l-8 8 8 8 1.41-1.41L7.83 13H20v-2z"/>
                    </svg>
                </a>
                <h1 class="page-title">ADD <span class="title-accent">GAME</span></h1>
            </div>
        </header>

        <div class="form-wrapper">
            <div class="form-card">

                <c:if test="${not empty errorMessage}">
                    <div class="alert alert-error">${errorMessage}</div>
                </c:if>

                <form action="${pageContext.request.contextPath}/addGame" method="post">

                    <div class="form-group">
                        <label for="title">GAME TITLE</label>
                        <input type="text"
                               id="title"
                               name="title"
                               placeholder="e.g. Elden Ring"
                               value="${param.title}"
                               required />
                    </div>

                    <div class="form-group">
                        <label for="description">DESCRIPTION</label>
                        <textarea id="description"
                                  name="description"
                                  rows="4"
                                  placeholder="Enter game description...">${param.description}</textarea>
                    </div>

                    <div class="form-row">
                        <div class="form-group">
                            <label for="price">PRICE ($)</label>
                            <input type="number"
                                   id="price"
                                   name="price"
                                   placeholder="e.g. 59.99"
                                   step="0.01"
                                   min="0"
                                   value="${param.price}"
                                   required />
                        </div>

                        <div class="form-group">
                            <label for="creator">CREATOR / STUDIO</label>
                            <input type="text"
                                   id="creator"
                                   name="creator"
                                   placeholder="e.g. FromSoftware"
                                   value="${param.creator}"
                                   required />
                        </div>
                    </div>


                    <div class="form-actions">
                        <a href="${pageContext.request.contextPath}/games" class="btn cancel-btn">CANCEL</a>
                        <button type="submit" class="btn submit-btn">
                            <svg viewBox="0 0 24 24" fill="currentColor">
                                <path d="M19 13h-6v6h-2v-6H5v-2h6V5h2v6h6v2z"/>
                            </svg>
                            ADD GAME
                        </button>
                    </div>

                </form>

            </div>
        </div>

    </div>

    <jsp:include page="../components/footer.jsp"/>
</div>

</body>
</html>