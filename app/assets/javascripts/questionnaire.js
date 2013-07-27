$(function () {
  $('body').on('click', '.sync', function() {
    var next_item_id = $(this).attr('next_id')
    $('#sondaj').hide()
    $('#question').show()
    $('#question').html('<img src="images/ajax-loader.gif">')
    $.ajax({
      url: "/questionnaire/next_item",
      data: { next_id: next_item_id },
      dataType: 'text',
    })
    .done(function(data) {
      console.log(data)
      $('#question').html(data)
    })
    .fail(function(error) { console.log(error); })
  })
})
