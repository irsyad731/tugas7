import 'package:flutter/foundation.dart';

class Product {
  final String name;
  Product(this.name);
}

class CartModel extends ChangeNotifier {
  final List<Product> _items = [];

  List<Product> get items => _items;
  int get totalItems => _items.length;

  void add(Product product) {
    _items.add(product);
    notifyListeners();
  }

  void remove(Product product) {
    _items.remove(product);
    notifyListeners();
  }
}