import 'package:flutter/material.dart';
import 'package:tes/page/favorit.dart';
import 'package:tes/page/notifikasi.dart';
import 'package:tes/page/profil.dart';

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

class HomePageContent extends StatelessWidget {
  const HomePageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 40, left: 20),
          child: Container(
            height: 40,
            child: Row(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: const Icon(
                    Icons.location_pin,
                    size: 33,
                  ),
                ),
                Container(
                  child: Column(children: [
                    Container(
                      child: Text('Your Location'),
                    ),
                    Container(
                      child: Text('North Carolina'),
                    ),
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 205),
                  child: Container(
                    alignment: Alignment.topRight,
                    child: const Icon(
                      Icons.account_circle_outlined,
                      size: 50,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 250),
          child: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
                color: Color.fromARGB(253, 3, 25, 39)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 100, left: 20, right: 100),
          child: Container(
            child: Text(
              'Search for the car brand you want',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Container(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 175, left: 20),
                child: Container(
                  height: 60,
                  width: 290,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.transparent,
                      border: Border.all(color: Colors.black)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 175, left: 10),
                child: Container(
                  height: 62,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue[600],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
