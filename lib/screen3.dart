import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:untitled4/custom_widgets.dart';

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Database Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Screen3 :)'),
            const SizedBox(height: 20),
            AnimatedTextKit(
              animatedTexts: [
                RotateAnimatedText('AWESOME',
                    textStyle: const TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      backgroundColor: Colors.grey)),
                ScaleAnimatedText(
                    'COOL',
                    textStyle: const TextStyle(
                        letterSpacing: 3,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange)),
                WavyAnimatedText(
                    'Amazing',
                    textStyle: const TextStyle(
                        fontSize: 30,
                        decoration: TextDecoration.underline,
                  ),
                ),
              ],
              isRepeatingAnimation: true,
              totalRepeatCount: 10000,
              // pause: Duration(milliseconds: 2),
            ),
            const SizedBox(height: 20),
            CustomButton(
              text: 'Go to screen1',
              color: Colors.green,
              onPressed: () {
                Navigator.pushNamed(context, '/screen1');
              },
            ),
          ],
        ),
      ),
    );
  }
}

