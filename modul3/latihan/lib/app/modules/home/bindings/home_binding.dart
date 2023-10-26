import 'package:get/get.dart';
import 'package:latihan/app/modules/home/controllers/todos_controller.dart';


class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TodosController>(
      () => TodosController(),
    );
  }
}
