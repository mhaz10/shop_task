import 'package:shop_app_task/core/database/database_helper.dart';
import 'package:shop_app_task/core/utils/app_images.dart';

class SeedDataService {
  static Future<void> insertInitialData() async {

    final categoryList = [
      {'name': 'موضة رجالى', 'image': AppImages.person},
      {'name': 'ساعات', 'image': AppImages.watch},
      {'name': 'موبايلات', 'image': AppImages.phone},
      {'name': 'منتجات تجميل', 'image': AppImages.makeup},
      {'name': ' منزل', 'image': AppImages.home},
    ];

    for (final cat in categoryList) {
      await DatabaseHelper.insertCategory(cat);
    }

    final productList = [
      {'name': 'قميص من الصوف مناسب', 'image': AppImages.shirt, 'price': 32000.000},
      {'name': 'جاكيت من الصوف مناسب', 'image': AppImages.jacket, 'price': 33000.000},
      {'name': 'جزمه رياضه مناسب', 'image': AppImages.sportsBoots, 'price': 2200.00},
      {'name': 'جاكيت من الصوف مناسب', 'image': AppImages.jacket, 'price': 33000.000},
      {'name': 'قميص من الصوف مناسب', 'image': AppImages.shirt, 'price': 32000.000},
      {'name': 'جزمه رياضه مناسب', 'image': AppImages.sportsBoots, 'price': 2200.00},
      {'name': 'جاكيت من الصوف مناسب', 'image': AppImages.jacket, 'price': 33000.000},
      {'name': 'جزمه رياضه مناسب', 'image': AppImages.sportsBoots, 'price': 2200.00},
    ];

    for (final product in productList) {
      await DatabaseHelper.insertProduct(product);
    }

    print('✅ Initial data inserted successfully.');
  }
}
