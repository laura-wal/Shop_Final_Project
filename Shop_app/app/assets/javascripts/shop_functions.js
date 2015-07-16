$(document).ready(function() {
  console.log('shopFunctionJs run');
  // Event listener for 'add to cart' button
  $('.addToCart').on('click', function(event) {
    event.preventDefault();
    var $quantity = $(this).closest('form').find('select').val(); // FIX THIS. REFACTOR HTML
    var $productID = $(this).closest('.product_right_panel').data('productid');

    orderProduct.createOrderProduct($quantity, $productID);
  });

  // Event listener for 'Remove' item from Cart
  $('.removeFromCart').on('click', function(event) {
    event.preventDefault();
    //get the productID of individual product from data-attribute
    var $productID = $(this).closest("tr").data().productid;

    orderProduct.deleteOrderProduct($productID);
  });


  var orderProduct = {
    // function to add item into cart via AJAX
    createOrderProduct: function(quantity, productID) {
      $.ajax({
        url: '/order_products',
        type: 'POST',
        dataType: 'json',
        data: {
          order_product: {
            product_id: productID,
            quantity: quantity
          }
        }

      }).done(function(data) {
        console.log('added');
        $('#myModal' + productID).modal('hide');
        $('.flash_msg').text(data.status).toggleClass('wobble-vertical');

      }).error(function() {
        console.log('add item failed');
      });
    },

    // function to remove item from cart via AJAX
    deleteOrderProduct: function(productID) {
      $.ajax({
        url: '/order_products/' + productID,
        type: 'DELETE',
        dataType: 'json',
        data: {
          order_product: {
            product_id: productID
          }
        }

      }).done(function(data) {
        $('body').find("[data-productID='" + productID + "']").fadeOut();
        $('.flash_msg').text(data.status).toggleClass('wobble-vertical');
        //redraw the total price on screen so that it will update instantly whenever item removed from cart
        $('.totalPrice').html('<b>$' + data.updatedPrice + '0 GBP</b>');

      }).error(function() {
        console.log('remove item failed');
      });
    }
  } // End of the object


  // trigger the 'see more' button when user click on the image
  $('.site_container').on('click', '.addbasket', function() {
    $(this).closest('.indivi_product').removeClass('pile-me');
    $(this).closest('.indivi_product').unbind('click');
    $(this).closest('.indivi_product').find('.btn-primary').trigger('click');
  });
  
}); // end of document.ready  