import 'package:flutter/material.dart';

class StyledIconButton extends StatelessWidget {
  const StyledIconButton({Key key, @required this.text, @required this.icon, this.callback})
      : super(key: key);

  final String text;
  final IconData icon;
  final dynamic callback;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: FlatButton(
        shape: CircleBorder(),
        clipBehavior: Clip.none,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Icon(
                icon,
                size: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0, bottom: 16.0),
              child: Text(
                text,
                style: Theme.of(context).textTheme.caption.copyWith(
                  fontSize: 20,
                  fontFamily: 'DR',
                  fontFamilyFallback: const ['Roboto'],
                ),
              ),
            ),
          ],
        ),
        onPressed: () => callback(),
      ),
    );
  }
}
