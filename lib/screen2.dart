import 'package:flutter/material.dart';
import 'package:untitled4/custom_widgets.dart';
import 'package:untitled4/screen1.dart';

class Screen2 extends StatefulWidget{
  @override
  screen2_State createState() => screen2_State();
}
class screen2_State extends State<Screen2> with SingleTickerProviderStateMixin {
  double _targetSize = 300;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('API Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Screen2 :)'),
            SizedBox(height: 20),
            TweenAnimationBuilder(
              tween: Tween<double>(
                begin: 50,
                end: _targetSize,
              ),
              duration: const Duration(seconds: 2),
              onEnd: () {
                setState(() {
                  if (_targetSize == 50) {
                    _targetSize = 100;
                  } else {
                    _targetSize = 50;
                  }
                });
              },
              curve: Curves.linear,
              builder: (BuildContext _, double size, Widget? __) {
                return Container(
                  width: size,
                  height: size,
                  decoration: const BoxDecoration(
                      gradient: RadialGradient(
                          center: Alignment.center,
                          colors: [Colors.blue, Colors.purple, Colors.blueGrey, Colors.purpleAccent, Colors.white38]),
                      shape: BoxShape.circle),
                );
              },
            ),
            SizedBox(height: 20),
            SizedBox(height: 20),
            CustomButton(
              text: 'Go to screen3',
              color: Colors.yellowAccent,
              onPressed: () {
                Navigator.pushNamed(context, '/screen3');
              },
            ),
          ],
        ),
      ),
    );
  }
}

RaisedButton({required Text child, required Null Function() onPressed}) {
}

