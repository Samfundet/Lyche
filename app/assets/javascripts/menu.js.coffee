jQuery ->
  $('.dishes').sortable
    axis: 'y'
    # containment: 'parent'
    cursor: 'crosshair'
    connectWith: '.dishes'
    update: (event, ui) ->
      el = ui.item
      $.post el.data('update_url'), { _method: 'PUT', dish: { position: el.index() + 1 } }, (response) ->
        console.log response
