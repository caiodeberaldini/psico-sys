//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require materialize-sprockets
//= require_tree .

document.addEventListener('turbolinks:load', function() {
    elem = document.querySelector('.sidenav');
    instance = new M.Sidenav(elem, {});
});

document.addEventListener('turbolinks:before-visit', function() {
    elem = document.querySelector('.sidenav');
    instance = M.Sidenav.getInstance(elem);
    if (instance){
      instance.destroy();
    }
});