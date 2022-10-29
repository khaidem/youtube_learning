import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          SizedBox(
            width: 200,
            height: 100,
            child: ElevatedButton(
              onPressed: () {},
              child: null,
            ),
          ),
          SizedBox(
            width: 100,
            height: 200,
            child: AbsorbPointer(
              // this Button will not clickable
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                onPressed: () {},
                child: null,
              ),
            ),
          )
        ],
      ),
    );
  }
}
