alert("hello")

jQuery ($) ->
  $(".handle").closest("tbody").activeAdminSortable();
  
$.fn.activeAdminSortable = ->
  this.disableSelection
  this.sortable
    axis: 'y'
    cursor: 'move'
    update: (event, ui) ->
      $.ajax
        url: ui.item.find("span").data("sortUrl")
        type: 'post'
        data:
          position: ui.item.index() + 1
        dataType: 'script'
  return