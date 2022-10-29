import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isFlat = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedPhysicalModel(
            shape: BoxShape.rectangle,
            elevation: _isFlat ? 0 : 6,
            color: Colors.white,
            shadowColor: Colors.black,
            duration: const Duration(microseconds: 500),
            child: const SizedBox(
              height: 129,
              width: 120,
              child: Icon(Icons.wallet),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _isFlat = !_isFlat;
                });
              },
              child: const Text('click'))
        ],
      )),
    );
  }
}
