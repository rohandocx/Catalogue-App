import 'package:flutter_course/Models/catalog.dart';

class CartModel {
    

  static final cartModel = CartModel._internal();

  CartModel._internal();

  factory CartModel() => cartModel;

  late CatalogModel _catalog;

  // Collection of IDs - store Ids of each item
  final List<int> itemids = [];

  // Get Catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }
  //collection of IDs
 

// get items in the cart

 List<Item> get items => itemids.map((id) => _catalog.getById(id)).toList();

  // get Total price
  num get totalprice =>
      items.fold(0, (total, current) => total + current.price);

  // Add item

  void add(Item item) {
    itemids.add(item.id);
  }
   //remove item
  void remove(Item item) {
    itemids.remove(item.id);
  }
}
