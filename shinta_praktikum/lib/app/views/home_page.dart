import 'package:flutter/material.dart';
import '../services/auth_service.dart';
import 'login_page.dart';

class HomePage extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1565C0), // Warna sesuai tema
        actions: [
          TextButton.icon(
            onPressed: () async {
              _showLogoutDialog(context); // Panggil dialog konfirmasi sebelum logout
            },
            icon: Icon(Icons.logout, color: Colors.white),
            label: Text(
              'Keluar',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          SizedBox(width: 10), // Jarak dari tepi kanan
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF1565C0), Color(0xFF64B5F6)],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Selamat Datang di\nPraktikum Shinta!!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 100),
              CircleAvatar(
                radius: 90,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 86,
                  backgroundImage: AssetImage('assets/image.png'),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Shinta Maria\nE41231404\nTeknik Informatika\nPoliteknik Negeri Jember',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Fungsi untuk menampilkan dialog konfirmasi sebelum logout
  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Konfirmasi Keluar"),
          content: Text("Apakah Anda yakin ingin keluar?"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Tutup dialog
              },
              child: Text("Batal"),
            ),
            TextButton(
              onPressed: () async {
                Navigator.pop(context); // Tutup dialog sebelum logout
                await _auth.signOut(); // Proses logout
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: Text(
                "Keluar",
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        );
      },
    );
  }
}
