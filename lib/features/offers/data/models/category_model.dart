class CategoryModel {
  final int? id;
  final String name;
  final String? image;

  CategoryModel({this.id, required this.name, this.image});

  Map<String, dynamic> toMap() => {
    'id': id,
    'name': name,
    'image': image,
  };

  factory CategoryModel.fromMap(Map<String, dynamic> map) => CategoryModel(
    id: map['id'],
    name: map['name'],
    image: map['image'],
  );
}
