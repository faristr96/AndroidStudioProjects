import 'package:get/get.dart';
import 'package:latihan/app/modules/home/views/todos_pages.dart';

import '../modules/home/bindings/home_binding.dart';


part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => TodosPage(),
      binding: HomeBinding(),
    ),
  ];
}
