import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HalamanDua(gambar: "img/gambar1.gif", colors: Colors.grey),
  ));
}

class HalamanDua extends StatefulWidget {
  final String gambar;
  final Color colors;

  HalamanDua({required this.gambar, required this.colors});

  @override
  _HalamanDuaState createState() => _HalamanDuaState();
}

class Pilihan {
  final String teks;
  final Color warna;

  const Pilihan({required this.teks, required this.warna});
}

class _HalamanDuaState extends State<HalamanDua> {
  Color warna = Colors.grey;

  List<Pilihan> listPilihan = const <Pilihan>[
    Pilihan(teks: "Red", warna: Colors.red),
    Pilihan(teks: "Green", warna: Colors.green),
    Pilihan(teks: "Blue", warna: Colors.blue),
  ];

  void _pilihWarna(Pilihan pilihan) {
    setState(() {
      warna = pilihan.warna;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Acara 23"),
        backgroundColor: Colors.purpleAccent,
        actions: <Widget>[
          PopupMenuButton<Pilihan>(
            onSelected: _pilihWarna,
            itemBuilder: (BuildContext context) {
              return listPilihan.map((Pilihan x) {
                return PopupMenuItem<Pilihan>(
                  value: x,
                  child: Text(x.teks),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                center: Alignment.center,
                colors: [Colors.purple, warna, Colors.deepPurple],
              ),
            ),
          ),
          Center(
            child: Hero(
              tag: widget.gambar,
              child: ClipOval(
                child: SizedBox(
                  width: 200.0,
                  height: 200.0,
                  child: Material(
                    child: InkWell(
                      onTap: () => Navigator.of(context).pop(),
                      child: Flexible(
                        flex: 1,
                        child: Container(
                          color: widget.colors,
                          child: Image.asset(
                            widget.gambar,
                            fit: BoxFit.cover,
                          ),
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
