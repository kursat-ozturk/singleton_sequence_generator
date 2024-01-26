import 'package:flutter/material.dart';
import 'package:singleton_sequence_generator/sequence_generator.dart';

class SequencePage extends StatefulWidget {
  const SequencePage({super.key});

  @override
  State<SequencePage> createState() => _SequencePageState();
}

class _SequencePageState extends State<SequencePage> {
  void _incrementCounter() {
    setState(() {
      SequenceGenerator().getNextNumber();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Last Sequence Number: ',
            ),
            Text(
              '${SequenceGenerator().getCurrentNumber()}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        icon: const Icon(Icons.add),
        label: const Text('Generate Next Number'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}