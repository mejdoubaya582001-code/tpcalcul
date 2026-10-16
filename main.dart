import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.access_alarm),
          title: const Text('Aya Mejdoub'),
          elevation: 4,
        ),
        body: const InteractiveWidget(),
      ),
    );
  }
}

class InteractiveWidget extends StatefulWidget {
  const InteractiveWidget({super.key});

  @override
  State<InteractiveWidget> createState() => _InteractiveWidgetState();
}

class _InteractiveWidgetState extends State<InteractiveWidget> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () => setState(() => _counter++),
            child: const Icon(
              Icons.add,
              size: 50.0,
              color: Colors.white,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Text(
              '$_counter',
              style: const TextStyle(fontSize: 60, color: Colors.cyan),
            ),
          ),
          ElevatedButton(
            onPressed: () => setState(() => _counter--),
            child: const Icon(
              Icons.remove,
              size: 50.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}