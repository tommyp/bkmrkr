// Searcher use:
// 
// Call plugin on the input element and with the settings set as data attributes eg:
// 
// <input data-container=".bookmarks" data-item=".bookmark" data-text=".url" id="search" placeholder="Search">
// 
// Container = your element that contains the things you want to filter
// Item = the elements you want to show/hide
// Text = the element inside your Item that you want to search

(function($) {
  $.fn.searcher = function() {

    jQuery.expr[":"].Contains = function(a, i, m) {
      return (a.textContent || a.innerText || "").toUpperCase().indexOf(m[3].toUpperCase()) >= 0;
    };

    this.each(function() {
      var $this = $(this);
      $this.change(function() {
        var filter = $this.val();
        var container = $($this.attr('data-container'));
        var item = $this.attr('data-item');
        var text = $($this.attr('data-text'));
        if (filter) {
          container.find("." + text.attr('class') + ":not(:Contains(" + filter + "))").parent(item).slideUp();
          container.find("." + text.attr('class') + ":Contains(" + filter + ")").parent(item).slideDown();
        } else {
          container.find(item).slideDown();
        }
        return false;
      }).keyup(function() {
        $this.change();
      });
    });
  };
})(jQuery);
