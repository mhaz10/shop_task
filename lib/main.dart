import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app_task/features/offers/offers_view.dart';
import 'core/database/database_helper.dart';
import 'features/offers/cubit/offers_cubit.dart';
import 'features/offers/data/insert_data.dart';
import 'features/offers/data/repo/offers_repo.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final db = await DatabaseHelper.database;
  print('Database initialized: $db');
  // SeedDataService.insertInitialData();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => OffersCubit(OffersRepo())..loadData(),
        child: OffersView(),
      ),
    );
  }
}
