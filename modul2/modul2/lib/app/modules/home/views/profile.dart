// Halaman-halaman untuk setiap item di BottomNavigationBar (contoh)
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:modul2/app/modules/home/controllers/profile_controller.dart';

class ProfilePage extends GetView<ProfileCotroller> {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Container(
            child: Column(
              children: [
                Container(
                  height: 275,
                  width: double.infinity,
                  color: Color(0xFF6096B4),
                ),
                Container(
                  height: 352.4,
                  width: double.infinity,
                  color: Color(0xFF93BFCF),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 100, left: 100, bottom: 15),
                      child: Container(
                        child: Row(
                          children: [
                            Container(
                              child: Icon(
                                Icons.email,
                                size: 40,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                child: Text(
                                  'abcdefg@gmail.com',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 100, bottom: 15),
                      child: Container(
                        child: Row(
                          children: [
                            Container(
                              child: Icon(
                                Icons.phone_android,
                                size: 40,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                child: Text(
                                  '+6285987654321',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 100),
                      child: Container(
                        child: Row(
                          children: [
                            Container(
                              child: Icon(
                                Icons.map_outlined,
                                size: 40,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                child: Text(
                                  'Jl. Jendral Sudirman No. 5',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ]),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 223, left: 40, right: 40),
          child: Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 216, 216, 216)),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 230),
            child: Container(
              child: Text(
                'USERNAME',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 45, left: 145),
          child: Container(child: Obx(() {
            final image = controller.image.value;
            return image != null
                ? Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: FileImage(image),
                      ),
                    ),
                  )
                : Container(
                    transformAlignment: Alignment.center,
                    width: 150,
                    height: 150,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                    ),
                  );
          })),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 253, left: 64),
          child: Container(
            color: Colors.transparent,
            height: 40,
            width: double.infinity,
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Container(
                  color: Colors.transparent,
                  child: ElevatedButton(
                    onPressed: () async {
                      await controller.getImageFromGallery();
                    },
                    child: const Text("Upload Gallery"),
                  ),
                ),
              ),
              Container(
                color: Colors.transparent,
                child: ElevatedButton(
                  onPressed: () async {
                    await controller.getImageFromCamera();
                  },
                  child: const Text("Upload Camera"),
                ),
              ),
            ]),
          ),
        ),
      ],
    );
  }
}
