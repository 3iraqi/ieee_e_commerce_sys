import 'dart:io';

import 'Product.dart';

class Category {
  String? categoryName;
  String? categoryId;
  String? color;
  String? brand;
  List<Product> products = [
    Product(
        productId: 001,
        productName: "Product_one",
        description: "this is a description of product_one",
        availableQuantity: 20,
        productPrice: 30.5,
        supplierName: "Mohamed"
    ),
  ];
  addProduct() {
    stdout.write("Product ID : ");
    int productId = int.parse(stdin.readLineSync()!);
    stdout.write("Product Name : ");
    String productName = stdin.readLineSync()!;
    stdout.write("Product Description : ");
    String description = stdin.readLineSync()!;
    stdout.write("Product Price : ");
    double productPrice = double.parse(stdin.readLineSync()!);
    stdout.write("Product Supplier Name : ");
    String supplierName = stdin.readLineSync()!;
    stdout.write("Product Available Quantity : ");
    int availableQuantity = int.parse(stdin.readLineSync()!);
    products.add(
        Product(
            productId: productId,
            productName: productName,
            description: description,
            productPrice: productPrice,
            supplierName: supplierName,
            availableQuantity: availableQuantity
        )
    );
  }

  Category({
    this.categoryName,
    this.categoryId,
    this.color,
    this.brand,
  });
}
