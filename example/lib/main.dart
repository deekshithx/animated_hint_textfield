import 'package:animated_hint_textfield/animated_hint_textfield.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ExampleApp());
}

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Animated Hint Demo'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const Text(
                "Slide Animation",
                style: TextStyle(color: Colors.deepPurple),
              ),
              AnimatedTextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red, width: 2),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    contentPadding: const EdgeInsets.all(12),
                  ),
                  animationType: Animationtype.slide,
                  hintTexts: const [
                    'Search for "Bengaluru"',
                    'Search for "Mumbai"',
                    'Search for "Chennai"',
                  ]),
              const Text(
                "\n\n\nFade Animation",
                style: TextStyle(color: Colors.deepPurple),
              ),
              AnimatedTextField(
                animationType: Animationtype.fade,
                hintTextStyle: const TextStyle(
                    color: Colors.deepPurple, overflow: TextOverflow.ellipsis),
                hintTexts: const [
                  'How is the weather today?',
                  'Will it rain today?',
                  'What is the temperature',
                ],
                decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.search),
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.red, width: 2),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  contentPadding: const EdgeInsets.all(12),
                ),
              ),
              const Text(
                "\n\n\n\nTyper Animation",
                style: TextStyle(color: Colors.deepPurple),
              ),
              AnimatedTextField(
                animationType: Animationtype.typer,
                hintTexts: const [
                  'Search "Flutter"',
                  'Search "Dart"',
                  'Search "Animated Hint TextField"',
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              AnimatedTextField(
                hintTextStyle: const TextStyle(color: Colors.deepPurple),
                enabled: false,
                hintTexts: const [
                  'Pay friends and merchants',
                  'Pay by number or UPI ID',
                ],
                decoration: const InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
