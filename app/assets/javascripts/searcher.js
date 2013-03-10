// Searcher use:
// 
// Pass jQuery objects to the settings
// 
// $('#search').searcher({
//   'container' : $('ul'), 
//   'item'      : $('li'),
//   'text'      : $('a')
// });
// Container = your element that contains the things you want to filter
// Item = the elements you want to show/hide
// Text = the element inside your Item that you want to search

(function($) {
  $.fn.searcher = function(options) {
    var settings = $.extend( {
      'container'        : null,
      'item' : null,
      'text' : null
    }, options);

    this.each(function() {
      var $this = $(this);
      $this.change(function() {
        var filter = $this.val();
        var container = settings['container'];
        var item = settings['item'];
        var text = settings['text'];
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
