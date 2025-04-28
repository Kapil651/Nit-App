# Pin npm packages by running ./bin/importmap
pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"

# Pin local JavaScript libraries (if they are in app/javascript/lib)
pin "jquery", to: "https://code.jquery.com/jquery-3.6.0.min.js"
pin "bootstrap", to: "https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"
pin "wowjs", to: "https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.min.js"
pin "easing", to: "https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"
pin "waypoints", to: "https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"
pin "owl.carousel", to: "https://cdn.jsdelivr.net/npm/owl.carousel@2.3.4/dist/owl.carousel.min.js"

# Pin your controllers and custom files
pin_all_from "app/javascript/controllers", under: "controllers"
pin "wow", to: "wow/wow.min.js"
pin "easing", to: "easing/easing.min.js"
pin "waypoints", to: "waypoints/waypoints.min.js"
pin "owlcarousel", to: "owlcarousel/owl.carousel.min.js"
