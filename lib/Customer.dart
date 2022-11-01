import 'ShoppingCart.dart';
// import 'ieee_e_commerce_sys.dart';
import 'User.dart';
// import 'dart:io';
import 'Orders.dart';

class Customer extends UserData {
  String? customerName;
  String? address;
  String? email;
  String? creditCardInfo;
  String? shippingInfo;

  List<Orders> orders = [
    Orders(
      customerId: UserData().userID,
      customerName: Customer().customerName,
    ),
  ];

  List<ShoppingCartItem> shoppingCartItems = [

  ];
  addCartItem(productId,quantity){
      shoppingCartItems.add(ShoppingCartItem(
      quantity: quantity,
      productId: productId,
      cartId: 1,
      dateAdded: DateTime.now().millisecondsSinceEpoch,
    ));
  }

  Customer({
    super.userID,
    super.password,
    super.loginStatus,
    this.customerName,
    this.address,
    this.email,
    this.creditCardInfo,
    this.shippingInfo,
  });

 //  customerRegister() {
 //    print('\t\t\t--Register');
 //    stdout.write("user Id : ");    String userID = stdin.readLineSync()!;
 //    stdout.write("\nPassword : ");    String password = stdin.readLineSync()!;
 //    stdout.write("\n loginStatus : ");    String loginStatus = stdin.readLineSync()!;
 //    stdout.write("\n customerName : ");   String customerName = stdin.readLineSync()!;
 //    stdout.write("\n email : ");
 //    String email = stdin.readLineSync()!;
 //    stdout.write("\n address : ");
 //    String address = stdin.readLineSync()!;
 //    stdout.write("\n creditCardInfo : ");
 //    String creditCardInfo = stdin.readLineSync()!;
 //    stdout.write("\n shippingInfo : ");
 //    String shippingInfo = stdin.readLineSync()!;
 //
 // users.add(
 //        Customer(
 //      userID: userID,
 //      password: password,
 //      loginStatus: loginStatus,
 //      customerName: customerName,
 //      email: email,
 //      address: address,
 //      creditCardInfo: creditCardInfo,
 //      shippingInfo: shippingInfo,
 //    ));
 //    print("user ${users.length + 1} \n User Name=$userID \npass=$password\n loginState is $loginStatus \n \t\t New Customer Has been Added to system");
 //  }

  login() {}
  updateProfile() {  }



}
