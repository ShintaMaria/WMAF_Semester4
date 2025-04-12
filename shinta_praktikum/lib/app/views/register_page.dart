import 'package:flutter/material.dart';
import '../services/auth_service.dart';
import 'login_page.dart';
class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}
class _RegisterPageState extends State<RegisterPage> {
  final AuthService _auth = AuthService();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String errorMessage = ''; // Variabel untuk menampilkan error
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color.fromARGB(255, 0, 84, 180), Color(0xFF64B5F6)],
          ),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Praktikum\nShinta',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 200),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 10),

                // Menampilkan pesan error jika ada
                if (errorMessage.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      errorMessage,
                      style: TextStyle(color: Colors.red, fontSize: 14),
                    ),
                  ),
                SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[800],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    minimumSize: Size(double.infinity, 50),
                  ),
                  onPressed: () async {
                    setState(() {
                      errorMessage = ''; // Reset error sebelum validasi
                    });

                    String password = passwordController.text;

                    if (password.length < 8) {
                      setState(() {
                        errorMessage = 'Password harus minimal 8 karakter!';
                      });
                      return; // Hentikan proses jika password kurang dari 8 karakter
                    }

                    await _auth.registerWithEmail(
                      emailController.text,
                      password,
                    );
                  },
                  child: Text(
                    'Daftar',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: Text(
                    'Sudah punya akun? Masuk',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
