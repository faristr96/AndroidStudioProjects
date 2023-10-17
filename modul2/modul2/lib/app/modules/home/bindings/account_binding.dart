import 'package:get/get.dart';
import 'package:modul2/app/modules/home/controllers/profile_controller.dart';


class AccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileCotroller>(
      () => ProfileCotroller(),
    );
  }
}
