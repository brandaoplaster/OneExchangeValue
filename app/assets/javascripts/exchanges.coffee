$(document).ready ->

#  when pressing any key it waits 0.8ms to make the submit
  $('#amount').bind 'keypress', ->
    setTimeout (->
      $('form').submit()
    ), 800

  $('form').submit ->
    if $('form').attr('action') == '/convert'
      $.ajax '/convert',
        type: 'GET'
        dataType: 'json'
        data: {
          source_currency: $("#source_currency").val(),
          target_currency: $("#target_currency").val(),
          amount: $("#amount").val()
        }
        error: (jqXHR, textStatus, errorThrown) ->
          alert textStatus
        success: (data, text, jqXHR) ->
          $('#result').val(data.value)
      return false