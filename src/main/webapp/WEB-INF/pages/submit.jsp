<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Submit New Game | GameVault</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/global.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/submit.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/sidebar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css">
</head>
<body>

    <jsp:include page="../components/sidebar.jsp" />
    
    <c:if test="${param.success == 'true'}">
    <div class="success-message">
        Request submitted successfully.
    </div>
	</c:if>
	
	<c:if test="${param.error == 'true'}">
	    <div class="error-message">
	        Failed to submit request.
	    </div>
	</c:if>
    
    <main class="main">
        <section class="form-container">
            <h1 class="page-title">Submit Game</h1>
            <p class="tagline">Leave your mark on this world.</p>

            <form action="${pageContext.request.contextPath}/submit" method="POST" enctype="multipart/form-data" class="submit-form" id="gameForm">
                
                <div class="form-group">
                    <label for="title">Game Title</label>
                    <input type="text" id="title" name="title" placeholder="e.g. Cyberpunk 2077" required>
                </div>

                <div class="form-row">
                    <div class="form-group">
                        <label for="price">Price ($)</label>
                        <input type="number" id="price" name="price" step="0.01" placeholder="59.99" required>
                    </div>

					<div class="form-group">
	                    <label for="creator">Creator / Developer</label>
	                    <input type="text" id="creator" name="creator" placeholder="e.g. CD PROJEKT RED" required>
                	</div>
                </div>


                <!-- Image Upload Section -->
                <div class="form-group">
                    <label for="gameImages">Game Images (Exactly 3 Required)</label>
                    <div class="file-upload-wrapper">
                        <input type="file" id="gameImages" name="gameImages" accept="image/*" multiple required>
                        <p class="file-hint">Select 3 images (JPG/PNG) to be used for the hero and thumbnails.</p>
                    </div>
                </div>

                <div class="form-group">
                    <label for="description">Description</label>
                    <textarea id="description" name="description" rows="6" placeholder="Enter game details..." required></textarea>
                </div>

                <div class="form-actions">
                    <button type="reset" class="btn-secondary">Clear Form</button>
                    <button type="submit" class="btn-primary">Submit to Vault</button>
                </div>
            </form>
        </section>
        
        <jsp:include page="../components/footer.jsp" />
    </main>

    <script>
        document.getElementById('gameForm').onsubmit = function(e) {
            const files = document.getElementById('gameImages').files;
            if (files.length !== 3) {
                e.preventDefault();
                alert("Please select exactly 3 images.");
            }
        };
    </script>

</body>
</html>