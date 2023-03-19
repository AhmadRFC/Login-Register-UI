// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, must_be_immutable
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;

  int selectedIndex = 0;

  void sigUserOut() {
    FirebaseAuth.instance.signOut();
  }

  void navigateBottomBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List<Widget> pages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.grey[800], actions: [
        IconButton(
          onPressed: sigUserOut,
          icon: Icon(Icons.logout),
        )
      ]),
      body: Center(
        child: Text("LOGGED IN AS: " + user.email!),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: navigateBottomBar,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.grey[100],
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
          ]),
    );
  }
}
