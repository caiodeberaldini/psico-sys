//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require materialize-sprockets
//= require_tree .

document.addEventListener('DOMContentLoaded', function() {
    var elems = document.querySelectorAll('.fixed-action-btn');
    var instances = M.FloatingActionButton.init(elems, {
      direction: 'left',
      hoverEnabled: true
    });
  });


  document.addEventListener('DOMContentLoaded', function() {
    var elems = document.querySelectorAll('.dropdown-trigger');
    var instances = M.Dropdown.init(elems);
  });



  document.addEventListener('DOMContentLoaded', function() {
    var elems = document.querySelectorAll('.sidenav');
    var instances = M.Sidenav.init(elems);
  });
  
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
