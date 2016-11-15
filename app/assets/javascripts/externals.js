$(document).on('turbolinks:load', function () {
  $('#searchform').on('ajax:success', function (e, data, status) {
    $('ul').text('')
    data.result.forEach(function (movie) {
      console.log(movie.fields.item_name)
      var newList = $('<li>')
      newList.text(movie.fields.item_name)
      $('ul').append(newList)
    })
  })
})
