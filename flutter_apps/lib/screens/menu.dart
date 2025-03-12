import 'package:flutter/material.dart';
import '../widgets/left_drawer.dart';
import '../screens/moodentry_form.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mental Health Tracker"),
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: const LeftDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Informasi User
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildInfoCard("NIM", "E41231404"),
                _buildInfoCard("Name", "Shinta Maria"),
                _buildInfoCard("Class", " TIF B"),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              "Welcome to Mental Health Tracker",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            // Tombol Aksi
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildActionButton(Icons.mood, "Lihat Mood", () {}),
                const SizedBox(width: 16),
                _buildActionButton(Icons.add, "Tambah Mood", () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MoodEntryFormPage(),
                    ),
                  );
                }),
                const SizedBox(width: 16),
                _buildActionButton(Icons.logout, "Logout", () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard(String title, String value) {
  return Expanded(
    child: Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20), // Lebar lebih luas
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Text(
              value,
              style: const TextStyle(fontSize: 10),
            ),
          ],
        ),
      ),
    ),
  );
}

  Widget _buildActionButton(IconData icon, String label, VoidCallback onTap) {
    return SizedBox(
      width: 120,
      height: 120,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 25, color: Colors.white),
            const SizedBox(height: 8),
            Text(
              label,
              style: const TextStyle(color: Colors.white, fontSize: 10), // Ukuran font lebih kecil
            ),
          ],
        ),
      ),
    );
  }
}
