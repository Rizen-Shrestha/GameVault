<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Your Vault | GameVault</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/global.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/cart.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/sidebar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css">
</head>
<body>

    <jsp:include page="../components/sidebar.jsp" />
    
    <main class="main">
        <section class="cart-wrapper">
            <div class="cart-header">
                <h1 class="page-title">Your Cart</h1>
                <span class="item-count">3 Items</span>
            </div>

            <div class="cart-layout">
                <div class="cart-items">
                    <div class="cart-item">
                        <div class="item-img">
                            <img src="${pageContext.request.contextPath}/images/placeholder_game1.jpg" alt="Game Title">
                        </div>
                        <div class="item-details">
                            <h3>Cyberpunk 2077</h3>
                            <span class="platform">PC - Digital Code</span>
                        </div>
                        <div class="item-price">$59.99</div>
                        <button class="remove-btn">✕</button>
                    </div>

                    <div class="cart-item">
                        <div class="item-img">
                            <img src="${pageContext.request.contextPath}/images/placeholder_game2.jpg" alt="Game Title">
                        </div>
                        <div class="item-details">
                            <h3>Elden Ring</h3>
                            <span class="platform">PS5 - Physical Edition</span>
                        </div>
                        <div class="item-price">$49.99</div>
                        <button class="remove-btn">✕</button>
                    </div>
                </div>

                <aside class="cart-summary">
                    <div class="summary-card">
                        <h2>Order Summary</h2>
                        <div class="summary-line">
                            <span>Subtotal</span>
                            <span>$109.98</span>
                        </div>
                        <div class="summary-line">
                            <span>Platform Fees</span>
                            <span>$2.50</span>
                        </div>
                        <div class="summary-line total">
                            <span>Total</span>
                            <span class="total-price">$112.48</span>
                        </div>
                        <button class="checkout-btn">Proceed to Checkout</button>
                        <a href="${pageContext.request.contextPath}/home" class="continue-shopping">Continue Shopping</a>
                    </div>
                </aside>
            </div>
        </section>
        
        <jsp:include page="../components/footer.jsp" />
    </main>

</body>
</html>