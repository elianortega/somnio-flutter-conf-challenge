import 'package:flutter/material.dart';
import 'package:somnio_flutter_conf_challenge/router/router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Challenges'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          Card(
            child: ListTile(
              title: const Text('Challenge 1'),
              onTap: () {
                Challenge1Route().go(context);
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Challenge 2'),
              onTap: () {
                Challenge2Route().go(context);
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Challenge 3'),
              onTap: () {
                Challenge3Route().go(context);
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Challenge 4'),
              onTap: () {
                // Go to to Challenge 4
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Challenge 5'),
              onTap: () {
                Challenge5Route().go(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
