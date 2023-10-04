library animated_textfield;

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedTextField extends StatefulWidget {
  const AnimatedTextField({
    required this.hintText1,
    required this.hintText2,
    Key? key,
  }) : super(key: key);
  final String hintText1;
  final String hintText2;

  @override
  _AnimatedTextFieldState createState() => _AnimatedTextFieldState();
}

class _AnimatedTextFieldState extends State<AnimatedTextField> {
  final TextEditingController textController = TextEditingController();

  final ValueNotifier<String> inputValue = ValueNotifier<String>('');

  @override
  void initState() {
    super.initState();
    textController.addListener(() {
      inputValue.value = textController.text;
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(9),
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              TextField(
                controller: textController,
              ),
              ValueListenableBuilder<String>(
                valueListenable: inputValue,
                builder: (context, text, child) => text.isNotEmpty
                    ? const Text('')
                    : AnimatedTextKit(
                        repeatForever: true,
                        animatedTexts: [
                          RotateAnimatedText('AWESOME',
                              textStyle: const TextStyle(),
                              alignment: Alignment.centerLeft),
                          RotateAnimatedText('Not Awesome',
                              alignment: Alignment.centerLeft),
                        ],
                      ),
              ),
            ],
          ),
        ),
      );

  @override
  void dispose() {
    // Clean up the listener when the widget is disposed
    textController.removeListener(() {
      inputValue.value = textController.text;
    });
    super.dispose();
  }
}
