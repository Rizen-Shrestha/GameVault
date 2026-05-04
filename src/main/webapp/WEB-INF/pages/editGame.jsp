<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Game</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/adminSidebar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/editGame.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css">
</head>

<body>

<jsp:include page="../components/adminSidebar.jsp" />

<div class="main-wrapper">
    <div class="content-area">

        <div class="form-container">

            <div class="form-card">

                <h2 class="form-title">EDIT GAME</h2>

                <form action="${pageContext.request.contextPath}/editGame" method="post">

                    <!-- hidden ID -->
                    <input type="hidden" name="gameId" value="${game.gameId}" />

                    <label>Game Title</label>
                    <input type="text" name="title" value="${game.title}" required />

                    <label>Description</label>
                    <textarea name="description" rows="4">${game.description}</textarea>

                    <label>Price</label>
                    <input type="text" name="price" value="${game.price}" required />

                    <label>Release Date</label>
					<fmt:formatDate value="${game.releaseDate}" pattern="yyyy-MM-dd" var="formattedDate"/>
					
					<input type="date" name="releaseDate" value="${formattedDate}" required />
                    <label>Creator</label>
                    <input type="text" name="creator" value="${game.creator}" required />

                    <div class="button-group">

                        <!-- SAVE CHANGES -->
                        <button type="submit" class="btn save-btn">
                            Save Changes
                        </button>

                        <!-- DELETE GAME -->
                        <a href="${pageContext.request.contextPath}/deleteGame?id=${game.gameId}"
                           class="btn delete-btn"
                           onclick="return confirm('Are you sure you want to delete this game?');">
                            Delete
                        </a>

                    </div>

                </form>

            </div>

        </div>

    </div>

    <jsp:include page="../components/footer.jsp"/>
</div>

</body>
</html>