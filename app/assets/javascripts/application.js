// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


    function slider(x) {
      var page = document.getElementById('slider-page');
      for (var i = 1; i <5; i++) {
        var menu = document.getElementById('slider-menu-'+i)
        if (x == i) {
          page.style.background='url(img/slider/slider-'+i+'.jpg) no-repeat left'
          menu.style.background='url(img/slider/pointer.png) no-repeat left'
          menu.style.color='#9a9898'
        }else{
          menu.style.background=''
          menu.style.color='inherit'
        }
      }
    };

    function menu(x) {
      for (var i = 1; i <9; i++) {
        if (x == i) {
          $('#menu-'+i).toggle(400);

        }else{
          $('#menu-'+i).hide(400);
        }
      }
    };
