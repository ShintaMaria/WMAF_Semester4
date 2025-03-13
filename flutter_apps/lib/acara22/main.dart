import 'package:flutter/material.dart';
import 'halaman.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<String> gambar = [
    "gambar1.gif",
    "gambar2.gif",
  ];

  static const Map<String, Color> colors = {
    'gambar1': Colors.blueAccent,
    'gambar2': Colors.greenAccent,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.white, Colors.purple, Colors.deepPurple],
          ),
        ),
        child: PageView.builder(
          controller: PageController(viewportFraction: 0.8),
          itemCount: gambar.length,
          itemBuilder: (context, i) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 50.0),
              child: Material(
                elevation: 8.0,
                child: Stack(
                  children: [
                    Hero(
                      tag: gambar[i],
                      child: Material(
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Halamanku(
                                gambar: gambar[i],
                                colors: colors.values.elementAt(i),
                              ),
                            ));
                          },
                          child: Container(
                            color: colors.values.elementAt(i),
                            child: Image.asset(
                              "img/${gambar[i]}",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
