$(document).ready(function () {
  $('.but').click(function(){
  var party_id = $(this).prev().val();
    $.ajax({
      type: 'PUT',
      beforeSend: function(xhr) {xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))},
      data:{id:  party_id},
      url: "/accept_party",
      dataType : 'script',
      success: function(data) {
      },
      error: function(){
        console.log('Error');
      }
    });
  });
});