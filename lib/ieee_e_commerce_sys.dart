import 'Administrator.dart';
import 'User.dart';
import 'dart:io';
// import 'Product.dart';
import'Customer.dart';
/// Lists
List<UserData>users=[
  Customer(),
  Administrator(),
];






main(){




    print('\t\t--User_Register_Screen');
   print('\t1.Admin');
   print('\t2.Customer');
   stdout.write("You are a ( 1 or 2 ): ");
   String registerOption=stdin.readLineSync()!;
   if(registerOption=="1"){

     adminRegister();
   }else if(registerOption=="2"){
     stdout.write("user Id : ");            String userID = stdin.readLineSync()!;
     stdout.write("\nPassword : ");         String password = stdin.readLineSync()!;
     stdout.write("\n loginStatus : ");     String loginStatus = stdin.readLineSync()!;
     stdout.write("\n customerName : ");    String customerName = stdin.readLineSync()!;
     stdout.write("\n email : ");           String email = stdin.readLineSync()!;
     stdout.write("\n address : ");         String address = stdin.readLineSync()!;
     stdout.write("\n creditCardInfo : ");  String creditCardInfo = stdin.readLineSync()!;
     stdout.write("\n shippingInfo : ");    String shippingInfo = stdin.readLineSync()!;
      customerRegister(userID,password,
          loginStatus,
          customerName,
          email,
          address,
          creditCardInfo,
          shippingInfo);

   }else{
     print(' your Choice is wrong pls try again with right one !!! ');
  }



}

// Classes:
//  - product
//  - category


//Search about switch element in dart
customerRegister(String?  userID,String? password, String? loginStatus,String? customerName,String ? email,String ? address,String ? creditCardInfo,String ? shippingInfo,
) {
  print('\t\t\t--Register');
  // stdout.write("user Id : ");    String userID = stdin.readLineSync()!;
  // stdout.write("\nPassword : ");    String password = stdin.readLineSync()!;
  // stdout.write("\n loginStatus : ");    String loginStatus = stdin.readLineSync()!;
  // stdout.write("\n customerName : ");   String customerName = stdin.readLineSync()!;
  // stdout.write("\n email : ");
  // String email = stdin.readLineSync()!;
  // stdout.write("\n address : ");
  // String address = stdin.readLineSync()!;
  // stdout.write("\n creditCardInfo : ");
  // String creditCardInfo = stdin.readLineSync()!;
  // stdout.write("\n shippingInfo : ");
  // String shippingInfo = stdin.readLineSync()!;
  print("user ${users.length + 1} \n User Name=$userID \npass=$password\n loginState is $loginStatus \n \t\t New Customer Has been Added to system");
Customer customer =Customer(  userID: userID,
  password: password,
  loginStatus: loginStatus,
  customerName: customerName,
  email: email,
  address: address,
  creditCardInfo: creditCardInfo,
  shippingInfo: shippingInfo,);
  users.add(customer);
}
adminRegister(){
  print('\t\t\t--Admin Register');
  stdout.write("user Id : ");         String userID=stdin.readLineSync()!;
  stdout.write("\nPassword : ");      String password=stdin.readLineSync()!;
  stdout.write("\n loginStatus : ");  String loginStatus=stdin.readLineSync()!;
  stdout.write("\n adminName : ");    String adminName=stdin.readLineSync()!;
  stdout.write("\n email : ");        String email=stdin.readLineSync()!;
  print("  \n User Name=$userID \npass=$password\n loginState is $loginStatus \n \t\t New Admin Has been Added to system");
  Administrator admin=  Administrator(
    userID:userID ,
    password:password ,
    loginStatus:loginStatus ,
    adminName:adminName ,
    email: email,
  );
  users.add( admin

  );


}
