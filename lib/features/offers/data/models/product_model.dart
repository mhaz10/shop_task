class ProductModel {
  final int? id;
  final String name;
  final double price;
  final String? image;

  ProductModel({
    this.id,
    required this.name,
    required this.price,
    this.image,
  });

  Map<String, dynamic> toMap() => {
    'id': id,
    'name': name,
    'price': price,
    'image': image,
  };

  factory ProductModel.fromMap(Map<String, dynamic> map) => ProductModel(
    id: map['id'],
    name: map['name'],
    price: map['price'],
    image: map['image'],
  );
}
