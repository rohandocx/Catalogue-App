import 'dart:convert';

class CatalogModel {
  static List<Item>? items;

  static Null get newMethod => null;
}

class Item {
  final int id;
  final String name;
  final String description;
  final num price;
  final String color;
  final String image;

  Item(
    this.id,
    this.name,
    this.description,
    this.price,
    this.color,
    this.image,
  );

  Item copyWith({
    int? id,
    String? name,
    String? description,
    num? price,
    String? color,
    String? image,
  }) {
    return Item(
      id ?? this.id,
      name ?? this.name,
      description ?? this.description,
      price ?? this.price,
      color ?? this.color,
      image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'color': color,
      'image': image,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {  

    return Item(
      map['id'] as int,
      map['name'] as String,
      map['description'] as String,
      map['price'] as num,
      map['color'] as String,
      map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) =>
      Item.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Item(id: $id, name: $name, description: $description, price: $price, color: $color, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Item &&
        other.id == id &&
        other.name == name &&
        other.description == description &&
        other.price == price &&
        other.color == color &&
        other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        description.hashCode ^
        price.hashCode ^
        color.hashCode ^
        image.hashCode;
  }
}
//factory Item.fromMap(Map<String, dynamic> map)  { return Item(
//         id: map["id"],
//         name: map["name"],
//         description: map["description"],
//         price: map["price"],
//         color: map["color"],
//         image: map["image"],
//       );
//   }

//   toMap(map) => {
//     "id" : id,
//     "name": name,
//     "description": description,
//     "price": price,
//     "color": color,
//     "image": image,

// };
