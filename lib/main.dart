import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    ),
  );
}

/// ### abstract class cannot be initialized
/// That action or event as whole that can be sent to the bloc
///

@immutable
abstract class LoadAction {
  const LoadAction();
}




@immutable
class LoadPersonAction implements LoadAction {
  final PersonUrl url;
  const LoadPersonAction({required this.url}) : super();
}

enum PersonUrl {
  person1,
  person2,
}

@immutable
class Person {
  final String name;
  final int age;
  const Person({required this.age, required this.name});
}

extension UrlString on PersonUrl {
  String get urlString {
    switch (this) {
      case PersonUrl.person1:
      return '';
      case PersonUrl.person2:
      return '';
    }
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late final Bloc myBloc;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
    );
  }
}

// import 'package:bloc/bloc.dart';
// import 'package:flutter/material.dart';
// import 'dart:math' as math show Random;

// void main() {
//   runApp(
//     MaterialApp(
//       title: 'flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const HomePage(),
//     ),
//   );
// }

// const name = ['Foo', 'Bar', 'Baz'];

// /// ### create an extension RandomElement<T> on Iterable<T> for pick random name

// extension RandomElement<T> on Iterable<T> {
//   T getRandomElement() => elementAt(math.Random().nextInt(length));
// }

// class NameCubit extends Cubit<String?> {
//   NameCubit() : super(null);

//   /// ### Allow Picking random name in the cubit
//   ///
//   /// Every cubit and Bloc has a Special object call state
//   ///  emit is the way for producing value of state
//   void pickRandomName() => emit(name.getRandomElement());
// }

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   late final NameCubit cubit;
//   @override
//   void initState() {
//     cubit = NameCubit();
//     super.initState();
//   }

//   @override
//   void dispose() {
//     cubit.close();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home Page'),
//       ),
//       body: StreamBuilder<String?>(
//         stream: cubit.stream,
//         builder: (context, snapShot) {
//           final button = TextButton(
//             onPressed: () => cubit.pickRandomName(),
//             child: const Text('Pick a random name'),
//           );
//           switch (snapShot.connectionState) {
//             case ConnectionState.none:
//               return button;
//             case ConnectionState.waiting:
//               return button;
//             case ConnectionState.active:
//               return Column(
//                 children: [Text(snapShot.data ?? ''), button],
//               );
//             case ConnectionState.done:
//               return const SizedBox();
//           }
//         },
//       ),
//     );
//   }
// }
