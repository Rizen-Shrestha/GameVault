<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Contact Us | GameVault</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/global.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/contact.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/sidebar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css">
</head>
<body>

    <jsp:include page="../components/sidebar.jsp" />
    
    <main class="main">
        <section class="form-container">
            <h1 class="page-title">Contact Us</h1>
            <p class="tagline">Have a question or feedback? Drop us a message below.</p>

            <form action="${pageContext.request.contextPath}/contact" method="POST" class="submit-form">
                
                <div class="form-group">
                    <label for="name">Full Name</label>
                    <input type="text" id="name" name="name" placeholder="Enter your name" required>
                </div>

                <div class="form-group">
                    <label for="email">Email Address</label>
                    <input type="email" id="email" name="email" placeholder="yourname@example.com" required>
                </div>

                <div class="form-group">
                    <label for="purpose">Purpose of Contact</label>
                    <select id="purpose" name="purpose" class="custom-select" required>
                        <option value="" disabled selected>Select a reason</option>
                        <option value="support">Technical Support</option>
                        <option value="feedback">General Feedback</option>
                        <option value="business">Business Inquiry</option>
                        <option value="other">Other</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="message">Message</label>
                    <textarea id="message" name="message" rows="6" placeholder="How can we help you?" required></textarea>
                </div>

                <div class="form-actions">
                    <button type="reset" class="btn-secondary">Clear</button>
                    <button type="submit" class="btn-primary">Send Message</button>
                </div>

            </form>
        </section>
        
        <jsp:include page="../components/footer.jsp" />
    </main>

</body>
</html>