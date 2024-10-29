import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Challenge6Page extends StatelessWidget {
  const Challenge6Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Challenge 6 - Animation Jank')),
      body: const LargeDataProcessor(),
    );
  }
}

class LargeDataProcessor extends StatefulWidget {
  const LargeDataProcessor({super.key});

  @override
  State<LargeDataProcessor> createState() => _LargeDataProcessorState();
}

class _LargeDataProcessorState extends State<LargeDataProcessor> {
  List<dynamic> result = [];
  bool isLoading = false;

  Future<void> _loadData() async {
    setState(() {
      isLoading = true;
    });

    final largeJson = await rootBundle.loadString('assets/large-file.json');

    final data = await compute(_parseJson, largeJson);

    setState(() {
      result = data;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircularProgressIndicator(),
          const SizedBox(height: 24),
          if (result.isEmpty)
            const Text('Press the button to load data')
          else if (isLoading)
            const Text('Loading data...')
          else
            Text('${result.length} items loaded'),
          const SizedBox(height: 24),
          SafeArea(
            child: ElevatedButton(
              onPressed: _loadData,
              child: const Text('Load Data'),
            ),
          ),
        ],
      ),
    );
  }
}

List<dynamic> _parseJson(String jsonString) {
  return jsonDecode(jsonString) as List<dynamic>;
}
