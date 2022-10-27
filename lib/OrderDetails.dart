import 'Orders.dart';
class OrderDetails extends Orders{

  int ? productId;
  String ? productName;
  int ? quantity;
  double ? unitCost;
  double ? subtotal;
  OrderDetails({
    super.orderID,
    this.productId,
    this.productName,
    this.quantity,
    this.unitCost,
    this.subtotal
});

  calcPrice()=> (unitCost!*quantity!)+subtotal!;


}