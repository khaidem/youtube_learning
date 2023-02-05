import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_learning/constants/emun.dart';
import 'package:youtube_learning/logic/cubit/counter_cubit.dart';
import 'package:youtube_learning/logic/cubit/internet_connect_cubit.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener(
      listener: (context, state) {
        if (state is InternetConnected &&
            state.connectionType == ConnectionType.wifi) {
          context.read<CounterCubit>().increment();
        } else if (state is InternetConnected &&
            state.connectionType == ConnectionType.mobile) {
          context.read<CounterCubit>().increment();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Connection Type'),
        ),
        backgroundColor: Colors.red,
        body: Column(
          children: [
            BlocBuilder<InternetConnectCubit, InternetConnectState>(
              builder: (context, state) {
                if (state is InternetConnected &&
                    state.connectionType == ConnectionType.wifi) {
                  return const Text('Wifi');
                } else if (state is InternetConnected &&
                    state.connectionType == ConnectionType.mobile) {
                  return const Text('MObile');
                }
                return const Text('No Internet');
              },
            ),
            BlocBuilder<CounterCubit, CounterState>(
              builder: (context, state) {
                return Text(state.counter.toString());
              },
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    context.read<CounterCubit>().increment();
                  },
                  child: const Text('-'),
                ),
                MaterialButton(onPressed: () {
                  context.read<CounterCubit>().decrement();
                })
              ],
            )
          ],
        ),
      ),
    );
  }
}
