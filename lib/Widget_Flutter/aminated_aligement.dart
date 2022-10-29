import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    bool selected = false;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },

        /// ### This will alignment form top to bottom
        /// with animation
        child: Container(
          width: double.infinity,
          height: 250,
          color: Colors.indigo,
          child: AnimatedAlign(
            alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
            duration: const Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
            child: const FlutterLogo(),
          ),
        ),
      ),
    );
  }
}
