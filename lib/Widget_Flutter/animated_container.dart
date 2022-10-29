import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: GestureDetector(
        onTap: () {
          setState(
            () {
              selected = !selected;
            },
          );
        },
        child: Center(
          child: AnimatedContainer(
            width: selected ? 200 : 100,
            height: selected ? 100 : 200,
            color: selected ? Colors.amberAccent : Colors.black,
            alignment: selected ? Alignment.center : Alignment.bottomRight,
            duration: const Duration(seconds: 2),
            child: const FlutterLogo(
              size: 75,
            ),
          ),
        ),
      ),
    );
  }
}
