import 'Product.dart';

class ProductItem {
  int quantity;
  final Product? product;

  ProductItem({this.quantity = 1, required this.product});

  void increment() {
    quantity++;
  }
  //create add and subtract functions here

  // void add() {}

  // void substract() {}
}
