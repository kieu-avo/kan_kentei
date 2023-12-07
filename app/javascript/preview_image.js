document.addEventListener('turbo:load', function() {
  function readURL(input) {
    if (input.files && input.files[0]) {
      var reader = new FileReader();
      reader.onload = function (event) {
        $('#image').attr('src', event.target.result);
      }
      reader.readAsDataURL(input.files[0]);
    }
  }

  $("#user_image").change(function(){
    readURL(this);
  });
});
