// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import { Turbo } from "@hotwired/turbo-rails"
import "controllers"
import "jquery"
import "materialize"
Turbo.session.drive = false


$(document).on("turbo:load", ()=>{
    $(".dropdown-trigger").dropdown();
    $('.sidenav').sidenav();

    let flash = $('#flash')
    if (flash.length > 0 ){
        M.toast({
                html: flash[0].textContent,
                classes: flash[0].className.split("card-panel ")[1]
            })
    }

})

