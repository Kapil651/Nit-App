// Import Turbo for Turbo compatibility
import { Turbo } from "@hotwired/turbo-rails"

// Import necessary libraries and assets
import "jquery" // jQuery
import "bootstrap" // Bootstrap JavaScript

// Import local JS libraries
import "./wow/wow.min.js" // WOW.js
import "./easing/easing.min.js" // Easing animation library
import "./waypoints/waypoints.min.js" // Waypoints library for scroll animations
import "./owlcarousel/owl.carousel.min.js" // Owl carousel

// If you have controllers in app/javascript/controllers, import them
import "controllers" 

// Add custom JS if needed
import "./main" // Custom main.js file


import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
     



  document.addEventListener("DOMContentLoaded", function () {
  $('.team-carousel').owlCarousel({
    loop: true,
    margin: 30,
    nav: true,
    autoplay: true,
    autoplayTimeout: 3000,
    dots: false,
    responsive: {
      0: { items: 1 },
      576: { items: 2 },
      992: { items: 3 },
      1200: { items: 4 }
    }
  });
});
