// import'Customer.dart';
// import 'Orders.dart';
class ShoppingCartItem {
  int ? cartId;
  int ? productId;
  int ? quantity;
  int ? dateAdded;

  ShoppingCartItem({
    this.cartId,
    this.productId,
    this.quantity,
    this.dateAdded
});



  updateQuantity(newQantity){
    quantity=newQantity;
    print('Quantity  = $quantity');

  }

  viewCartDetails(){
    print('cartId :  $cartId     productId : $productId       quantity : $quantity        dateAdded : $dateAdded');
  }



  checkOut(){}

}