import 'package:flutter/material.dart';

class Challenge5Page extends StatelessWidget {
  const Challenge5Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Challenge 5 - Router')),
      body: Center(
        child: Text(
          'You successfully navigated to Challenge 5!',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
