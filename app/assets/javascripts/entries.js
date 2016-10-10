$(document).ready(function() {
  $('#current-goal-weight').on('click', '#edit-goal-weight-button-button', function() {
    $('#current-goal-weight').addClass('hidden');
    $('#edit-goal-weight-form').removeClass('hidden');
  });
})
