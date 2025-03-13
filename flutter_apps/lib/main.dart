// import 'package:flutter/material.dart';
// void main() => runApp(MyApp());
// class MyApp extends StatelessWidget {
// @override
// Widget build(BuildContext context) {
// return MaterialApp(
// home: Scaffold(
// appBar: AppBar(
// leading: Icon(Icons.dashboard),
// title: Text("Belajar MaterialApp Scaffold"),
// actions: <Widget>[
// Icon(Icons.search),
// // Icon(Icons.find_in_page)
// ],
// actionsIconTheme: IconThemeData(color: Colors.yellow),
// backgroundColor: Colors.pinkAccent,
// bottom: PreferredSize(
// child: Container(
// color: Colors.orange,
// height: 4.0,
// ),
// preferredSize: Size.fromHeight(4.0)
// ),
// centerTitle: true,
// ),
// //PERUBAHAN BARU
// floatingActionButton: FloatingActionButton(
// backgroundColor: Colors.pinkAccent,
// child: Text('+'),
// onPressed: () {},
// ),
// body: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: <Widget>[
// Container(width: 50, height: 50, decoration: BoxDecoration(color:
// Colors.redAccent, shape: BoxShape.circle),),
// Container(width: 50, height: 50, decoration: BoxDecoration(color:
// Colors.pinkAccent, shape: BoxShape.circle),),
// Row(
// //TAMBAHKAN CODE INI
// mainAxisAlignment: MainAxisAlignment.end,
// //TAMBAHKAN CODE INI
// children: <Widget>[
// Container(width: 50, height: 50, decoration: BoxDecoration(color:
// Colors.blueAccent, shape: BoxShape.circle),),
// Container(width: 50, height: 50, decoration: BoxDecoration(color:
// Colors.redAccent, shape: BoxShape.circle),),
// Container(width: 50, height: 50, decoration: BoxDecoration(color:
// Colors.pinkAccent, shape: BoxShape.circle),),
// ],
// )
// ],
// ),
// ),
// debugShowCheckedModeBanner: false,
// );
// }

// }


// import 'package:flutter/material.dart';
// void main() {
// runApp(MaterialApp(
// home: HomePage(),
// ));
// }
// class HomePage extends StatelessWidget {
// @override
// Widget build(BuildContext context) {
// return Scaffold(
// appBar: AppBar(
// title: Text('Belajar Routing'),
// ),
// body: Center(
// child: ElevatedButton(
// onPressed: () {
// Route route = MaterialPageRoute(builder: (context) => AboutPage());
// Navigator.push(context, route);
// },
// child: Text('Tap Untuk ke AboutPage'),
// ),
// ),
// );
// }
// }
// class AboutPage extends StatelessWidget {
// @override
// Widget build(BuildContext context) {
// return Scaffold(
// appBar: AppBar(
// title: Text('Tentang Aplikasi'),
// ),
// body: Center(
// child: ElevatedButton(
// onPressed: () {
// Navigator.pop(context);
// },
// child: Text('Kembali'),
// ),
// ),
// );
// }
// }

import 'package:flutter/material.dart';
import '../screens/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      title: 'Mental Health Tracker',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}