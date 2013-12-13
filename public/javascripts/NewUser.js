$('button').click(function() {
   $('#new_user').text('New User: ' + $('input[name="Username"]').val());
   return false;
});