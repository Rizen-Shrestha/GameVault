<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Account Profile | GameVault</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/global.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/profile.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/sidebar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css">
</head>
<body>

    <jsp:include page="../components/sidebar.jsp" />
    
    <main class="main">
        <section class="profile-container">
            <div class="profile-card">
                <h1 class="profile-title">Account Profile</h1>
                
                <div class="avatar-section">
                    <div class="avatar-wrapper">
                        <div class="avatar-placeholder"></div>
                        <label for="profilePic" class="edit-icon-btn">
                            <span style="color: white; font-size: 14px;">✎</span>
                        </label>
                    </div>
                    <button type="button" class="change-photo-text">Change Photo</button>
                    <input type="file" id="profilePic" style="display: none;" accept="image/*">
                </div>

                <form action="#" method="POST" class="profile-form" onsubmit="return false;">
                    
                    <div class="form-row">
                        <div class="form-group">
                            <label>First Name</label>
                            <input type="text" name="firstName" value="Aashraya" placeholder="First Name">
                        </div>
                        <div class="form-group">
                            <label>Last Name</label>
                            <input type="text" name="lastName" value="Belbase" placeholder="Last Name">
                        </div>
                    </div>

                    <div class="form-group">
                        <label>Date of Birth</label>
                        <input type="date" name="DOB" value="2006-08-08">
                    </div>

                    <div class="form-group">
                        <label>Email Address</label>
                        <input type="email" name="email" value="test@gmail.com" placeholder="email@example.com">
                    </div>

                    <div class="form-group">
                        <label>Username</label>
                        <input type="text" name="username" value="Ash" placeholder="Username">
                    </div>

                    <div class="form-group">
                        <label>Gender</label>
                        <select name="gender" class="profile-select">
                            <option value="male" selected>Male</option>
                            <option value="female">Female</option>
                            <option value="other">Other</option>
                        </select>
                    </div>

                    <button type="submit" class="btn-save">Save Changes</button>
                </form>
            </div>
        </section>
        
        <jsp:include page="../components/footer.jsp" />
    </main>

</body>
</html>