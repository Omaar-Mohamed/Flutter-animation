import 'package:flutter/material.dart';

class ScreenTitle extends StatelessWidget {
  final String? text;

  const ScreenTitle({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(

      duration: Duration(milliseconds: 500),
      builder: (BuildContext context, Object? value, Widget? child) {
        return Opacity(
          opacity: value as double,
          child: Padding(
            padding: EdgeInsets.only(top: value * 20),
            child: child,
          ),
        );
      },
      tween: Tween<double>(begin: 0, end: 1),
      child: Text(
        text??'',
        style: TextStyle(fontSize: 36, color: Colors.white, fontWeight: FontWeight.bold),
      ),

    );
  }
}
