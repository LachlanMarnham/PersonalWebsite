/* Toggle between adding and removing the "responsive" class to topnav when the user clicks on the icon */
function myFunction(nav_class_default) {
  var x = document.getElementById("myTopNav");
  if (x.className === nav_class_default) {
    x.className += " responsive";
  } else {
    x.className = nav_class_default;
  }
}