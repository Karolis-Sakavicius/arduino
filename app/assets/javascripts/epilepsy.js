$(document).ready(function() {
  $(document).on('click', '.epilepsy-start', function() {
    setTimeout(function() {
      $.patch('epilepsy/9', function(response) {
        $('body').style.backgroundColor = 'rgba(' + response.red + ',' + response.green + ',' + response.blue + ', 1)'
      });
    }, 100);
  });
});