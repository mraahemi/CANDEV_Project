<!doctype html>
<html>

</head>
<body>
<head>
  <title>Rating Stars</title>
  <style type="text/css">
    .rating-stars a {
      display: inline-block;
      width: 64px;
      height: 64px;
      background-repeat: no-repeat;
      background-image: url("data:image/svg+xml;base64,PHN2ZyB2ZXJzaW9uPSIxLjEiIGlkPSJMYXllcl8xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHg9IjBweCIgeT0iMHB4IgogICB3aWR0aD0iNjRweCIgaGVpZ2h0PSI2NHB4IiB2aWV3Qm94PSIwIDAgNjQgNjQiIGVuYWJsZS1iYWNrZ3JvdW5kPSJuZXcgMCAwIDY0IDY0IiB4bWw6c3BhY2U9InByZXNlcnZlIj48cG9seWdvbiBmaWxsPSJub25lIiBzdHJva2U9IiNBN0E5QUMiIHN0cm9rZS13aWR0aD0iNCIgc3Ryb2tlLW1pdGVybGltaXQ9IjEwIiBwb2ludHM9IjMxLjg2Niw2LjYxOCA0MC4wOSwyMy4yODEgNTguNDc5LDI1Ljk1MyA0NS4xNzIsMzguOTIzIDQ4LjMxMyw1Ny4yMzkgMzEuODY2LDQ4LjU5MiAxNS40MTgsNTcuMjM5IDE4LjU2LDM4LjkyMyA1LjI1MywyNS45NTMgMjMuNjQyLDIzLjI4MSAiLz48L3N2Zz4=");
      outline: none;
    }
    .rating-stars a.hover {
      background-image: url("data:image/svg+xml;base64,PHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeD0iMHB4IiB5PSIwcHgiCiAgIHdpZHRoPSI2NHB4IiBoZWlnaHQ9IjY0cHgiIHZpZXdCb3g9IjAgMCA2NCA2NCIgZW5hYmxlLWJhY2tncm91bmQ9Im5ldyAwIDAgNjQgNjQiIHhtbDpzcGFjZT0icHJlc2VydmUiPjxwb2x5Z29uIGZpbGw9IiM1MUFFQ0QiIHN0cm9rZT0iIzUxQUVDRCIgc3Ryb2tlLXdpZHRoPSI0IiBzdHJva2UtbWl0ZXJsaW1pdD0iMTAiIHBvaW50cz0iMzEuODY2LDYuNjE4IDQwLjA5LDIzLjI4MSA1OC40NzksMjUuOTUzIDQ1LjE3MiwzOC45MjMgNDguMzEzLDU3LjIzOSAzMS44NjYsNDguNTkyIDE1LjQxOCw1Ny4yMzkgMTguNTYsMzguOTIzIDUuMjUzLDI1Ljk1MyAyMy42NDIsMjMuMjgxICIvPjwvc3ZnPgo=");
    }
    .rating-stars a.selected {
      background-image: url("data:image/svg+xml;base64,PHN2ZyB2ZXJzaW9uPSIxLjEiIGlkPSJMYXllcl8xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHg9IjBweCIgeT0iMHB4IgogICB3aWR0aD0iNjRweCIgaGVpZ2h0PSI2NHB4IiB2aWV3Qm94PSIwIDAgNjQgNjQiIGVuYWJsZS1iYWNrZ3JvdW5kPSJuZXcgMCAwIDY0IDY0IiB4bWw6c3BhY2U9InByZXNlcnZlIj48cG9seWdvbiBmaWxsPSIjRkVDMjBGIiBzdHJva2U9IiNGRUMyMEYiIHN0cm9rZS13aWR0aD0iNCIgc3Ryb2tlLW1pdGVybGltaXQ9IjEwIiBwb2ludHM9IjMxLjg2Niw2LjYxOCA0MC4wOSwyMy4yODEgNTguNDc5LDI1Ljk1MyA0NS4xNzIsMzguOTIzIDQ4LjMxMyw1Ny4yMzkgMzEuODY2LDQ4LjU5MiAxNS40MTgsNTcuMjM5IDE4LjU2LDM4LjkyMyA1LjI1MywyNS45NTMgMjMuNjQyLDIzLjI4MSAiLz48L3N2Zz4=");
    }
</style>

  <div class="rating-stars">
    <a href="" data-rating="1"></a><a href="" data-rating="2"></a><a href="" data-rating="3"></a><a href="" data-rating="4"></a><a href="" data-rating="5"></a>
  </div>

<script>
function ready(fn) {
  if(document.readyState != 'loading') {
    fn();
  } else {
    document.addEventListener('DOMContentLoaded', fn);
  }
}
var selectedRating = 0;
ready(function(){
  function addClass(el, className) {
    if(typeof el.length == "number") {
      Array.prototype.forEach.call(el, function(e,i){ addClass(e, className) });
      return;
    }
    if (el.classList)
      el.classList.add(className);
    else
      el.className += ' ' + className;    
  }
  function removeClass(el, className) {
    if(typeof el.length == "number") {
      Array.prototype.forEach.call(el, function(e,i){ removeClass(e, className) });
      return;
    }
    if (el.classList)
      el.classList.remove(className);
    else if(el.className)
      el.className = el.className.replace(new RegExp('(^|\\b)' + className.split(' ').join('|') + '(\\b|$)', 'gi'), ' ');
  }
  var stars = document.querySelectorAll(".rating-stars a");
  Array.prototype.forEach.call(stars, function(el, i){
    el.addEventListener("mouseover", function(evt){
      removeClass(stars, "selected");
      // For each star up to the highlighted one, add "hover"
      var to = parseInt(evt.target.getAttribute("data-rating"));
      Array.prototype.forEach.call(stars, function(star, i) {
        if(parseInt(star.getAttribute("data-rating")) <= to) {
          addClass(star, "hover");
        }
      });
    });
    el.addEventListener("mouseout", function(evt){
      removeClass(evt.target, "hover");
    });
    el.addEventListener("click", function(evt){
      selectedRating = parseInt(evt.target.getAttribute("data-rating"));
      removeClass(stars, "hover");
      Array.prototype.forEach.call(stars, function(star, i) {
        if(parseInt(star.getAttribute("data-rating")) <= selectedRating) {
          addClass(star, "selected");
        }
      });      
      evt.preventDefault();
    });
  });
  document.querySelector(".rating-stars").addEventListener("mouseout", function(evt){
    // When the cursor leaves the whole rating star area, remove the "hover" class and apply 
    // the "selected" class to the number of stars selected.
    removeClass(stars, "hover");
    if(selectedRating) {
      Array.prototype.forEach.call(stars, function(star, i) {
        if(parseInt(star.getAttribute("data-rating")) <= selectedRating) {
          addClass(star, "selected");
        }
      });      
    }
  });
  
});
</script>
</body>
</html>
