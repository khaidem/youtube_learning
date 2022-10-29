import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => const AboutDialog(
                      applicationIcon: FlutterLogo(),
                    ));
          },
          child: const Text('This is text created ')),
    );
  }
}
