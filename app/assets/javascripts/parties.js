$(document).ready(function () {
  $('.but').click(function(){
    $.ajax({
      type: 'PUT',
      beforeSend: function(xhr) {xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))},
    
      url: "/accept_party",
      dataType : 'html',
      success: function(data) {
        console.log('Success');
      },
      error: function(){
        console.log('Error');
      }
    });
  });
});