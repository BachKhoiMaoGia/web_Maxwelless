// Max Wellness Website Scripts
document.addEventListener('DOMContentLoaded', function() {
    // Initialize AOS (Animation on Scroll)
    AOS.init({
        duration: 800,
        easing: 'ease',
        once: true,
        offset: 100
    });
    
    // Random Hero Banner
    const heroBanner = document.getElementById('hero-banner');
    if (heroBanner) {
        const bannerImages = [
            '/assets/images/banner hero/fitness-center-management-web-slider-1-2400x1200.jpg',
            '/assets/images/banner hero/fitness-center-management-web-slider-2-2400x1200.jpg',
            '/assets/images/banner hero/fitness-center-management-web-slider-3-2400x1200.jpg',
            '/assets/images/banner hero/fitness-center-management-web-slider-4-2400x1200.jpg'
        ];
        
        // Set initial random background
        const randomIndex = Math.floor(Math.random() * bannerImages.length);
        heroBanner.style.backgroundImage = `url('${bannerImages[randomIndex]}')`;
        
        // If we want to change the background periodically
        let currentIndex = randomIndex;
        setInterval(() => {
            currentIndex = (currentIndex + 1) % bannerImages.length;
            heroBanner.style.backgroundImage = 'none'; // Reset for smoother transition
            setTimeout(() => {
                heroBanner.style.backgroundImage = `url('${bannerImages[currentIndex]}')`;
                heroBanner.style.transition = 'background-image 1s ease-in-out';
            }, 100);
        }, 5000); // Change every 5 seconds
    }
    
    // Navbar scroll behavior
    const header = document.querySelector('.header');
    if (header) {
        window.addEventListener('scroll', function() {
            if (window.scrollY > 50) {
                header.classList.add('navbar-scrolled');
            } else {
                header.classList.remove('navbar-scrolled');
            }
        });
    }
    
    // Enable Bootstrap tooltips
    var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'));
    var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
        return new bootstrap.Tooltip(tooltipTriggerEl);
    });
    
    // Enable Bootstrap popovers
    var popoverTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="popover"]'));
    var popoverList = popoverTriggerList.map(function (popoverTriggerEl) {
        return new bootstrap.Popover(popoverTriggerEl);
    });
    
    // Handle contact form submission
    const contactForm = document.getElementById('contactForm');
    if (contactForm) {
        contactForm.addEventListener('submit', function(e) {
            e.preventDefault();
            // Here you would normally send the form data to your server
            // For now, we'll just show a success message
            
            const formData = new FormData(contactForm);
            let formValues = {};
            
            for (let [key, value] of formData.entries()) {
                formValues[key] = value;
            }
            
            console.log('Form submitted:', formValues);
            
            // Show success message
            const successMessage = document.createElement('div');
            successMessage.className = 'alert alert-success mt-3';
            successMessage.textContent = 'Thông tin đã được gửi thành công. Chúng tôi sẽ liên hệ lại với bạn sớm nhất!';
            
            contactForm.reset();
            contactForm.parentNode.insertBefore(successMessage, contactForm.nextSibling);
            
            // Remove success message after 5 seconds
            setTimeout(() => {
                successMessage.remove();
            }, 5000);
        });
    }
    
    // Dynamic year for copyright
    const yearSpan = document.querySelector('.current-year');
    if (yearSpan) {
        yearSpan.textContent = new Date().getFullYear();
    }
});

// Smooth scroll for anchor links
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function(e) {
        e.preventDefault();
        
        const target = document.querySelector(this.getAttribute('href'));
        if (target) {
            window.scrollTo({
                top: target.offsetTop - 100,
                behavior: 'smooth'
            });
        }
    });
});
