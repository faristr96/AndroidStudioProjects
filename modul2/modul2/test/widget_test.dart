// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:modul2/app/modules/home/controllers/home_controller.dart';

// class HomePageContent extends GetView<HomeController> {
//   const HomePageContent({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white,
//       child: Stack(
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(top: 40, left: 20),
//             child: Row(
//               children: [
//                 Container(
//                   alignment: Alignment.topLeft,
//                   child: const Icon(
//                     Icons.location_pin,
//                     size: 33,
//                   ),
//                 ),
//                 const SizedBox(width: 10),
//                 const Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Your Location',
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     Text(
//                       'North Carolina',
//                       style: TextStyle(
//                         fontSize: 14,
//                       ),
//                     ),
//                   ],
//                 ),
//                 const Spacer(),
//                 Container(
//                   alignment: Alignment.topRight,
//                   child: const Icon(
//                     Icons.account_circle_outlined,
//                     size: 50,
//                   ),
//                 )
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 250),
//             child: Container(
//               decoration: const BoxDecoration(
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(40),
//                   topRight: Radius.circular(40),
//                 ),
//                 color: Color.fromARGB(253, 3, 25, 39),
//               ),
//               child: Column(
//                 children: [
//                 Container(
//                   child: const Row(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(top: 45, left: 15),
//                         child: Text(
//                         'Top Brands',
//                           style: TextStyle(
//                           fontSize: 22,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white
//                           ),
//                         ),
//                       ),
//                       Container(
//                         padding: const EdgeInsets.only(top: 43, left: 200),
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(20.0), // Menambahkan border radius
//                         ),
//                         child: Text(
//                           'More',
//                             style: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black, // Mengubah warna teks menjadi hitam (sesuai dengan latar belakang putih)
//                           ),
//                         ),
//                       ),

//                       // Padding(padding: const EdgeInsets.only(top: 43, left: 200),
//                       //   child: Text(
//                       //   'More',
//                       //     style: TextStyle(
//                       //     fontSize: 14,
//                       //     fontWeight: FontWeight.bold,
//                       //     color: Colors.white
//                       //     ),
//                       //   ),
//                       // ),
//                   ]),
                  

//                 ),
//                 Container(

//                 ),
//                 Container(

//                 ),
//                 Container(

//                 )
//               ]),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 100, left: 20, right: 100),
//             child: Container(
//               child: Text(
//                 'Search for the car brand you want',
//                 style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 175, left: 20),
//             child: Row(
//               children: [
//                 Container(
//                   height: 60,
//                   width: 290,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(15),
//                     color: Colors.transparent,
//                     border: Border.all(color: Colors.black),
//                   ),
//                 ),
//                 const SizedBox(width: 10), // Tambah jarak horizontal
//                 Container(
//                   height: 62,
//                   width: 70,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(15),
//                     color: Colors.blue[600],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
// tolong benarkan