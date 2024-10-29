import 'package:flutter/material.dart';

class Challenge4Page extends StatelessWidget {
  const Challenge4Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Challenge 4 - Router')),
      body: Center(
        child: Text(
          'You successfully navigated to Challenge 4!',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
