<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GameVault - Create Account</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/register.css">
    <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;600;700&family=Rajdhani:wght@400;500;600&display=swap" rel="stylesheet">
</head>
<body>

    <header class="site-header">
        <span class="logo">GAMEVAULT</span>
    </header>

    <main class="page-wrapper">
        <div class="register-card">

            <h1 class="card-title">CREATE YOUR ACCOUNT</h1>

            <form action="register" method="post" class="register-form">

                <!-- Row 1: First Name + Last Name -->
                <div class="form-row">
                    <div class="form-group">
                        <label>FIRST NAME</label>
                        <div class="input-wrapper">
                            <span class="input-icon">
                                <svg viewBox="0 0 24 24" fill="currentColor"><path d="M12 12c2.7 0 4.8-2.1 4.8-4.8S14.7 2.4 12 2.4 7.2 4.5 7.2 7.2 9.3 12 12 12zm0 2.4c-3.2 0-9.6 1.6-9.6 4.8v2.4h19.2v-2.4c0-3.2-6.4-4.8-9.6-4.8z"/></svg>
                            </span>
                            <input type="text" name="firstName" placeholder="Enter First Name" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>LAST NAME</label>
                        <div class="input-wrapper">
                            <span class="input-icon">
                                <svg viewBox="0 0 24 24" fill="currentColor"><path d="M12 12c2.7 0 4.8-2.1 4.8-4.8S14.7 2.4 12 2.4 7.2 4.5 7.2 7.2 9.3 12 12 12zm0 2.4c-3.2 0-9.6 1.6-9.6 4.8v2.4h19.2v-2.4c0-3.2-6.4-4.8-9.6-4.8z"/></svg>
                            </span>
                            <input type="text" name="lastName" placeholder="Enter Last Name" required>
                        </div>
                    </div>
                </div>

                <!-- Row 2: Username + Email -->
                <div class="form-row">
                    <div class="form-group">
                        <label>USERNAME</label>
                        <div class="input-wrapper">
                            <span class="input-icon">
                                <svg viewBox="0 0 24 24" fill="currentColor"><path d="M12 12c2.7 0 4.8-2.1 4.8-4.8S14.7 2.4 12 2.4 7.2 4.5 7.2 7.2 9.3 12 12 12zm0 2.4c-3.2 0-9.6 1.6-9.6 4.8v2.4h19.2v-2.4c0-3.2-6.4-4.8-9.6-4.8z"/></svg>
                            </span>
                            <input type="text" name="username" placeholder="Choose a Username" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>EMAIL</label>
                        <div class="input-wrapper">
                            <span class="input-icon">
                                <svg viewBox="0 0 24 24" fill="currentColor"><path d="M20 4H4c-1.1 0-2 .9-2 2v12c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2zm0 4-8 5-8-5V6l8 5 8-5v2z"/></svg>
                            </span>
                            <input type="email" name="email" placeholder="Enter Email" required>
                        </div>
                    </div>
                </div>

                <!-- Row 3: Gender + DOB -->
                <div class="form-row">
                    <div class="form-group">
                        <label>GENDER</label>
                        <div class="input-wrapper">
                            <span class="input-icon">
                                <svg viewBox="0 0 24 24" fill="currentColor"><path d="M9 2v2h2v1.07A5.002 5.002 0 0 0 12 15a5 5 0 0 0 1-9.93V4h2V2h-2V0h-2v2H9zm3 11a3 3 0 1 1 0-6 3 3 0 0 1 0 6zm1 2.93V18h2v2h-2v2h-2v-2H9v-2h2v-2.07A5.002 5.002 0 0 1 12 6a5 5 0 0 1 1 9.93z"/></svg>
                            </span>
                            <select name="gender" required>
                                <option value="" disabled selected></option>
                                <option value="male">Male</option>
                                <option value="female">Female</option>
                            </select>
                            <span class="select-arrow">
                                <svg viewBox="0 0 24 24" fill="currentColor"><path d="M7 10l5 5 5-5z"/></svg>
                            </span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>DOB</label>
                        <div class="input-wrapper">
                            <span class="input-icon">
                                <svg viewBox="0 0 24 24" fill="currentColor"><path d="M17 12h-5v5h5v-5zM16 1v2H8V1H6v2H5c-1.11 0-2 .9-2 2v14c0 1.1.89 2 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2h-1V1h-2zm3 18H5V8h14v11z"/></svg>
                            </span>
                            <input type="date" name="dob" required>
                        </div>
                    </div>
                </div>

                <!-- Password -->
                <div class="form-group">
                    <label>PASSWORD</label>
                    <div class="input-wrapper">
                        <span class="input-icon">
                            <svg viewBox="0 0 24 24" fill="currentColor"><path d="M18 8h-1V6c0-2.76-2.24-5-5-5S7 3.24 7 6v2H6c-1.1 0-2 .9-2 2v10c0 1.1.9 2 2 2h12c1.1 0 2-.9 2-2V10c0-1.1-.9-2-2-2zm-6 9c-1.1 0-2-.9-2-2s.9-2 2-2 2 .9 2 2-.9 2-2 2zm3.1-9H8.9V6c0-1.71 1.39-3.1 3.1-3.1 1.71 0 3.1 1.39 3.1 3.1v2z"/></svg>
                        </span>
                        <input type="password" id="password" name="password" placeholder="Password" required>
                        <button type="button" class="toggle-password" onclick="togglePassword()">
                            <svg id="eye-icon" viewBox="0 0 24 24" fill="currentColor"><path d="M12 4.5C7 4.5 2.73 7.61 1 12c1.73 4.39 6 7.5 11 7.5s9.27-3.11 11-7.5c-1.73-4.39-6-7.5-11-7.5zM12 17c-2.76 0-5-2.24-5-5s2.24-5 5-5 5 2.24 5 5-2.24 5-5 5zm0-8c-1.66 0-3 1.34-3 3s1.34 3 3 3 3-1.34 3-3-1.34-3-3-3z"/></svg>
                        </button>
                    </div>
                </div>

                <!-- Terms -->
                <div class="terms-row">
                    <label class="checkbox-label">
                        <input type="checkbox" name="terms" required>
                        <span class="custom-checkbox"></span>
                        <span class="terms-text">I agree to the Terms of Service</span>
                    </label>
                </div>

                <button type="submit" class="submit-btn">SUBMIT</button>

            </form>
        </div>
    </main>

    <script>
        function togglePassword() {
            const input = document.getElementById('password');
            const icon = document.getElementById('eye-icon');
            if (input.type === 'password') {
                input.type = 'text';
                icon.innerHTML = '<path d="M12 7c2.76 0 5 2.24 5 5 0 .65-.13 1.26-.36 1.83l2.92 2.92c1.51-1.26 2.7-2.89 3.43-4.75-1.73-4.39-6-7.5-11-7.5-1.4 0-2.74.25-3.98.7l2.16 2.16C10.74 7.13 11.35 7 12 7zM2 4.27l2.28 2.28.46.46A11.804 11.804 0 0 0 1 12c1.73 4.39 6 7.5 11 7.5 1.55 0 3.03-.3 4.38-.84l.42.42L19.73 22 21 20.73 3.27 3 2 4.27zM7.53 9.8l1.55 1.55c-.05.21-.08.43-.08.65 0 1.66 1.34 3 3 3 .22 0 .44-.03.65-.08l1.55 1.55c-.67.33-1.41.53-2.2.53-2.76 0-5-2.24-5-5 0-.79.2-1.53.53-2.2zm4.31-.78 3.15 3.15.02-.16c0-1.66-1.34-3-3-3l-.17.01z"/>';
            } else {
                input.type = 'password';
                icon.innerHTML = '<path d="M12 4.5C7 4.5 2.73 7.61 1 12c1.73 4.39 6 7.5 11 7.5s9.27-3.11 11-7.5c-1.73-4.39-6-7.5-11-7.5zM12 17c-2.76 0-5-2.24-5-5s2.24-5 5-5 5 2.24 5 5-2.24 5-5 5zm0-8c-1.66 0-3 1.34-3 3s1.34 3 3 3 3-1.34 3-3-1.34-3-3-3z"/>';
            }
        }
    </script>

</body>
</html>
