<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>NexusShop — Simple Shopping</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Poppins:wght@600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>
:root {
  --bg:#f7f8fb; --surface:#fff; --surface-2:#f0f3f8; --text:#182230;
  --muted:#667085; --primary:#2457e6; --primary-dark:#1743bd;
  --border:#e5e7eb; --success:#16a34a; --danger:#ef4444;
  --shadow:0 10px 30px rgba(16,24,40,.07); --radius:16px; --max:1240px;
}
*{box-sizing:border-box}
html{scroll-behavior:smooth}
body{margin:0;background:var(--bg);color:var(--text);font-family:Inter,system-ui,sans-serif;line-height:1.5}
body.no-scroll{overflow:hidden}
button,input{font:inherit}
button{cursor:pointer}
a{color:inherit;text-decoration:none}
.container{width:min(var(--max),calc(100% - 32px));margin:auto}
.muted{color:var(--muted)}

/* Header */
.topbar{background:#111827;color:#fff;font-size:13px}
.topbar .container{display:flex;justify-content:space-between;gap:16px;padding:8px 0}
header{position:sticky;top:0;z-index:50;background:rgba(255,255,255,.94);backdrop-filter:blur(14px);border-bottom:1px solid var(--border)}
.header-main{height:76px;display:flex;align-items:center;gap:28px}
.brand{font:700 22px Poppins,sans-serif;white-space:nowrap}
.brand span{color:var(--primary)}
.search{flex:1;display:flex;max-width:620px;background:var(--surface-2);border:1px solid transparent;border-radius:12px;height:46px;overflow:hidden}
.search:focus-within{background:#fff;border-color:#b9c7ef;box-shadow:0 0 0 4px rgba(36,87,230,.08)}
.search input{width:100%;border:0;outline:0;background:transparent;padding:0 15px;color:var(--text)}
.search button{width:50px;border:0;background:transparent;color:var(--muted)}
.header-actions{display:flex;align-items:center;gap:8px;margin-left:auto}
.action{position:relative;width:42px;height:42px;border:0;background:transparent;border-radius:10px;display:grid;place-items:center;color:var(--text)}
.action:hover{background:var(--surface-2);color:var(--primary)}
.cart-count{position:absolute;right:1px;top:0;background:var(--danger);color:#fff;border-radius:99px;min-width:18px;height:18px;padding:0 5px;font-size:11px;font-weight:700;display:grid;place-items:center}
.nav{border-top:1px solid var(--border)}
.nav .container{display:flex;align-items:center;gap:6px;height:48px}
.nav a{padding:8px 14px;border-radius:8px;font-size:14px;font-weight:600;color:#475467}
.nav a:hover,.nav a.active{background:#eef3ff;color:var(--primary)}
.mobile-toggle{display:none}

/* Hero */
.hero{margin-top:20px;border-radius:22px;overflow:hidden;min-height:410px;display:flex;align-items:center;background:
linear-gradient(90deg,rgba(9,19,39,.88),rgba(9,19,39,.45)),
url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=85') center/cover}
.hero-content{max-width:650px;color:#fff;padding:55px}
.eyebrow{display:inline-flex;align-items:center;gap:8px;background:rgba(255,255,255,.14);border:1px solid rgba(255,255,255,.2);padding:7px 12px;border-radius:99px;font-size:12px;font-weight:700}
.hero h1{font:700 clamp(34px,5vw,58px)/1.05 Poppins,sans-serif;margin:18px 0 14px;letter-spacing:-1.5px}
.hero p{font-size:16px;max-width:570px;color:rgba(255,255,255,.88);margin:0 0 26px}
.hero-buttons{display:flex;gap:12px;flex-wrap:wrap}
.btn{border:0;border-radius:11px;padding:12px 18px;font-weight:700;display:inline-flex;align-items:center;justify-content:center;gap:9px;transition:.2s}
.btn-primary{background:var(--primary);color:#fff}
.btn-primary:hover{background:var(--primary-dark);transform:translateY(-1px)}
.btn-light{background:#fff;color:#172033}
.btn-light:hover{background:#f2f4f7}

/* Sections */
.section{padding:46px 0 10px}
.section-head{display:flex;align-items:end;justify-content:space-between;gap:20px;margin-bottom:20px}
.section-head h2{margin:0;font:700 26px Poppins,sans-serif}
.section-head p{margin:5px 0 0;color:var(--muted);font-size:14px}
.view-all{color:var(--primary);font-weight:700;font-size:14px}

/* Categories */
.categories{display:grid;grid-template-columns:repeat(6,1fr);gap:14px}
.category{background:var(--surface);border:1px solid var(--border);border-radius:var(--radius);padding:20px 12px;text-align:center;transition:.2s;box-shadow:0 2px 8px rgba(16,24,40,.02)}
.category:hover{transform:translateY(-3px);border-color:#c7d2fe;box-shadow:var(--shadow)}
.category-icon{width:52px;height:52px;margin:0 auto 12px;border-radius:14px;background:#eef3ff;color:var(--primary);display:grid;place-items:center;font-size:21px}
.category strong{display:block;font-size:14px}
.category small{display:block;margin-top:4px;color:var(--muted);font-size:12px}

/* Products */
.toolbar{display:flex;align-items:center;justify-content:space-between;gap:12px;margin-bottom:16px}
.result-count{font-size:14px;color:var(--muted)}
.filters{display:flex;gap:8px}
.filter-btn{border:1px solid var(--border);background:#fff;color:#475467;border-radius:9px;padding:9px 12px;font-weight:600;font-size:13px}
.filter-btn:hover{border-color:#b8c5e8;color:var(--primary)}
.products{display:grid;grid-template-columns:repeat(4,1fr);gap:18px}
.product{position:relative;background:var(--surface);border:1px solid var(--border);border-radius:var(--radius);overflow:hidden;transition:.2s;display:flex;flex-direction:column}
.product:hover{transform:translateY(-4px);box-shadow:var(--shadow);border-color:#d0d5dd}
.product-media{position:relative;background:#f2f4f7;aspect-ratio:1/1;overflow:hidden}
.product-media img{width:100%;height:100%;object-fit:cover;display:block;transition:.35s}
.product:hover .product-media img{transform:scale(1.04)}
.badge{position:absolute;left:12px;top:12px;background:#fff;color:var(--primary);padding:5px 9px;border-radius:8px;font-size:11px;font-weight:800;box-shadow:0 3px 8px rgba(0,0,0,.08)}
.wish{position:absolute;right:12px;top:12px;width:36px;height:36px;border:0;border-radius:50%;background:rgba(255,255,255,.95);display:grid;place-items:center;color:#475467}
.wish.active{color:var(--danger)}
.product-body{padding:15px 16px 12px;flex:1}
.category-label{font-size:11px;text-transform:uppercase;letter-spacing:.06em;color:var(--muted);font-weight:700}
.product h3{font-size:15px;margin:6px 0 10px;line-height:1.35}
.rating{font-size:12px;color:#f59e0b}
.rating span{color:var(--muted);margin-left:4px}
.price-line{display:flex;align-items:baseline;gap:8px;margin-top:12px}
.price{font-size:18px;font-weight:800}
.old-price{font-size:12px;color:var(--muted);text-decoration:line-through}
.product-footer{padding:0 16px 16px;display:flex;gap:8px}
.add-btn{flex:1;border:0;border-radius:9px;padding:10px;background:#111827;color:#fff;font-weight:700}
.add-btn:hover{background:var(--primary)}
.quick-btn{width:42px;border:1px solid var(--border);background:#fff;border-radius:9px;color:#475467}

/* Deal */
.deal{margin-top:20px;background:#111827;color:#fff;border-radius:20px;overflow:hidden;display:grid;grid-template-columns:1fr 1fr}
.deal img{width:100%;height:100%;min-height:330px;object-fit:cover}
.deal-content{padding:38px;display:flex;flex-direction:column;justify-content:center}
.deal-tag{color:#fbbf24;font-size:12px;font-weight:800;text-transform:uppercase;letter-spacing:.08em}
.deal h2{font:700 30px Poppins;margin:8px 0}
.deal p{color:#cbd5e1}
.timer{display:flex;gap:8px;margin:18px 0 22px}
.time-box{min-width:62px;padding:10px 8px;text-align:center;background:#1f2937;border:1px solid #374151;border-radius:10px}
.time-box strong{font-size:19px;display:block}
.time-box small{font-size:10px;color:#94a3b8}

/* Trust */
.trust{display:grid;grid-template-columns:repeat(4,1fr);gap:12px;margin:40px 0 20px}
.trust-card{background:#fff;border:1px solid var(--border);border-radius:14px;padding:17px;display:flex;gap:12px;align-items:center}
.trust-card i{color:var(--primary);font-size:20px}
.trust-card strong{font-size:13px;display:block}
.trust-card span{font-size:11px;color:var(--muted)}

/* Testimonials */
.testimonials{display:grid;grid-template-columns:repeat(3,1fr);gap:16px}
.testimonial{background:#fff;border:1px solid var(--border);border-radius:var(--radius);padding:20px}
.stars{color:#f59e0b;font-size:13px}
.testimonial p{font-size:14px;color:#475467}
.customer{display:flex;align-items:center;gap:10px}
.avatar{width:38px;height:38px;border-radius:50%;object-fit:cover}
.customer strong{font-size:13px;display:block}
.customer span{font-size:11px;color:var(--muted)}

/* Newsletter/footer */
.newsletter{margin:46px 0;background:linear-gradient(135deg,#eef3ff,#f8faff);border:1px solid #dce5ff;border-radius:20px;padding:35px;text-align:center}
.newsletter h2{font:700 25px Poppins;margin:0 0 7px}
.newsletter p{color:var(--muted);margin:0 0 18px}
.news-form{display:flex;max-width:480px;margin:auto;background:#fff;border:1px solid var(--border);border-radius:11px;padding:5px}
.news-form input{flex:1;border:0;outline:0;padding:0 10px;min-width:0}
.news-form button{padding:10px 16px}
#newsletterMsg{font-size:13px;margin-top:10px}
footer{background:#111827;color:#cbd5e1;margin-top:20px;padding:42px 0 22px}
.footer-grid{display:grid;grid-template-columns:2fr 1fr 1fr 1fr;gap:35px}
footer h3{color:#fff;font-size:14px;margin:0 0 12px}
footer a{display:block;font-size:13px;margin:8px 0;color:#94a3b8}
footer a:hover{color:#fff}
.footer-brand{font:700 20px Poppins;color:#fff}
.footer-brand span{color:#60a5fa}
.copyright{border-top:1px solid #273244;margin-top:30px;padding-top:18px;text-align:center;font-size:12px;color:#64748b}

/* Cart drawer */
.overlay{position:fixed;inset:0;background:rgba(15,23,42,.45);z-index:90;display:none}
.overlay.show{display:block}
.drawer{position:fixed;right:0;top:0;height:100%;width:min(430px,100%);background:#fff;z-index:100;transform:translateX(100%);transition:.25s;display:flex;flex-direction:column}
.drawer.show{transform:translateX(0)}
.drawer-head{padding:20px;border-bottom:1px solid var(--border);display:flex;justify-content:space-between;align-items:center}
.drawer-head h2{margin:0;font:700 20px Poppins}
.close{border:0;background:var(--surface-2);width:36px;height:36px;border-radius:9px}
.cart-items{padding:18px;overflow:auto;flex:1}
.cart-empty{text-align:center;padding:70px 20px;color:var(--muted)}
.cart-empty i{font-size:42px;margin-bottom:14px}
.cart-item{display:flex;gap:12px;padding:12px 0;border-bottom:1px solid var(--border)}
.cart-item img{width:68px;height:68px;border-radius:10px;object-fit:cover}
.cart-item h4{margin:0 0 5px;font-size:14px}
.cart-item p{margin:0;font-size:13px;color:var(--muted)}
.cart-bottom{padding:18px;border-top:1px solid var(--border)}
.total-row{display:flex;justify-content:space-between;font-weight:800;margin-bottom:14px}

/* Mobile */
@media(max-width:1050px){
  .categories{grid-template-columns:repeat(3,1fr)}
  .products{grid-template-columns:repeat(3,1fr)}
  .trust{grid-template-columns:repeat(2,1fr)}
}
@media(max-width:780px){
  .topbar{display:none}
  .header-main{height:64px;gap:10px}
  .mobile-toggle{display:grid;width:40px;height:40px;border:0;background:transparent;place-items:center;font-size:18px}
  .brand{font-size:19px}
  .header-actions .account-btn{display:none}
  .search{position:absolute;left:16px;right:16px;top:70px;max-width:none;display:none}
  .search.mobile-open{display:flex}
  header{padding-bottom:0}
  .nav{display:none}
  .hero{margin-top:14px;min-height:470px}
  .hero-content{padding:32px 25px}
  .hero h1{font-size:38px}
  .deal{grid-template-columns:1fr}
  .deal img{min-height:230px;max-height:270px}
  .testimonials{grid-template-columns:1fr}
  .footer-grid{grid-template-columns:1fr 1fr}
}
@media(max-width:560px){
  .container{width:min(var(--max),calc(100% - 22px))}
  .categories{grid-template-columns:repeat(2,1fr);gap:10px}
  .products{grid-template-columns:1fr 1fr;gap:10px}
  .product-body{padding:12px}
  .product-footer{padding:0 12px 12px}
  .product h3{font-size:13px}
  .price{font-size:16px}
  .quick-btn{display:none}
  .section{padding-top:32px}
  .section-head{align-items:start;flex-direction:column;gap:4px}
  .toolbar{align-items:stretch;flex-direction:column}
  .filters{display:grid;grid-template-columns:1fr 1fr}
  .trust{grid-template-columns:1fr}
  .newsletter{padding:25px 15px}
  .news-form{background:transparent;border:0;padding:0;display:grid;gap:8px}
  .news-form input{height:44px;background:#fff;border:1px solid var(--border);border-radius:9px}
  .footer-grid{grid-template-columns:1fr}
  .timer{gap:5px}
  .time-box{min-width:54px}
}
</style>
</head>

<body>
<div class="topbar"><div class="container"><span><i class="fa-solid fa-truck-fast"></i> Free shipping on orders over $50</span><span>Secure checkout · Easy returns</span></div></div>

<header>
  <div class="container header-main">
    <button class="mobile-toggle" id="mobileToggle" aria-label="Open menu"><i class="fa-solid fa-bars"></i></button>
    <a class="brand" href="#">Nexus<span>Shop</span></a>

    <div class="search" id="searchBox" role="search">
      <input id="searchInput" type="search" placeholder="Search products..." aria-label="Search products">
      <button id="searchBtn" aria-label="Search"><i class="fa-solid fa-magnifying-glass"></i></button>
    </div>

    <div class="header-actions">
      <button class="action" id="mobileSearchBtn" aria-label="Search"><i class="fa-solid fa-magnifying-glass"></i></button>
      <button class="action account-btn" title="Account"><i class="fa-regular fa-user"></i></button>
      <button class="action" title="Wishlist" id="wishlistBtn"><i class="fa-regular fa-heart"></i></button>
      <button class="action" id="cartBtn" title="Cart" aria-label="Open cart">
        <i class="fa-solid fa-bag-shopping"></i><span class="cart-count" id="cartCount">0</span>
      </button>
    </div>
  </div>
  <nav class="nav"><div class="container">
    <a class="active" href="#">Home</a>
    <a href="#categories">Categories</a>
    <a href="#products">Trending</a>
    <a href="#deals">Deals</a>
    <a href="#reviews">Reviews</a>
  </div></nav>
</header>

<main class="container">
  <section class="hero">
    <div class="hero-content">
      <span class="eyebrow"><i class="fa-solid fa-sparkles"></i> NEW SEASON PICKS</span>
      <h1>Shop smarter. Live better.</h1>
      <p>Discover hand-picked technology, fashion and everyday essentials at prices you'll love.</p>
      <div class="hero-buttons">
        <button class="btn btn-primary" id="shopNow">Shop products <i class="fa-solid fa-arrow-right"></i></button>
        <a class="btn btn-light" href="#deals">View today's deals</a>
      </div>
    </div>
  </section>

  <section class="section" id="categories">
    <div class="section-head">
      <div><h2>Shop by category</h2><p>Find what you need faster.</p></div>
    </div>
    <div class="categories" id="categoriesGrid"></div>
  </section>

  <section class="section" id="products">
    <div class="section-head">
      <div><h2>Trending products</h2><p>Popular picks customers are loving right now.</p></div>
      <a class="view-all" href="#products">View all <i class="fa-solid fa-arrow-right"></i></a>
    </div>
    <div class="toolbar">
      <div class="result-count" id="resultCount">8 products</div>
      <div class="filters">
        <button class="filter-btn" data-filter="all">All</button>
        <button class="filter-btn" data-filter="under500">Under $500</button>
        <button class="filter-btn" data-filter="deals">On sale</button>
      </div>
    </div>
    <div class="products" id="productsGrid"></div>
  </section>

  <section class="section" id="deals">
    <div class="section-head"><div><h2>Deal of the day</h2><p>A limited-time offer while stock lasts.</p></div></div>
    <div class="deal">
      <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=85" alt="MacBook Air">
      <div class="deal-content">
        <span class="deal-tag">Flash sale · 17% off</span>
        <h2>MacBook Air M2</h2>
        <p>Thin, light and powerful — premium performance for work, study and everyday life.</p>
        <div class="timer">
          <div class="time-box"><strong id="dealDays">0</strong><small>DAYS</small></div>
          <div class="time-box"><strong id="dealHours">00</strong><small>HOURS</small></div>
          <div class="time-box"><strong id="dealMinutes">00</strong><small>MIN</small></div>
          <div class="time-box"><strong id="dealSeconds">00</strong><small>SEC</small></div>
        </div>
        <div style="display:flex;align-items:center;gap:10px;margin-bottom:18px">
          <strong style="font-size:27px">$999</strong><span style="text-decoration:line-through;color:#94a3b8">$1,199</span>
        </div>
        <button class="btn btn-primary" id="buyDeal" style="align-self:flex-start">Add deal to cart <i class="fa-solid fa-bag-shopping"></i></button>
      </div>
    </div>
  </section>

  <div class="trust">
    <div class="trust-card"><i class="fa-solid fa-truck-fast"></i><div><strong>Fast delivery</strong><span>Reliable shipping options</span></div></div>
    <div class="trust-card"><i class="fa-solid fa-shield-halved"></i><div><strong>Secure payments</strong><span>Your payment is protected</span></div></div>
    <div class="trust-card"><i class="fa-solid fa-rotate-left"></i><div><strong>Easy returns</strong><span>Hassle-free return process</span></div></div>
    <div class="trust-card"><i class="fa-solid fa-headset"></i><div><strong>Helpful support</strong><span>We're here when you need us</span></div></div>
  </div>

  <section class="section" id="reviews">
    <div class="section-head"><div><h2>What shoppers say</h2><p>Real feedback from our customers.</p></div></div>
    <div class="testimonials">
      <article class="testimonial"><div class="stars">★★★★★</div><p>“Fast shipping and excellent customer support. The product exceeded my expectations!”</p><div class="customer"><img class="avatar" src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80" alt=""><div><strong>Ava Martin</strong><span>Verified buyer</span></div></div></article>
      <article class="testimonial"><div class="stars">★★★★☆</div><p>“Great selection and the checkout was smooth. Will shop again.”</p><div class="customer"><img class="avatar" src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80" alt=""><div><strong>Michael Lee</strong><span>Frequent buyer</span></div></div></article>
      <article class="testimonial"><div class="stars">★★★★★</div><p>“The site is easy to navigate and finding products is much quicker than before.”</p><div class="customer"><div class="avatar" style="background:#eef3ff;display:grid;place-items:center;color:#2457e6"><i class="fa-solid fa-user"></i></div><div><strong>Jordan Kim</strong><span>Verified buyer</span></div></div></article>
    </div>
  </section>

  <section class="newsletter">
    <h2>Get the best deals first</h2>
    <p>Join our newsletter for new arrivals, special offers and useful updates.</p>
    <form class="news-form" id="newsletterForm">
      <input id="newsletterEmail" type="email" placeholder="Your email address" aria-label="Email address" required>
      <button class="btn btn-primary" type="submit">Subscribe</button>
    </form>
    <div id="newsletterMsg"></div>
  </section>
</main>

<footer>
  <div class="container footer-grid">
    <div><div class="footer-brand">Nexus<span>Shop</span></div><p style="font-size:13px;max-width:330px;color:#94a3b8">A clean, friendly shopping experience for modern everyday products.</p></div>
    <div><h3>Shop</h3><a href="#products">Trending</a><a href="#categories">Categories</a><a href="#deals">Deals</a></div>
    <div><h3>Support</h3><a href="#">Help center</a><a href="#">Shipping & returns</a><a href="#">Contact us</a></div>
    <div><h3>Company</h3><a href="#">About</a><a href="#">Careers</a><a href="#">Privacy</a></div>
  </div>
  <div class="container copyright">© <span id="year"></span> NexusShop. All rights reserved.</div>
</footer>

<div class="overlay" id="overlay"></div>
<aside class="drawer" id="cartDrawer" aria-label="Shopping cart">
  <div class="drawer-head"><h2>Your cart</h2><button class="close" id="closeCart" aria-label="Close cart"><i class="fa-solid fa-xmark"></i></button></div>
  <div class="cart-items" id="cartItems"><div class="cart-empty"><i class="fa-solid fa-bag-shopping"></i><div>Your cart is empty.</div><small>Add a product to get started.</small></div></div>
  <div class="cart-bottom"><div class="total-row"><span>Total</span><span id="cartTotal">$0</span></div><button class="btn btn-primary" style="width:100%" id="checkoutBtn">Checkout</button></div>
</aside>

<script>
const CATEGORIES = [{
                id: 'phones',
                name: 'Smartphones',
                icon: 'fa-mobile-alt'
            },
            {
                id: 'laptops',
                name: 'Laptops',
                icon: 'fa-laptop'
            },
            {
                id: 'clothing',
                name: 'Clothing',
                icon: 'fa-tshirt'
            },
            {
                id: 'gadgets',
                name: 'Gadgets',
                icon: 'fa-headphones'
            },
            {
                id: 'footwear',
                name: 'Footwear',
                icon: 'fa-shoe-prints'
            },
            {
                id: 'accessories',
                name: 'Accessories',
                icon: 'fa-watch'
            }
        ];
const PRODUCTS = [{
                id: 1,
                title: 'iPhone 14 Pro Max',
                price: 1099,
                oldPrice: 1199,
                rating: 5,
                reviews: 128,
                badge: 'New',
                img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80',
                category: 'phones'
            },
            {
                id: 2,
                title: 'MacBook Pro 14"',
                price: 1999,
                rating: 4,
                reviews: 86,
                img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80',
                category: 'laptops'
            },
            {
                id: 3,
                title: 'Apple Watch Series 8',
                price: 349,
                oldPrice: 399,
                rating: 5,
                reviews: 214,
                badge: '-25%',
                img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80',
                category: 'accessories'
            },
            {
                id: 4,
                title: 'Nike Air Max 270',
                price: 150,
                rating: 4,
                reviews: 53,
                img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80',
                category: 'footwear'
            },
            {
                id: 5,
                title: 'Sony A7 IV Camera',
                price: 2499,
                rating: 5,
                reviews: 42,
                img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80',
                category: 'gadgets'
            },
            {
                id: 6,
                title: 'Chanel No. 5',
                price: 120,
                rating: 5,
                reviews: 189,
                img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80',
                category: 'accessories'
            },
            {
                id: 7,
                title: 'Travel Backpack',
                price: 79,
                oldPrice: 99,
                rating: 4,
                reviews: 67,
                img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80',
                category: 'accessories'
            },
            {
                id: 8,
                title: 'Sony WH-1000XM5',
                price: 399,
                rating: 5,
                reviews: 156,
                img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80',
                category: 'gadgets'
            }
        ];

const categoriesGrid = document.getElementById('categoriesGrid');
const productsGrid = document.getElementById('productsGrid');
const cartCountEl = document.getElementById('cartCount');
const resultCount = document.getElementById('resultCount');
const searchInput = document.getElementById('searchInput');
const cartDrawer = document.getElementById('cartDrawer');
const overlay = document.getElementById('overlay');
const cartItems = document.getElementById('cartItems');
const cartTotal = document.getElementById('cartTotal');

let cart = {};

function escapeHtml(text) {
  return String(text).replace(/[&<>"']/g, s => ({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[s]));
}

function renderCategories() {
  categoriesGrid.innerHTML = CATEGORIES.map(cat => `
    <button class="category" data-category="${escapeHtml(cat.name)}">
      <div class="category-icon"><i class="fa-solid ${cat.icon}"></i></div>
      <strong>${escapeHtml(cat.name)}</strong>
      <small>Explore products</small>
    </button>`).join('');
  categoriesGrid.querySelectorAll('.category').forEach(btn => {
    btn.addEventListener('click', () => {
      searchInput.value = btn.dataset.category;
      filterProducts(btn.dataset.category);
      document.getElementById('products').scrollIntoView({behavior:'smooth',block:'start'});
    });
  });
}

function renderProducts(list) {
  resultCount.textContent = `${list.length} product${list.length === 1 ? '' : 's'}`;
  if (!list.length) {
    productsGrid.innerHTML = `<div style="grid-column:1/-1;text-align:center;padding:60px;color:var(--muted)">
      <i class="fa-solid fa-magnifying-glass" style="font-size:34px;margin-bottom:12px"></i>
      <h3 style="color:var(--text);margin:0 0 6px">No products found</h3><p>Try another search or filter.</p></div>`;
    return;
  }
  productsGrid.innerHTML = list.map(p => `
    <article class="product">
      <div class="product-media">
        ${p.badge ? `<span class="badge">${escapeHtml(p.badge)}</span>` : ''}
        <button class="wish" data-wish="${p.id}" aria-label="Add to wishlist"><i class="fa-regular fa-heart"></i></button>
        <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
      </div>
      <div class="product-body">
        <div class="category-label">${escapeHtml(p.category)}</div>
        <h3>${escapeHtml(p.title)}</h3>
        <div class="rating">${'★'.repeat(Math.round(p.rating))}<span>(${p.reviews})</span></div>
        <div class="price-line"><span class="price">$${p.price.toLocaleString()}</span>${p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : ''}</div>
      </div>
      <div class="product-footer">
        <button class="add-btn" data-id="${p.id}"><i class="fa-solid fa-bag-shopping"></i> Add to cart</button>
        <button class="quick-btn" data-quick="${p.id}" title="Quick add"><i class="fa-solid fa-plus"></i></button>
      </div>
    </article>`).join('');

  productsGrid.querySelectorAll('.add-btn,.quick-btn').forEach(btn => btn.addEventListener('click', () => addToCart(Number(btn.dataset.id || btn.dataset.quick))));
  productsGrid.querySelectorAll('.wish').forEach(btn => btn.addEventListener('click', () => btn.classList.toggle('active')));
}

function filterProducts(query) {
  const q = String(query || '').trim().toLowerCase();
  const list = q ? PRODUCTS.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q)) : PRODUCTS;
  renderProducts(list);
}

function addToCart(id) {
  const p = PRODUCTS.find(x => x.id === id);
  if (!p) return;
  cart[id] = (cart[id] || 0) + 1;
  updateCart();
  openCart();
}

function updateCart() {
  const entries = Object.entries(cart).filter(([,qty]) => qty > 0);
  const count = entries.reduce((sum,[,qty]) => sum + qty, 0);
  const total = entries.reduce((sum,[id,qty]) => sum + PRODUCTS.find(p => p.id == id).price * qty, 0);
  cartCountEl.textContent = count;
  cartTotal.textContent = '$' + total.toLocaleString();
  if (!entries.length) {
    cartItems.innerHTML = `<div class="cart-empty"><i class="fa-solid fa-bag-shopping"></i><div>Your cart is empty.</div><small>Add a product to get started.</small></div>`;
    return;
  }
  cartItems.innerHTML = entries.map(([id,qty]) => {
    const p = PRODUCTS.find(x => x.id == id);
    return `<div class="cart-item">
      <img src="${p.img}" alt="${escapeHtml(p.title)}">
      <div style="flex:1"><h4>${escapeHtml(p.title)}</h4><p>$${p.price.toLocaleString()} × ${qty}</p>
      <div style="display:flex;gap:7px;margin-top:8px">
        <button class="filter-btn cart-minus" data-id="${id}">−</button>
        <button class="filter-btn cart-plus" data-id="${id}">+</button>
        <button class="filter-btn cart-remove" data-id="${id}">Remove</button>
      </div></div></div>`;
  }).join('');
  cartItems.querySelectorAll('.cart-minus').forEach(b => b.onclick = () => changeQty(+b.dataset.id,-1));
  cartItems.querySelectorAll('.cart-plus').forEach(b => b.onclick = () => changeQty(+b.dataset.id,1));
  cartItems.querySelectorAll('.cart-remove').forEach(b => b.onclick = () => { delete cart[b.dataset.id]; updateCart(); });
}

function changeQty(id, delta) {
  cart[id] = (cart[id] || 0) + delta;
  if (cart[id] <= 0) delete cart[id];
  updateCart();
}

function openCart() {
  cartDrawer.classList.add('show'); overlay.classList.add('show'); document.body.classList.add('no-scroll');
}
function closeCart() {
  cartDrawer.classList.remove('show'); overlay.classList.remove('show'); document.body.classList.remove('no-scroll');
}

document.getElementById('searchBtn').onclick = () => filterProducts(searchInput.value);
searchInput.addEventListener('keydown', e => { if (e.key === 'Enter') filterProducts(e.target.value); });
document.getElementById('mobileSearchBtn').onclick = () => {
  document.getElementById('searchBox').classList.toggle('mobile-open');
  if (document.getElementById('searchBox').classList.contains('mobile-open')) searchInput.focus();
};
document.getElementById('mobileToggle').onclick = () => {
  document.querySelector('.nav').style.display = document.querySelector('.nav').style.display === 'block' ? '' : 'block';
};
document.getElementById('shopNow').onclick = () => document.getElementById('products').scrollIntoView({behavior:'smooth'});
document.getElementById('cartBtn').onclick = openCart;
document.getElementById('closeCart').onclick = closeCart;
overlay.onclick = closeCart;
document.addEventListener('keydown', e => { if (e.key === 'Escape') closeCart(); });

document.querySelectorAll('.filter-btn[data-filter]').forEach(btn => btn.onclick = () => {
  const f = btn.dataset.filter;
  if (f === 'under500') renderProducts(PRODUCTS.filter(p => p.price < 500));
  else if (f === 'deals') renderProducts(PRODUCTS.filter(p => p.oldPrice));
  else renderProducts(PRODUCTS);
});

document.getElementById('newsletterForm').addEventListener('submit', e => {
  e.preventDefault();
  const email = document.getElementById('newsletterEmail').value.trim();
  const msg = document.getElementById('newsletterMsg');
  if (!email || !email.includes('@')) { msg.textContent = 'Please enter a valid email address.'; msg.style.color = '#ef4444'; return; }
  msg.textContent = 'Thanks! You are subscribed.';
  msg.style.color = '#16a34a';
  e.target.reset();
});

document.getElementById('buyDeal').onclick = () => {
  // The flash-sale item is represented by a lightweight cart entry using the first laptop product.
  const deal = PRODUCTS.find(p => p.title.toLowerCase().includes('macbook')) || PRODUCTS[1];
  addToCart(deal.id);
};
document.getElementById('checkoutBtn').onclick = () => {
  if (Object.keys(cart).length) alert('Checkout is ready for integration with your payment provider.');
  else alert('Your cart is empty.');
};

(function setupTimer() {
  const target = new Date(Date.now() + (24 * 60 + 36) * 60 * 1000);
  function tick() {
    const diff = Math.max(0, target - new Date());
    document.getElementById('dealDays').textContent = Math.floor(diff / 86400000);
    document.getElementById('dealHours').textContent = String(Math.floor(diff % 86400000 / 3600000)).padStart(2,'0');
    document.getElementById('dealMinutes').textContent = String(Math.floor(diff % 3600000 / 60000)).padStart(2,'0');
    document.getElementById('dealSeconds').textContent = String(Math.floor(diff % 60000 / 1000)).padStart(2,'0');
  }
  tick(); setInterval(tick,1000);
})();

renderCategories();
renderProducts(PRODUCTS);
updateCart();
document.getElementById('year').textContent = new Date().getFullYear();
</script>
</body>
</html>
