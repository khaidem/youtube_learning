import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final bool _first = true;
  final double _fontSize = 60;
  final Color _color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 120,
            child: AnimatedDefaultTextStyle(
              duration: const Duration(microseconds: 300),
              style: TextStyle(
                fontSize: _fontSize,
                color: _color,
              ),
              child: const Text('Flutter'),
            ),
          )
        ],
      ),
    );
  }
}
