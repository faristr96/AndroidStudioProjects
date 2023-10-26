// Padding(
//   padding: const EdgeInsets.only(top: 40, left: 200),
//   child: Row( // Menggunakan Row untuk menampilkan teks dan gambar secara berdampingan
//     children: [
//       Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(15),
//           color: const Color(0xFF132B42),
//         ),
//         alignment: Alignment.center,
//         height: 26,
//         width: 65,
//         child: const Text(
//           'More >',
//           style: TextStyle(
//             fontSize: 16,
//             fontWeight: FontWeight.bold,
//             color: Colors.white,
//           ),
//         ),
//       ),
//       const SizedBox(width: 10), // Memberikan jarak horizontal antara teks dan gambar
//       Container(
//         height: 26,
//         width: 26,
//         decoration: BoxDecoration(
//           shape: BoxShape.circle,
//           image: DecorationImage(
//             fit: BoxFit.cover,
//             image: AssetImage('assets/your_image.png'), // Ganti dengan path gambar Anda
//           ),
//         ),
//       ),
//     ],
//   ),
// )
