```html
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>NexusShop — Modern Shopping</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Poppins:wght@600;700;800&display=swap" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

/* =========================================================
   DESIGN SYSTEM
========================================================= */

:root {
    --primary: #2563eb;
    --primary-dark: #1d4ed8;
    --primary-light: #eff6ff;

    --success: #16a34a;
    --danger: #ef4444;
    --warning: #f59e0b;

    --dark: #111827;
    --text: #1f2937;
    --muted: #6b7280;

    --bg: #f8fafc;
    --white: #ffffff;
    --border: #e5e7eb;

    --radius-sm: 10px;
    --radius-md: 16px;
    --radius-lg: 24px;

    --shadow-sm: 0 2px 8px rgba(15, 23, 42, .05);
    --shadow-md: 0 10px 30px rgba(15, 23, 42, .08);
    --shadow-lg: 0 20px 50px rgba(15, 23, 42, .14);

    --max-width: 1280px;
}

* {
    box-sizing: border-box;
}

html {
    scroll-behavior: smooth;
}

body {
    margin: 0;
    background: var(--bg);
    color: var(--text);
    font-family: Inter, sans-serif;
    line-height: 1.5;
}

body.no-scroll {
    overflow: hidden;
}

button,
input,
select {
    font: inherit;
}

button {
    cursor: pointer;
}

a {
    text-decoration: none;
    color: inherit;
}

img {
    max-width: 100%;
}

.container {
    width: min(var(--max-width), calc(100% - 40px));
    margin: auto;
}

.muted {
    color: var(--muted);
}

/* =========================================================
   TOP BAR
========================================================= */

.topbar {
    background: var(--dark);
    color: #e5e7eb;
    font-size: 13px;
}

.topbar .container {
    min-height: 38px;
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 20px;
}

.topbar i {
    color: #60a5fa;
    margin-right: 6px;
}

/* =========================================================
   HEADER
========================================================= */

header {
    position: sticky;
    top: 0;
    z-index: 100;
    background: rgba(255,255,255,.96);
    backdrop-filter: blur(16px);
    border-bottom: 1px solid var(--border);
}

.header-main {
    min-height: 76px;
    display: flex;
    align-items: center;
    gap: 22px;
}

.logo {
    font: 800 24px Poppins, sans-serif;
    white-space: nowrap;
    letter-spacing: -.7px;
}

.logo span {
    color: var(--primary);
}

/* Search */

.search-wrapper {
    flex: 1;
    max-width: 650px;
    position: relative;
}

.search {
    height: 46px;
    width: 100%;
    display: flex;
    align-items: center;

    background: #f3f4f6;
    border: 1px solid transparent;
    border-radius: 13px;

    transition: .2s;
}

.search:focus-within {
    background: white;
    border-color: #93c5fd;
    box-shadow: 0 0 0 4px rgba(37,99,235,.08);
}

.search-icon {
    padding-left: 15px;
    color: var(--muted);
}

.search input {
    flex: 1;
    border: 0;
    outline: 0;
    background: transparent;
    padding: 0 12px;
    min-width: 0;
}

.search button {
    width: 46px;
    height: 100%;
    border: 0;
    background: transparent;
    color: var(--muted);
}

.search button:hover {
    color: var(--primary);
}

/* Header actions */

.header-actions {
    display: flex;
    align-items: center;
    gap: 5px;
    margin-left: auto;
}

.header-action {
    width: 42px;
    height: 42px;

    border: 0;
    background: transparent;
    border-radius: 11px;

    display: grid;
    place-items: center;

    color: var(--text);
    position: relative;

    transition: .2s;
}

.header-action:hover {
    background: var(--primary-light);
    color: var(--primary);
}

.cart-count {
    position: absolute;
    top: 0;
    right: 0;

    min-width: 18px;
    height: 18px;

    padding: 0 5px;

    display: grid;
    place-items: center;

    border-radius: 50px;

    background: var(--danger);
    color: white;

    font-size: 10px;
    font-weight: 800;
}

.mobile-menu-btn {
    display: none;
}

/* =========================================================
   NAVIGATION
========================================================= */

.navigation {
    border-top: 1px solid #f0f1f3;
}

.navigation .container {
    min-height: 48px;
    display: flex;
    align-items: center;
    gap: 5px;
}

.navigation a {
    padding: 8px 15px;
    border-radius: 9px;

    color: #4b5563;

    font-size: 14px;
    font-weight: 600;

    transition: .2s;
}

.navigation a:hover,
.navigation a.active {
    background: var(--primary-light);
    color: var(--primary);
}

/* =========================================================
   HERO
========================================================= */

.hero {
    margin-top: 24px;
    min-height: 460px;

    border-radius: var(--radius-lg);

    overflow: hidden;

    display: flex;
    align-items: center;

    position: relative;

    background:
        linear-gradient(
            90deg,
            rgba(7,15,30,.92),
            rgba(7,15,30,.68),
            rgba(7,15,30,.2)
        ),
        url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1800&q=90")
        center/cover;
}

.hero-content {
    max-width: 680px;
    padding: 60px;
    color: white;
}

.hero-badge {
    display: inline-flex;
    align-items: center;
    gap: 8px;

    padding: 8px 13px;

    border-radius: 50px;

    background: rgba(255,255,255,.13);
    border: 1px solid rgba(255,255,255,.2);

    font-size: 12px;
    font-weight: 700;
}

.hero h1 {
    margin: 20px 0 15px;

    font: 800 clamp(38px, 5vw, 62px)/1.05 Poppins, sans-serif;

    letter-spacing: -2px;
}

.hero p {
    max-width: 590px;

    margin: 0 0 28px;

    color: rgba(255,255,255,.87);

    font-size: 17px;
}

.hero-actions {
    display: flex;
    flex-wrap: wrap;
    gap: 12px;
}

/* =========================================================
   BUTTONS
========================================================= */

.btn {
    min-height: 44px;

    padding: 11px 18px;

    border: 0;
    border-radius: 11px;

    display: inline-flex;
    align-items: center;
    justify-content: center;
    gap: 9px;

    font-weight: 700;

    transition: .2s;
}

.btn-primary {
    background: var(--primary);
    color: white;
}

.btn-primary:hover {
    background: var(--primary-dark);
    transform: translateY(-1px);
}

.btn-white {
    background: white;
    color: var(--dark);
}

.btn-white:hover {
    background: #f3f4f6;
}

/* =========================================================
   SECTION
========================================================= */

.section {
    padding: 50px 0 0;
}

.section-header {
    display: flex;
    align-items: flex-end;
    justify-content: space-between;
    gap: 20px;

    margin-bottom: 22px;
}

.section-title h2 {
    margin: 0;

    font: 800 27px Poppins, sans-serif;

    letter-spacing: -.5px;
}

.section-title p {
    margin: 5px 0 0;

    color: var(--muted);
    font-size: 14px;
}

.view-all {
    color: var(--primary);
    font-weight: 700;
    font-size: 14px;
}

/* =========================================================
   CATEGORY CARDS
========================================================= */

.categories {
    display: grid;
    grid-template-columns: repeat(6, 1fr);
    gap: 14px;
}

.category {
    border: 1px solid var(--border);

    background: white;

    border-radius: var(--radius-md);

    padding: 20px 12px;

    text-align: center;

    transition: .25s;
}

.category:hover {
    transform: translateY(-4px);

    border-color: #bfdbfe;

    box-shadow: var(--shadow-md);
}

.category-icon {
    width: 55px;
    height: 55px;

    margin: 0 auto 13px;

    display: grid;
    place-items: center;

    border-radius: 15px;

    background: var(--primary-light);
    color: var(--primary);

    font-size: 22px;

    transition: .2s;
}

.category:hover .category-icon {
    background: var(--primary);
    color: white;
}

.category strong {
    display: block;
    font-size: 14px;
}

.category small {
    display: block;
    margin-top: 5px;

    color: var(--muted);
    font-size: 11px;
}

/* =========================================================
   PRODUCT TOOLBAR
========================================================= */

.product-toolbar {
    display: flex;
    align-items: center;
    justify-content: space-between;

    gap: 15px;

    margin-bottom: 18px;
}

.result-count {
    color: var(--muted);
    font-size: 14px;
}

.filters {
    display: flex;
    gap: 8px;
}

.filter-btn {
    border: 1px solid var(--border);

    background: white;

    color: #4b5563;

    padding: 9px 13px;

    border-radius: 9px;

    font-size: 13px;
    font-weight: 600;

    transition: .2s;
}

.filter-btn:hover,
.filter-btn.active {
    border-color: #93c5fd;
    background: var(--primary-light);
    color: var(--primary);
}

/* =========================================================
   PRODUCTS
========================================================= */

.products {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    gap: 18px;
}

.product {
    background: white;

    border: 1px solid var(--border);

    border-radius: var(--radius-md);

    overflow: hidden;

    display: flex;
    flex-direction: column;

    transition: .25s;
}

.product:hover {
    transform: translateY(-5px);
    box-shadow: var(--shadow-md);
    border-color: #d1d5db;
}

.product-image {
    position: relative;

    aspect-ratio: 1 / 1;

    overflow: hidden;

    background: #f3f4f6;
}

.product-image img {
    width: 100%;
    height: 100%;

    display: block;

    object-fit: cover;

    transition: .35s;
}

.product:hover .product-image img {
    transform: scale(1.05);
}

.product-badge {
    position: absolute;
    top: 12px;
    left: 12px;

    padding: 5px 9px;

    background: white;

    border-radius: 7px;

    color: var(--primary);

    font-size: 11px;
    font-weight: 800;

    box-shadow: var(--shadow-sm);
}

.wishlist {
    position: absolute;

    top: 12px;
    right: 12px;

    width: 38px;
    height: 38px;

    border: 0;

    border-radius: 50%;

    background: rgba(255,255,255,.96);

    color: #4b5563;

    display: grid;
    place-items: center;

    box-shadow: var(--shadow-sm);

    transition: .2s;
}

.wishlist:hover,
.wishlist.active {
    color: var(--danger);
    transform: scale(1.05);
}

.product-content {
    padding: 16px;
    flex: 1;
}

.product-category {
    color: var(--muted);

    text-transform: uppercase;

    letter-spacing: .06em;

    font-size: 10px;
    font-weight: 800;
}

.product h3 {
    margin: 6px 0 9px;

    font-size: 15px;

    line-height: 1.35;
}

.rating {
    color: var(--warning);
    font-size: 12px;
}

.rating span {
    color: var(--muted);
    margin-left: 5px;
}

.price-row {
    display: flex;
    align-items: baseline;
    gap: 8px;

    margin-top: 12px;
}

.price {
    font-size: 19px;
    font-weight: 800;
}

.old-price {
    color: var(--muted);
    font-size: 12px;
    text-decoration: line-through;
}

.product-actions {
    display: flex;
    gap: 8px;

    padding: 0 16px 16px;
}

.add-cart {
    flex: 1;

    border: 0;

    border-radius: 9px;

    background: var(--dark);
    color: white;

    padding: 10px;

    font-weight: 700;

    transition: .2s;
}

.add-cart:hover {
    background: var(--primary);
}

.quick-add {
    width: 43px;

    border: 1px solid var(--border);

    background: white;

    border-radius: 9px;

    color: #4b5563;
}

.quick-add:hover {
    border-color: var(--primary);
    color: var(--primary);
}

/* =========================================================
   DEAL
========================================================= */

.deal {
    overflow: hidden;

    display: grid;
    grid-template-columns: 1fr 1fr;

    border-radius: var(--radius-lg);

    background: var(--dark);
    color: white;
}

.deal-image {
    width: 100%;
    height: 100%;
    min-height: 360px;

    object-fit: cover;
}

.deal-content {
    padding: 45px;

    display: flex;
    flex-direction: column;
    justify-content: center;
}

.deal-label {
    color: #fbbf24;

    font-size: 12px;
    font-weight: 800;

    text-transform: uppercase;
    letter-spacing: .08em;
}

.deal h2 {
    margin: 9px 0;

    font: 800 31px Poppins, sans-serif;
}

.deal p {
    color: #cbd5e1;

    max-width: 500px;
}

.timer {
    display: flex;
    gap: 9px;

    margin: 20px 0;
}

.time-box {
    min-width: 65px;

    padding: 10px;

    text-align: center;

    background: #1f2937;

    border: 1px solid #374151;

    border-radius: 11px;
}

.time-box strong {
    display: block;
    font-size: 19px;
}

.time-box small {
    color: #94a3b8;
    font-size: 9px;
    font-weight: 700;
}

/* =========================================================
   TRUST
========================================================= */

.trust {
    display: grid;
    grid-template-columns: repeat(4, 1fr);

    gap: 12px;

    margin: 45px 0 10px;
}

.trust-card {
    display: flex;
    align-items: center;
    gap: 12px;

    background: white;

    border: 1px solid var(--border);

    border-radius: 14px;

    padding: 17px;
}

.trust-card i {
    width: 38px;
    height: 38px;

    display: grid;
    place-items: center;

    border-radius: 10px;

    background: var(--primary-light);

    color: var(--primary);
}

.trust-card strong {
    display: block;
    font-size: 13px;
}

.trust-card span {
    display: block;

    margin-top: 2px;

    color: var(--muted);

    font-size: 11px;
}

/* =========================================================
   TESTIMONIALS
========================================================= */

.testimonials {
    display: grid;
    grid-template-columns: repeat(3, 1fr);

    gap: 16px;
}

.testimonial {
    background: white;

    border: 1px solid var(--border);

    border-radius: var(--radius-md);

    padding: 21px;
}

.stars {
    color: var(--warning);
    font-size: 13px;
}

.testimonial p {
    color: #4b5563;

    font-size: 14px;

    min-height: 65px;
}

.customer {
    display: flex;
    align-items: center;
    gap: 10px;
}

.avatar {
    width: 40px;
    height: 40px;

    border-radius: 50%;

    object-fit: cover;
}

.customer strong {
    display: block;
    font-size: 13px;
}

.customer span {
    color: var(--muted);
    font-size: 11px;
}

/* =========================================================
   NEWSLETTER
========================================================= */

.newsletter {
    margin: 55px 0;

    padding: 40px 25px;

    text-align: center;

    border: 1px solid #dbeafe;

    border-radius: var(--radius-lg);

    background:
        linear-gradient(
            135deg,
            #eff6ff,
            #f8fafc
        );
}

.newsletter h2 {
    margin: 0 0 7px;

    font: 800 26px Poppins;
}

.newsletter p {
    margin: 0 0 20px;

    color: var(--muted);
}

.news-form {
    max-width: 500px;

    margin: auto;

    padding: 5px;

    display: flex;

    background: white;

    border: 1px solid var(--border);

    border-radius: 12px;
}

.news-form input {
    flex: 1;

    min-width: 0;

    border: 0;
    outline: 0;

    padding: 0 12px;
}

#newsletterMsg {
    margin-top: 10px;
    font-size: 13px;
}

/* =========================================================
   FOOTER
========================================================= */

footer {
    background: var(--dark);

    color: #cbd5e1;

    padding: 45px 0 20px;
}

.footer-grid {
    display: grid;

    grid-template-columns: 2fr 1fr 1fr 1fr;

    gap: 40px;
}

.footer-logo {
    color: white;

    font: 800 21px Poppins;
}

.footer-logo span {
    color: #60a5fa;
}

footer h3 {
    margin: 0 0 13px;

    color: white;

    font-size: 14px;
}

footer a {
    display: block;

    margin: 8px 0;

    color: #94a3b8;

    font-size: 13px;
}

footer a:hover {
    color: white;
}

.footer-description {
    max-width: 330px;

    color: #94a3b8;

    font-size: 13px;
}

.copyright {
    border-top: 1px solid #273244;

    margin-top: 35px;
    padding-top: 18px;

    text-align: center;

    color: #64748b;

    font-size: 12px;
}

/* =========================================================
   CART DRAWER
========================================================= */

.overlay {
    position: fixed;
    inset: 0;

    background: rgba(15,23,42,.5);

    z-index: 200;

    opacity: 0;
    pointer-events: none;

    transition: .25s;
}

.overlay.show {
    opacity: 1;
    pointer-events: auto;
}

.cart-drawer {
    position: fixed;

    top: 0;
    right: 0;

    width: min(450px, 100%);

    height: 100%;

    z-index: 210;

    background: white;

    display: flex;
    flex-direction: column;

    transform: translateX(100%);

    transition: .3s;

    box-shadow: var(--shadow-lg);
}

.cart-drawer.show {
    transform: translateX(0);
}

.cart-header {
    padding: 19px;

    border-bottom: 1px solid var(--border);

    display: flex;
    justify-content: space-between;
    align-items: center;
}

.cart-header h2 {
    margin: 0;

    font: 700 20px Poppins;
}

.close-cart {
    width: 38px;
    height: 38px;

    border: 0;

    border-radius: 10px;

    background: #f3f4f6;
}

.close-cart:hover {
    background: #e5e7eb;
}

.cart-items {
    flex: 1;

    overflow-y: auto;

    padding: 18px;
}

.cart-empty {
    padding: 80px 20px;

    text-align: center;

    color: var(--muted);
}

.cart-empty i {
    display: block;

    margin-bottom: 15px;

    font-size: 42px;
}

.cart-empty strong {
    display: block;

    color: var(--text);

    margin-bottom: 5px;
}

.cart-item {
    display: flex;

    gap: 12px;

    padding: 13px 0;

    border-bottom: 1px solid var(--border);
}

.cart-item img {
    width: 72px;
    height: 72px;

    object-fit: cover;

    border-radius: 11px;
}

.cart-item-content {
    flex: 1;
}

.cart-item h4 {
    margin: 0 0 4px;

    font-size: 14px;
}

.cart-item-price {
    color: var(--muted);

    font-size: 13px;
}

.quantity-controls {
    display: flex;
    align-items: center;

    gap: 7px;

    margin-top: 9px;
}

.qty-btn {
    width: 29px;
    height: 29px;

    border: 1px solid var(--border);

    background: white;

    border-radius: 7px;
}

.qty-btn:hover {
    border-color: var(--primary);
    color: var(--primary);
}

.quantity {
    min-width: 20px;

    text-align: center;

    font-size: 13px;
    font-weight: 700;
}

.remove-item {
    margin-left: auto;

    border: 0;

    background: transparent;

    color: var(--muted);

    font-size: 12px;
}

.remove-item:hover {
    color: var(--danger);
}

.cart-footer {
    padding: 19px;

    border-top: 1px solid var(--border);
}

.cart-summary {
    display: flex;

    justify-content: space-between;

    margin-bottom: 14px;

    font-weight: 800;
}

.checkout {
    width: 100%;
}

/* =========================================================
   TOAST
========================================================= */

.toast {
    position: fixed;

    right: 22px;
    bottom: 22px;

    z-index: 500;

    display: flex;
    align-items: center;
    gap: 10px;

    padding: 13px 17px;

    background: var(--dark);
    color: white;

    border-radius: 11px;

    box-shadow: var(--shadow-lg);

    transform: translateY(100px);
    opacity: 0;

    pointer-events: none;

    transition: .3s;
}

.toast.show {
    transform: translateY(0);
    opacity: 1;
}

.toast i {
    color: #4ade80;
}

/* =========================================================
   MOBILE SEARCH
========================================================= */

.mobile-search {
    display: none;
}

/* =========================================================
   RESPONSIVE
========================================================= */

@media(max-width:1100px) {

    .categories {
        grid-template-columns: repeat(3, 1fr);
    }

    .products {
        grid-template-columns: repeat(3, 1fr);
    }

    .trust {
        grid-template-columns: repeat(2, 1fr);
    }
}

@media(max-width:800px) {

    .container {
        width: min(var(--max-width), calc(100% - 28px));
    }

    .topbar {
        display: none;
    }

    .header-main {
        min-height: 65px;
        gap: 8px;
    }

    .mobile-menu-btn {
        width: 40px;
        height: 40px;

        border: 0;
        background: transparent;

        display: grid;
        place-items: center;

        font-size: 18px;
    }

    .logo {
        font-size: 20px;
    }

    .search-wrapper {
        display: none;
    }

    .header-action.account {
        display: none;
    }

    .navigation {
        display: none;
    }

    .navigation.mobile-open {
        display: block;
    }

    .navigation .container {
        flex-direction: column;

        align-items: stretch;

        padding: 10px 0 15px;
    }

    .navigation a {
        padding: 11px 13px;
    }

    .hero {
        min-height: 500px;

        margin-top: 16px;
    }

    .hero-content {
        padding: 35px 25px;
    }

    .hero h1 {
        font-size: 40px;
    }

    .deal {
        grid-template-columns: 1fr;
    }

    .deal-image {
        min-height: 260px;
        max-height: 300px;
    }

    .deal-content {
        padding: 32px 25px;
    }

    .testimonials {
        grid-template-columns: 1fr;
    }

    .footer-grid {
        grid-template-columns: 1fr 1fr;
    }

    .mobile-search {
        position: absolute;

        left: 14px;
        right: 14px;
        top: 72px;

        z-index: 50;

        display: none;
    }

    .mobile-search.open {
        display: block;
    }

    .mobile-search .search {
        background: white;

        border: 1px solid var(--border);

        box-shadow: var(--shadow-md);
    }
}

@media(max-width:580px) {

    .container {
        width: min(var(--max-width), calc(100% - 20px));
    }

    .header-action {
        width: 38px;
        height: 38px;
    }

    .hero {
        border-radius: 18px;
        min-height: 510px;
    }

    .hero-content {
        padding: 30px 21px;
    }

    .hero h1 {
        font-size: 36px;

        letter-spacing: -1.5px;
    }

    .hero p {
        font-size: 15px;
    }

    .hero-actions {
        flex-direction: column;
    }

    .hero-actions .btn {
        width: 100%;
    }

    .section {
        padding-top: 35px;
    }

    .section-header {
        align-items: flex-start;

        flex-direction: column;

        gap: 6px;
    }

    .section-title h2 {
        font-size: 23px;
    }

    .categories {
        grid-template-columns: repeat(2, 1fr);

        gap: 9px;
    }

    .category {
        padding: 17px 8px;
    }

    .products {
        grid-template-columns: repeat(2, 1fr);

        gap: 10px;
    }

    .product-content {
        padding: 12px;
    }

    .product h3 {
        font-size: 13px;
    }

    .product-actions {
        padding: 0 12px 12px;
    }

    .add-cart {
        font-size: 12px;
    }

    .quick-add {
        display: none;
    }

    .product-toolbar {
        flex-direction: column;

        align-items: stretch;
    }

    .filters {
        display: grid;

        grid-template-columns: repeat(3, 1fr);
    }

    .filter-btn {
        padding: 8px 5px;

        font-size: 11px;
    }

    .trust {
        grid-template-columns: 1fr;
    }

    .deal h2 {
        font-size: 25px;
    }

    .timer {
        gap: 5px;
    }

    .time-box {
        min-width: 55px;
    }

    .newsletter {
        padding: 30px 16px;
    }

    .news-form {
        flex-direction: column;

        background: transparent;

        border: 0;

        padding: 0;

        gap: 8px;
    }

    .news-form input {
        height: 45px;

        border: 1px solid var(--border);

        border-radius: 10px;

        background: white;
    }

    .news-form button {
        width: 100%;
    }

    .footer-grid {
        grid-template-columns: 1fr;
    }

    .toast {
        left: 12px;
        right: 12px;
        bottom: 12px;

        justify-content: center;
    }
}

</style>
</head>

<body>

<!-- =======================================================
     TOP BAR
======================================================= -->

<div class="topbar">
    <div class="container">
        <span>
            <i class="fa-solid fa-truck-fast"></i>
            Free shipping on orders over $50
        </span>

        <span>
            Secure checkout · Easy returns
        </span>
    </div>
</div>


<!-- =======================================================
     HEADER
======================================================= -->

<header>

    <div class="container header-main">

        <button
            class="mobile-menu-btn"
            id="mobileMenuBtn"
            aria-label="Open menu">
            <i class="fa-solid fa-bars"></i>
        </button>

        <a href="#" class="logo">
            Nexus<span>Shop</span>
        </a>

        <div class="search-wrapper">

            <div class="search">

                <i class="fa-solid fa-magnifying-glass search-icon"></i>

                <input
                    id="searchInput"
                    type="search"
                    placeholder="Search products, categories..."
                    autocomplete="off">

                <button
                    id="searchBtn"
                    aria-label="Search">
                    <i class="fa-solid fa-arrow-right"></i>
                </button>

            </div>

        </div>

        <div class="header-actions">

            <button
                class="header-action"
                id="mobileSearchBtn"
                aria-label="Search">

                <i class="fa-solid fa-magnifying-glass"></i>

            </button>

            <button
                class="header-action account"
                aria-label="Account">

                <i class="fa-regular fa-user"></i>

            </button>

            <button
                class="header-action"
                id="wishlistBtn"
                aria-label="Wishlist">

                <i class="fa-regular fa-heart"></i>

            </button>

            <button
                class="header-action"
                id="cartBtn"
                aria-label="Shopping cart">

                <i class="fa-solid fa-bag-shopping"></i>

                <span
                    class="cart-count"
                    id="cartCount">
                    0
                </span>

            </button>

        </div>

    </div>

    <!-- Mobile search -->

    <div class="mobile-search" id="mobileSearch">

        <div class="search">

            <i class="fa-solid fa-magnifying-glass search-icon"></i>

            <input
                id="mobileSearchInput"
                type="search"
                placeholder="Search products...">

            <button id="mobileSearchSubmit">
                <i class="fa-solid fa-arrow-right"></i>
            </button>

        </div>

    </div>


    <!-- Navigation -->

    <nav class="navigation" id="navigation">

        <div class="container">

            <a href="#" class="active">
                <i class="fa-solid fa-house"></i>
                Home
            </a>

            <a href="#categories">
                Categories
            </a>

            <a href="#products">
                Trending
            </a>

            <a href="#deals">
                Deals
            </a>

            <a href="#reviews">
                Reviews
            </a>

        </div>

    </nav>

</header>


<!-- =======================================================
     MAIN
======================================================= -->

<main class="container">


<!-- HERO -->

<section class="hero">

    <div class="hero-content">

        <span class="hero-badge">
            <i class="fa-solid fa-sparkles"></i>
            NEW SEASON PICKS
        </span>

        <h1>
            Shop smarter.<br>
            Live better.
        </h1>

        <p>
            Discover technology, fashion and everyday essentials
            carefully selected for quality, value and style.
        </p>

        <div class="hero-actions">

            <button
                class="btn btn-primary"
                id="shopNow">

                Start shopping

                <i class="fa-solid fa-arrow-right"></i>

            </button>

            <a
                href="#deals"
                class="btn btn-white">

                Today's deals

            </a>

        </div>

    </div>

</section>


<!-- =======================================================
     CATEGORIES
======================================================= -->

<section
    class="section"
    id="categories">

    <div class="section-header">

        <div class="section-title">

            <h2>Shop by category</h2>

            <p>
                Browse popular categories and find what you need faster.
            </p>

        </div>

    </div>

    <div
        class="categories"
        id="categoriesGrid">
    </div>

</section>


<!-- =======================================================
     PRODUCTS
======================================================= -->

<section
    class="section"
    id="products">

    <div class="section-header">

        <div class="section-title">

            <h2>Trending products</h2>

            <p>
                Popular products customers are loving right now.
            </p>

        </div>

        <a
            href="#products"
            class="view-all">

            View all
            <i class="fa-solid fa-arrow-right"></i>

        </a>

    </div>


    <div class="product-toolbar">

        <div
            class="result-count"
            id="resultCount">
            8 products
        </div>

        <div class="filters">

            <button
                class="filter-btn active"
                data-filter="all">
                All
            </button>

            <button
                class="filter-btn"
                data-filter="under500">
                Under $500
            </button>

            <button
                class="filter-btn"
                data-filter="deals">
                On sale
            </button>

        </div>

    </div>


    <div
        class="products"
        id="productsGrid">
    </div>

</section>


<!-- =======================================================
     DEAL
======================================================= -->

<section
    class="section"
    id="deals">

    <div class="section-header">

        <div class="section-title">

            <h2>Deal of the day</h2>

            <p>
                Limited-time offer while stock lasts.
            </p>

        </div>

    </div>


    <div class="deal">

        <img
            class="deal-image"
            src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=90"
            alt="MacBook Air">

        <div class="deal-content">

            <span class="deal-label">
                Flash sale · 17% off
            </span>

            <h2>
                MacBook Air M2
            </h2>

            <p>
                Thin, light and powerful — premium performance
                for work, study and everyday life.
            </p>


            <div class="timer">

                <div class="time-box">
                    <strong id="dealDays">0</strong>
                    <small>DAYS</small>
                </div>

                <div class="time-box">
                    <strong id="dealHours">00</strong>
                    <small>HOURS</small>
                </div>

                <div class="time-box">
                    <strong id="dealMinutes">00</strong>
                    <small>MIN</small>
                </div>

                <div class="time-box">
                    <strong id="dealSeconds">00</strong>
                    <small>SEC</small>
                </div>

            </div>


            <div style="
                display:flex;
                align-items:center;
                gap:10px;
                margin-bottom:20px;
            ">

                <strong style="font-size:28px;">
                    $999
                </strong>

                <span style="
                    color:#94a3b8;
                    text-decoration:line-through;
                ">
                    $1,199
                </span>

            </div>


            <button
                class="btn btn-primary"
                id="buyDeal"
                style="align-self:flex-start">

                Add deal to cart

                <i class="fa-solid fa-bag-shopping"></i>

            </button>

        </div>

    </div>

</section>


<!-- =======================================================
     TRUST
======================================================= -->

<div class="trust">

    <div class="trust-card">

        <i class="fa-solid fa-truck-fast"></i>

        <div>
            <strong>Fast delivery</strong>
            <span>Reliable shipping options</span>
        </div>

    </div>


    <div class="trust-card">

        <i class="fa-solid fa-shield-halved"></i>

        <div>
            <strong>Secure payments</strong>
            <span>Your payment is protected</span>
        </div>

    </div>


    <div class="trust-card">

        <i class="fa-solid fa-rotate-left"></i>

        <div>
            <strong>Easy returns</strong>
            <span>Hassle-free returns</span>
        </div>

    </div>


    <div class="trust-card">

        <i class="fa-solid fa-headset"></i>

        <div>
            <strong>Helpful support</strong>
            <span>We're here when you need us</span>
        </div>

    </div>

</div>


<!-- =======================================================
     REVIEWS
======================================================= -->

<section
    class="section"
    id="reviews">

    <div class="section-header">

        <div class="section-title">

            <h2>What shoppers say</h2>

            <p>
                Real feedback from our customers.
            </p>

        </div>

    </div>


    <div class="testimonials">

        <article class="testimonial">

            <div class="stars">
                ★★★★★
            </div>

            <p>
                “Fast shipping and excellent customer support.
                The product exceeded my expectations!”
            </p>

            <div class="customer">

                <img
                    class="avatar"
                    src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80"
                    alt="Ava Martin">

                <div>
                    <strong>Ava Martin</strong>
                    <span>Verified buyer</span>
                </div>

            </div>

        </article>


        <article class="testimonial">

            <div class="stars">
                ★★★★☆
            </div>

            <p>
                “Great selection and the checkout was smooth.
                Will definitely shop again.”
            </p>

            <div class="customer">

                <img
                    class="avatar"
                    src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80"
                    alt="Michael Lee">

                <div>
                    <strong>Michael Lee</strong>
                    <span>Frequent buyer</span>
                </div>

            </div>

        </article>


        <article class="testimonial">

            <div class="stars">
                ★★★★★
            </div>

            <p>
                “The site is easy to navigate and finding
                products is much quicker than before.”
            </p>

            <div class="customer">

                <div
                    class="avatar"
                    style="
                        background:#eff6ff;
                        display:grid;
                        place-items:center;
                        color:#2563eb;
                    ">

                    <i class="fa-solid fa-user"></i>

                </div>

                <div>
                    <strong>Jordan Kim</strong>
                    <span>Verified buyer</span>
                </div>

            </div>

        </article>

    </div>

</section>


<!-- =======================================================
     NEWSLETTER
======================================================= -->

<section class="newsletter">

    <h2>
        Get the best deals first
    </h2>

    <p>
        Join our newsletter for new arrivals, special offers
        and useful updates.
    </p>

    <form
        class="news-form"
        id="newsletterForm">

        <input
            id="newsletterEmail"
            type="email"
            placeholder="Enter your email address"
            required>

        <button
            class="btn btn-primary"
            type="submit">

            Subscribe

        </button>

    </form>

    <div id="newsletterMsg"></div>

</section>

</main>


<!-- =======================================================
     FOOTER
======================================================= -->

<footer>

    <div class="container footer-grid">

        <div>

            <div class="footer-logo">
                Nexus<span>Shop</span>
            </div>

            <p class="footer-description">
                A clean, friendly shopping experience for
                modern everyday products.
            </p>

        </div>


        <div>

            <h3>Shop</h3>

            <a href="#products">Trending</a>
            <a href="#categories">Categories</a>
            <a href="#deals">Deals</a>

        </div>


        <div>

            <h3>Support</h3>

            <a href="#">Help center</a>
            <a href="#">Shipping & returns</a>
            <a href="#">Contact us</a>

        </div>


        <div>

            <h3>Company</h3>

            <a href="#">About</a>
            <a href="#">Careers</a>
            <a href="#">Privacy</a>

        </div>

    </div>


    <div class="container copyright">

        © <span id="year"></span>
        NexusShop. All rights reserved.

    </div>

</footer>


<!-- =======================================================
     CART
======================================================= -->

<div
    class="overlay"
    id="overlay">
</div>


<aside
    class="cart-drawer"
    id="cartDrawer"
    aria-label="Shopping cart">


    <div class="cart-header">

        <h2>
            Your cart
        </h2>

        <button
            class="close-cart"
            id="closeCart"
            aria-label="Close cart">

            <i class="fa-solid fa-xmark"></i>

        </button>

    </div>


    <div
        class="cart-items"
        id="cartItems">

        <div class="cart-empty">

            <i class="fa-solid fa-bag-shopping"></i>

            <strong>
                Your cart is empty
            </strong>

            <small>
                Add a product to get started.
            </small>

        </div>

    </div>


    <div class="cart-footer">

        <div class="cart-summary">

            <span>
                Total
            </span>

            <span id="cartTotal">
                $0
            </span>

        </div>

        <button
            class="btn btn-primary checkout"
            id="checkoutBtn">

            Proceed to checkout

            <i class="fa-solid fa-arrow-right"></i>

        </button>

    </div>

</aside>


<!-- =======================================================
     TOAST
======================================================= -->

<div
    class="toast"
    id="toast">

    <i class="fa-solid fa-circle-check"></i>

    <span id="toastMessage">
        Added to cart
    </span>

</div>


<script>

/* =========================================================
   DATA
========================================================= */

const CATEGORIES = [

    {
        id: "phones",
        name: "Smartphones",
        icon: "fa-mobile-screen-button"
    },

    {
        id: "laptops",
        name: "Laptops",
        icon: "fa-laptop"
    },

    {
        id: "clothing",
        name: "Clothing",
        icon: "fa-shirt"
    },

    {
        id: "gadgets",
        name: "Gadgets",
        icon: "fa-headphones"
    },

    {
        id: "footwear",
        name: "Footwear",
        icon: "fa-shoe-prints"
    },

    {
        id: "accessories",
        name: "Accessories",
        icon: "fa-watch"
    }

];


const PRODUCTS = [

    {
        id: 1,
        title: "iPhone 14 Pro Max",
        price: 1099,
        oldPrice: 1199,
        rating: 5,
        reviews: 128,
        badge: "New",
        img: "https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85",
        category: "phones"
    },

    {
        id: 2,
        title: "MacBook Pro 14",
        price: 1999,
        rating: 4,
        reviews: 86,
        img: "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85",
        category: "laptops"
    },

    {
        id: 3,
        title: "Apple Watch Series 8",
        price: 349,
        oldPrice: 399,
        rating: 5,
        reviews: 214,
        badge: "-25%",
        img: "https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=700&q=85",
        category: "accessories"
    },

    {
        id: 4,
        title: "Nike Air Max 270",
        price: 150,
        rating: 4,
        reviews: 53,
        img: "https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=700&q=85",
        category: "footwear"
    },

    {
        id: 5,
        title: "Sony A7 IV Camera",
        price: 2499,
        rating: 5,
        reviews: 42,
        img: "https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=700&q=85",
        category: "gadgets"
    },

    {
        id: 6,
        title: "Chanel No. 5",
        price: 120,
        rating: 5,
        reviews: 189,
        img: "https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=700&q=85",
        category: "accessories"
    },

    {
        id: 7,
        title: "Travel Backpack",
        price: 79,
        oldPrice: 99,
        rating: 4,
        reviews: 67,
        img: "https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=700&q=85",
        category: "accessories"
    },

    {
        id: 8,
        title: "Sony WH-1000XM5",
        price: 399,
        rating: 5,
        reviews: 156,
        img: "https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=700&q=85",
        category: "gadgets"
    }

];


/* =========================================================
   ELEMENTS
========================================================= */

const categoriesGrid =
    document.getElementById("categoriesGrid");

const productsGrid =
    document.getElementById("productsGrid");

const resultCount =
    document.getElementById("resultCount");

const searchInput =
    document.getElementById("searchInput");

const mobileSearchInput =
    document.getElementById("mobileSearchInput");

const cartCount =
    document.getElementById("cartCount");

const cartDrawer =
    document.getElementById("cartDrawer");

const overlay =
    document.getElementById("overlay");

const cartItems =
    document.getElementById("cartItems");

const cartTotal =
    document.getElementById("cartTotal");

const toast =
    document.getElementById("toast");

const toastMessage =
    document.getElementById("toastMessage");

let cart = {};

let wishlist = new Set();


/* =========================================================
   SECURITY
========================================================= */

function escapeHtml(text) {

    return String(text).replace(
        /[&<>"']/g,

        character => ({
            "&": "&amp;",
            "<": "&lt;",
            ">": "&gt;",
            '"': "&quot;",
            "'": "&#39;"
        })[character]
    );

}


/* =========================================================
   TOAST
========================================================= */

let toastTimer;

function showToast(message) {

    toastMessage.textContent = message;

    toast.classList.add("show");

    clearTimeout(toastTimer);

    toastTimer = setTimeout(() => {

        toast.classList.remove("show");

    }, 2200);

}


/* =========================================================
   CATEGORIES
========================================================= */

function renderCategories() {

    categoriesGrid.innerHTML =
        CATEGORIES.map(category => `

            <button
                class="category"
                data-category="${category.id}">

                <div class="category-icon">

                    <i class="fa-solid ${category.icon}"></i>

                </div>

                <strong>
                    ${escapeHtml(category.name)}
                </strong>

                <small>
                    Explore products
                </small>

            </button>

        `).join("");


    document
        .querySelectorAll(".category")
        .forEach(button => {

            button.addEventListener("click", () => {

                const category =
                    button.dataset.category;

                filterByCategory(category);

                document
                    .getElementById("products")
                    .scrollIntoView({
                        behavior: "smooth"
                    });

            });

        });

}


/* =========================================================
   PRODUCTS
========================================================= */

function renderProducts(list) {

    resultCount.textContent =
        `${list.length} product${list.length === 1 ? "" : "s"}`;


    if (!list.length) {

        productsGrid.innerHTML = `

            <div style="
                grid-column:1/-1;
                text-align:center;
                padding:70px 20px;
            ">

                <i
                    class="fa-solid fa-box-open"
                    style="
                        font-size:42px;
                        color:#9ca3af;
                        margin-bottom:15px;
                    ">
                </i>

                <h3 style="margin:0 0 5px;">
                    No products found
                </h3>

                <p style="
                    color:#6b7280;
                    margin:0;
                ">
                    Try another search or filter.
                </p>

            </div>

        `;

        return;

    }


    productsGrid.innerHTML =
        list.map(product => `

            <article class="product">

                <div class="product-image">

                    ${
                        product.badge
                        ?
                        `
                        <span class="product-badge">
                            ${escapeHtml(product.badge)}
                        </span>
                        `
                        :
                        ""
                    }

                    <button
                        class="wishlist ${
                            wishlist.has(product.id)
                            ? "active"
                            : ""
                        }"
                        data-wishlist="${product.id}"
                        aria-label="Add to wishlist">

                        <i class="${
                            wishlist.has(product.id)
                            ? "fa-solid"
                            : "fa-regular"
                        } fa-heart"></i>

                    </button>

                    <img
                        src="${product.img}"
                        alt="${escapeHtml(product.title)}"
                        loading="lazy">

                </div>


                <div class="product-content">

                    <div class="product-category">
                        ${escapeHtml(product.category)}
                    </div>

                    <h3>
                        ${escapeHtml(product.title)}
                    </h3>

                    <div class="rating">

                        ${"★".repeat(Math.round(product.rating))}

                        <span>
                            (${product.reviews})
                        </span>

                    </div>


                    <div class="price-row">

                        <span class="price">
                            $${product.price.toLocaleString()}
                        </span>

                        ${
                            product.oldPrice
                            ?
                            `
                            <span class="old-price">
                                $${product.oldPrice.toLocaleString()}
                            </span>
                            `
                            :
                            ""
                        }

                    </div>

                </div>


                <div class="product-actions">

                    <button
                        class="add-cart"
                        data-id="${product.id}">

                        <i class="fa-solid fa-bag-shopping"></i>

                        Add to cart

                    </button>

                    <button
                        class="quick-add"
                        data-id="${product.id}"
                        aria-label="Quick add">

                        <i class="fa-solid fa-plus"></i>

                    </button>

                </div>

            </article>

        `).join("");


    attachProductEvents();

}


/* =========================================================
   PRODUCT EVENTS
========================================================= */

function attachProductEvents() {

    document
        .querySelectorAll(".add-cart, .quick-add")
        .forEach(button => {

            button.addEventListener("click", () => {

                addToCart(
                    Number(button.dataset.id)
                );

            });

        });


    document
        .querySelectorAll(".wishlist")
        .forEach(button => {

            button.addEventListener("click", () => {

                const id =
                    Number(button.dataset.wishlist);

                toggleWishlist(id);

            });

        });

}


/* =========================================================
   SEARCH
========================================================= */

function searchProducts(query) {

    const q =
        String(query || "")
        .trim()
        .toLowerCase();


    if (!q) {

        renderProducts(PRODUCTS);

        return;

    }


    const results =
        PRODUCTS.filter(product => {

            return (
                product.title
                    .toLowerCase()
                    .includes(q)

                ||

                product.category
                    .toLowerCase()
                    .includes(q)
            );

        });


    renderProducts(results);

}


function filterByCategory(category) {

    const results =
        PRODUCTS.filter(
            product =>
                product.category === category
        );

    renderProducts(results);

}


/* =========================================================
   CART
========================================================= */

```
