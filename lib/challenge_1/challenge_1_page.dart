import 'package:flutter/material.dart';

class Challenge1Page extends StatelessWidget {
  const Challenge1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Challenge 1 - Text Overflow'),
      ),
      body: const TextOverflowRow(),
    );
  }
}

class TextOverflowRow extends StatelessWidget {
  const TextOverflowRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          Icon(Icons.warning),
          SizedBox(width: 16),
          Expanded(
            child: Text(
              'This is a very long text that does not fit in a single line and will cause an overflow if not handled properly.',
            ),
          ),
        ],
      ),
    );
  }
}
