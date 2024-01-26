import 'package:flutter/material.dart';
import 'sequence_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Singleton Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(text: "1"), // Changed to use numbers
                Tab(text: "2"), // Changed to use numbers
                Tab(text: "3"),
              ],
            ),
            title: const Text('Singleton Sequence Generator'),
          ),
          body: const TabBarView(
            children: [
              SequencePage(),
              SequencePage(),
              SequencePage(),
            ],
          ),
        ),
      ),
    );
  }
}
