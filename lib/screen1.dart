import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'custom_widgets.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Welcome Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Building apps for'),
            SizedBox(height: 20),
            AnimatedTextKit(
              animatedTexts: [
                TyperAnimatedText('Android'),
                TyperAnimatedText('iOS'),
                TyperAnimatedText('Web'),
              ],
            ),
            SizedBox(height: 20),
            CustomButton(
              text: 'Go to screen2',
              color: Colors.redAccent,
              onPressed: () {
                Navigator.pushNamed(context, '/screen2');
              },
            ),
          ],
        ),
      ),
    );
  }
}


