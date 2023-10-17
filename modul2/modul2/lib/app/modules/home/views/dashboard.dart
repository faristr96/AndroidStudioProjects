import 'package:flutter/material.dart';
import 'package:modul2/app/modules/home/views/Like.dart';
import 'package:modul2/app/modules/home/views/Notifikasi.dart';
import 'package:modul2/app/modules/home/views/home.dart';
import 'package:modul2/app/modules/home/views/profile.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0; // Indeks item terpilih di BottomNavigationBar

  // Daftar halaman yang sesuai dengan setiap item di BottomNavigationBar
  final List<Widget> _pages = [
    const HomePageContent(),
    const LikePage(),
    const NotificationPage(),
    const ProfilePage(),
  ];

  // Fungsi yang akan dipanggil ketika item BottomNavigationBar diubah
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[
          _selectedIndex], // Menampilkan halaman sesuai dengan item yang terpilih
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(240, 19, 45, 68),
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(240, 19, 45, 68),
            icon: Icon(Icons.favorite),
            label: 'Like',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(240, 19, 45, 68),
            icon: Icon(Icons.notifications),
            label: 'Notifikasi',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(240, 19, 45, 68),
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor:
            Colors.white, // Menunjukkan item mana yang terpilih saat ini
        selectedItemColor:
            Colors.blue, // Warna teks dan ikon item yang terpilih
        onTap: _onItemTapped, // Fungsi yang akan dipanggil ketika item di-tap
      ),
    );
  }
}