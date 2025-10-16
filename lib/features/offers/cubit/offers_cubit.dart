import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shop_app_task/features/offers/data/models/category_model.dart';
import 'package:shop_app_task/features/offers/data/models/product_model.dart';

import '../data/repo/offers_repo.dart';

part 'offers_state.dart';

class OffersCubit extends Cubit<OffersState> {
  OffersCubit(this.offersRepo) : super(OffersInitial());

  final OffersRepo offersRepo;

  List<CategoryModel>? categories;
  List<ProductModel>? products;

  void loadData() async {
    List<CategoryModel> categories = await offersRepo.getCategories();
    List<ProductModel> products = await offersRepo.getProducts();

    if (categories.isNotEmpty && products.isNotEmpty) {
      this.categories = categories;
      this.products = products;
      emit(GetDataSuccess());
    } else {
      emit(GetDataError('Failed to load data'));
    }
  }
}
