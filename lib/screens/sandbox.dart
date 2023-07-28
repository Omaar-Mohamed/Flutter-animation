import 'package:flutter/material.dart';

class SandBox extends StatefulWidget {
  const SandBox({Key? key}) : super(key: key);

  @override
  State<SandBox> createState() => _SandBoxState();
}

class _SandBoxState extends State<SandBox> {

  double _margin = 0;
  double _opacity = 1;
  double _width = 200;
  double _height = 200;
  Color _color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        margin: EdgeInsets.all(_margin),
        width: _width,
        // height: _height,
        color: _color,
        duration: Duration(seconds: 5),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:<Widget> [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _margin = 50;
                  });
                },
                child: Text('Margin'),
              ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _color = Colors.purple;
                  });
                },
                child: Text('Animate color'),
              ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _width = 400;
                  });
                },
                child: Text('Animate Width'),
              ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _opacity = 0;
                  });
                },
                child: Text('Animate opasity'),
              ),
            AnimatedOpacity(
                opacity: _opacity,
                duration: Duration(seconds: 2),
                child: Text(
                    'Hide me',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                ),
            )
          ],
        ),
      ),

    );
  }
}
