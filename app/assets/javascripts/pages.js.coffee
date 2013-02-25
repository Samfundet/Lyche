
jQuery ->
  $('*[data-href]').click (e) ->
    e.stopPropagation()
    
    window.location = $(this).data('href')
