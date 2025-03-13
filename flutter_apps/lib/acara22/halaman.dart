import 'package:flutter/material.dart';

class Halamanku extends StatelessWidget {
  final String gambar;
  final Color colors;

  const Halamanku({Key? key, required this.gambar, required this.colors}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Gambar"),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: RadialGradient(
                center: Alignment.center,
                colors: [Colors.purple, Colors.white, Colors.deepPurple],
              ),
            ),
          ),
          Center(
            child: Hero(
              tag: gambar,
              child: ClipOval(
                child: SizedBox(
                  width: 200.0,
                  height: 200.0,
                  child: Material(
                    child: InkWell(
                      onTap: () => Navigator.of(context).pop(),
                      child: Container(
                        color: colors,
                        child: Image.asset(
                          "img/$gambar",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
