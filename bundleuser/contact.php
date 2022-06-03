<?php include('partials-front/menu.php'); ?>

<link rel="stylesheet" href="contact/contact/style.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>

    <div class="contact-section">

        <h1>Contact Us</h1>
        <div class="border"></div>
        <form class="contact-form" action="https://formspree.io/f/xeqnzlaj" method="post">
            <input type="text" class="contact-form-text" placeholder="Your name">
            <input type="email" class="contact-form-text" placeholder="Your email">
            <input type="text" class="contact-form-text" placeholder="Your phone">
            <textarea class="contact-form-text" placeholder="Your message"></textarea>
            <input type="submit" class="contact-form-btn" value="Send">
        </form>
    </div>


</body>

<?php include('partials-front/footer.php'); ?>