import 'dart:async';
import 'package:flutter/material.dart';

class Challenge3Page extends StatelessWidget {
  const Challenge3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Challenge 3 - Stream Land'),
      ),
      body: const StreamExample(),
    );
  }
}

class StreamExample extends StatefulWidget {
  const StreamExample({super.key});

  @override
  State<StreamExample> createState() => _StreamExampleState();
}

class _StreamExampleState extends State<StreamExample> {
  final StreamController<int> _controller = StreamController<int>.broadcast();
  late final Timer timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      _controller.sink.add(timer.tick);
    });
  }

  @override
  void dispose() {
    timer.cancel();
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StreamBuilder<int>(
            stream: _controller.stream,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(
                  'Listener 1: ${snapshot.data}',
                  style: textTheme.headlineLarge,
                );
              }
              return const CircularProgressIndicator();
            },
          ),
          const SizedBox(height: 24),
          StreamBuilder<int>(
            stream: _controller.stream,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(
                  'Listener 2: ${snapshot.data}',
                  style: textTheme.headlineLarge,
                );
              }
              return const CircularProgressIndicator();
            },
          ),
        ],
      ),
    );
  }
}
