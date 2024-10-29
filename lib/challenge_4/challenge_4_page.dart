import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:somnio_flutter_conf_challenge/challenge_4/bloc/counter_bloc.dart';

class Challenge4Page extends StatelessWidget {
  const Challenge4Page({super.key});

  @override
  Widget build(BuildContext context) {
    return const Challenge4View();
  }
}

class Challenge4View extends StatelessWidget {
  const Challenge4View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Challenge 4 - Context')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet<void>(
              context: context,
              builder: (context) {
                return const Counter();
              },
            );
          },
          child: const Text('Show counter'),
        ),
      ),
    );
  }
}

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    final count = context.watch<CounterBloc>().state.count;
    return Column(
      children: [
        Text('Counter value: $count'),
        IconButton(
          onPressed: () {
            context.read<CounterBloc>().add(
                  const CounterIncremented(),
                );
          },
          icon: const Icon(Icons.add),
        )
      ],
    );
  }
}
