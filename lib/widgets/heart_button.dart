import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeartButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HeartButtonState();
}

class HeartButtonState extends State<HeartButton> {
  bool _isColored = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          _isColored = !_isColored;
        });
      },
      icon: _isColored
          ? Icon(
              Icons.favorite_border,
              color: Theme.of(context).accentColor,
            )
          : Icon(Icons.favorite, color: Theme.of(context).accentColor,),
      key: UniqueKey(),
    );
  }
}
