import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  int _incrementCounter = 0;
  int _decrementCounter = 0;

  void _increment() {
    setState(() {
      _counter++;
      _incrementCounter++;
    });
  }

  void _decrement() {
    if(_counter > 0){
      setState(() {
      _counter--;
      _decrementCounter++;
    });
    }
  }

  void _reset() {
    setState(() {
      _counter = 0;
      _incrementCounter = 0;
      _decrementCounter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      persistentFooterButtons: [
        FloatingActionButton(
          onPressed: _reset,
          child: const Text(
            'Reset',
            style: TextStyle(color: Colors.black),
          ),
        ),
        
        FloatingActionButton(
          backgroundColor: Colors.red,
          onPressed: _decrement,
          child: Text(
            '$_decrementCounter',
            style: const TextStyle(color: Colors.black),
          ),
        ),
         FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: _increment,
          child: Text(
            '$_incrementCounter',
            style: const TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }
}
