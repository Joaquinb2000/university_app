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
