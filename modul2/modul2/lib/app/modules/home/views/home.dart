import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modul2/app/modules/home/controllers/home_controller.dart';

class HomePageContent extends GetView<HomeController> {
  const HomePageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 20),
            child: Row(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Icon(Icons.location_pin,
                      size: 40, color: Colors.blue.shade400),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 7),
                      child: Text(
                        'Your Location',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.blue.shade400,
                        ),
                      ),
                    ),
                    Text(
                      'North Carolina',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue.shade300),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  alignment: Alignment.topRight,
                  child: const Icon(
                    Icons.account_circle_outlined,
                    size: 50,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 250),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                color: Color.fromARGB(253, 3, 25, 39),
              ),
              child: Column(children: [
                Container(
                  color: Colors.transparent,
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40, left: 15),
                      child: Container(
                        color: Colors.transparent,
                        child: const Text(
                          'Top Brands',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40, left: 200),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xFF132B42),
                        ),
                        alignment: Alignment.center,
                        height: 26,
                        width: 65,
                        child: const Text(
                          'More >',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xFF132B42),
                              image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  alignment:
                                      Alignment.center, // Atur sesuai kebutuhan
                                  image: AssetImage(
                                      'lib/app/data/assets/images/logobmw.png'),
                                  scale: 0.1 // Ganti dengan path gambar Anda
                                  ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xFF132B42)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xFF132B42)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 22),
                  child: Container(
                    color: Colors.transparent,
                    child: Row(children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          'Recommended',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 163),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0xFF132B42),
                          ),
                          alignment: Alignment.center,
                          height: 26,
                          width: 65,
                          child: const Text(
                            'More >',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Container(
                            height: 110,
                            width: 170,
                            decoration: BoxDecoration(
                                // image: DecorationImage(image: ) ,
                                borderRadius: BorderRadius.circular(15),
                                color: const Color(0xFF132B42)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            height: 110,
                            width: 170,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color(0xFF132B42)),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 110, left: 20, right: 100),
            child: Container(
              color: Colors.transparent,
              child: const Text(
                'Search for the car brand you want',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 175, left: 20),
            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 290,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.transparent,
                    border: Border.all(color: Colors.black),
                  ),
                  child: const TextField(
                      decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    labelText: 'search brand car',
                    hintText: 'Toyota',
                  )),
                ),
                const SizedBox(width: 10), // Tambah jarak horizontal
                Container(
                  height: 62,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue[600],
                  ),
                  child: const Icon(Icons.shape_line_outlined),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
