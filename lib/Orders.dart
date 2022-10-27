import 'Customer.dart';

class Orders extends Customer {
  int? orderID;
  String? dateCreated;
  String? dateShipped;
  String? customerId;
  String? status;
  String? shippingId;

  Orders(
      {
        this.orderID,
        this.dateCreated,
        this.dateShipped,
        super.customerName,
        this.customerId,
        this.status,
        this.shippingId});

  placeOrder() {
      orders.add(Orders(
      customerId: super.userID,
      customerName: customerName,
      orderID: orderID,
      dateCreated: dateCreated,
      dateShipped: dateShipped,
      shippingId: shippingId,
      status: status,
    ));
  }
}
