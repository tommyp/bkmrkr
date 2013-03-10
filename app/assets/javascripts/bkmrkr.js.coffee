# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery.expr[":"].Contains = (a, i, m) ->
  (a.textContent or a.innerText or "").toUpperCase().indexOf(m[3].toUpperCase()) >= 0
  # The above makes the search non-case sensitive

# searcher = (input, container, item) ->
#     input.change(->
#       filter = $(this).val()
#       console.log($(this).val())
#       if filter
#         container.find(".url:not(:Contains(" + filter + "))").parent(item).slideUp()
#         container.find(".url:Contains(" + filter + ")").parent(item).slideDown()
#       else
#         container.find(item).slideDown()
#       false
#       ).keyup ->
#         # fire the above change event after every letter
#         $(this).change()

# $(document).ready -> 

#   searcher $('#search'), $('.bookmarks'), $('.bookmark')