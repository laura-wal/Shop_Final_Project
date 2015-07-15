$(document).ready(function(){
    $.ajax({
    url: 'http://localhost:3000/',
    dataType: 'json'
  }).done(function(response) {
    console.log(response);
    // debugger;
    var FJS = FilterJS(response, '#final-product-search', {
      template: '.indivi_product',
      search: {ele: '.form-control', fields: ['tags.name']}
    });
  })


});