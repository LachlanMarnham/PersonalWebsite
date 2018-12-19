/* Toggle between adding and removing the "responsive" class to topnav when the user clicks on the icon */
function myFunction(nav_id, nav_class_default, link_container_class_open, link_container_class_closed) {
  var nav_bar = document.getElementById(nav_id);
  var link_containers = document.getElementsByClassName('link-container');

  if (nav_bar.className === nav_class_default) {
    nav_bar.className += " responsive";
    for (var i=0; i<link_containers.length; i++) {
      link_containers[i].className = link_container_class_open;
    }
  } else {
    nav_bar.className = nav_class_default;
    for (var j=0; j<link_containers.length; j++) {
      link_containers[j].className = link_container_class_closed;
    }
  }
}

function show_nav_items (link_container_default_class) {
  if (window.innerWidth > 991) {
    var link_containers = document.getElementsByClassName('link-container');
    for (var i=0; i<link_containers.length; i++) {
      link_containers[i].className = link_container_default_class;
    }
  }
}