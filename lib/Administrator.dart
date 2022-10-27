import'User.dart';
import 'dart:io';
import 'ieee_e_commerce_sys.dart';
class Administrator extends UserData{
  String ? adminName;
  String ? email;
  Administrator({
    super.userID,
    super.password,
    super.loginStatus,
    this.adminName,
    this.email
});

  updateCatalog() {

  }

  adminRegister(){
    print('\t\t\t--Admin Register');
    stdout.write("user Id : ");         String userID=stdin.readLineSync()!;
    stdout.write("\nPassword : ");      String password=stdin.readLineSync()!;
    stdout.write("\n loginStatus : ");  String loginStatus=stdin.readLineSync()!;
    stdout.write("\n adminName : ");    String adminName=stdin.readLineSync()!;
    stdout.write("\n email : ");        String email=stdin.readLineSync()!;
    users.add( Administrator(
      userID:userID ,
      password:password ,
      loginStatus:loginStatus ,
      adminName:adminName ,
      email: email,
    )
    );
    print("user ${users.length+1} \n User Name=$userID \npass=$password\n loginState is $loginStatus \n \t\t New Admin Has been Added to system");

  }


}