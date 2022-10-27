import'Orders.dart';
import 'dart:io';
class ShippingInfo extends Orders{
  String ? shippingType;
  int ? shippingCost;
  int ? shippingRegionId;
  ShippingInfo({
    super.shippingId,
    this.shippingType,
    this.shippingCost,
    this.shippingRegionId
});

  updateShippingInfo(){
    stdout.write("shippingId : ");   super.shippingId=stdin.readLineSync()!;
    stdout.write("\shippingType : ");  shippingType=stdin.readLineSync()!;
    stdout.write("\n shippingCost : ");  shippingCost=int.parse(stdin.readLineSync()!);
    stdout.write("\n shippingRegionId : "); shippingRegionId =int.parse(stdin.readLineSync()!);

  }
}