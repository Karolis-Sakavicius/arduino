$(document).ready(function() {
  $('.panel-btn').colorpicker().on('hidePicker', function(e) {
    var that = this;
    $.patch('leds/' + $(this).attr('data-id'), { 'red': e.color.toRGB().r, 'green': e.color.toRGB().g, 'blue': e.color.toRGB().b }, function() {
      that.style.backgroundColor = e.color.toString('rgba');
    });
  });

  $(document).on('click', '.reset-btn', function() {
    $.delete('leds/' + $(this).attr('data-size'), function() {
      console.log('OK');
    });
  });
});