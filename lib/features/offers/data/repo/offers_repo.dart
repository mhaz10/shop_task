import 'package:shop_app_task/features/offers/data/models/category_model.dart';
import 'package:shop_app_task/features/offers/data/models/product_model.dart';

import '../../../../core/database/database_helper.dart';

class OffersRepo{
  OffersRepo._internal();
  static final OffersRepo _repo =
  OffersRepo._internal();
  factory OffersRepo() => _repo;

  Future<List<CategoryModel>> getCategories() async {
    List<Map<String, dynamic>> categories = await DatabaseHelper.getAllCategories();
    return categories.map((e) => CategoryModel.fromMap(e)).toList();
  }

  Future<List<ProductModel>> getProducts() async {
    List<Map<String, dynamic>> products = await DatabaseHelper.getAllProducts();
    return products.map((e) => ProductModel.fromMap(e)).toList();
  }

}