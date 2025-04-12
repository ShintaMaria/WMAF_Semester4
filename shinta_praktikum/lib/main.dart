import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'app/views/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    await Firebase.initializeApp();
    runApp(const MyApp());
  } catch (e) {
    print("Firebase gagal diinisialisasi: $e"); // 🔹 Debugging error Firebase
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shinta Praktikum',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const InitScreen(),
    );
  }
}

class InitScreen extends StatelessWidget {
  const InitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()), // 🔹 Loading
          );
        } else if (snapshot.hasError) {
          return Scaffold(
            body: Center(child: Text('Error: ${snapshot.error}')), // 🔹 Tampilkan error
          );
        }
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: LoginPage(),
        );
      },
    );
  }
}

 