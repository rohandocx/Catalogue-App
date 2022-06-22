import '';

class CatalogModel {
  static final items = [
    Item(
      id: 001,
      name: "iPhone 12  pro ",
      description: " Apple 12th Generation",
      price: 999,
      color: "#33505a",
      image: "assets/images/iphone_12.jpg",
    )
  ];
}

class Item {
  final int id;
  final String name;
  final String description;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.color,
      required this.image});
}
