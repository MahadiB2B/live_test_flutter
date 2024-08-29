import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeActivity(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  //snackBar message
  MySnackBar(message, contex) {
    ScaffoldMessenger.of(contex).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter App",
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, letterSpacing: 2)),
        backgroundColor: Colors.green,
        centerTitle: false,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        titleSpacing: 40,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {
                MySnackBar("This is Message", context);
              },
              icon: Icon(Icons.account_circle)),
          SizedBox(width: 0),
          IconButton(
              onPressed: () {
                MySnackBar("This is Notification", context);
              },
              icon: Icon(Icons.add_alert_rounded)),
          SizedBox(width: 0),
          IconButton(
              onPressed: () {
                MySnackBar("This is More Option", context);
              },
              icon: Icon(Icons.more_vert)),
          SizedBox(width: 0),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.dialpad),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.star_border), label: 'Favourites'),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'Recent'),
          BottomNavigationBarItem(
              icon: Icon(Icons.co_present_outlined), label: 'Contacts')
        ],
        onTap: (int index) {
          if (index == 0) {}
          if (index == 1) {}
          if (index == 2) {}
        },
      ),

    );
  }
}
