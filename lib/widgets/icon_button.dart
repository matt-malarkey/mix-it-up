import 'package:flutter/material.dart';

class StyledIconButton extends StatelessWidget {
  const StyledIconButton({
    Key key,
    @required this.text,
    @required this.icon,
    this.selected = true,
    this.callback,
  }) : super(key: key);

  final String text;
  final IconData icon;
  final bool selected;
  final dynamic callback;

  @override
  Widget build(BuildContext context) {
    final Color selectedColor = Theme.of(context).primaryColor;
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
                color: selected ? selectedColor : selectedColor.withOpacity(0.5),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0, bottom: 16.0),
              child: Text(
                text,
                style: Theme.of(context).textTheme.caption.copyWith(
                  fontSize: 20,
                  fontFamily: 'DR',
                  fontFamilyFallback: const ['Roboto'],
                  color: selected ? selectedColor : selectedColor.withOpacity(0.5),
                ),
              ),
            ),
          ],
        ),
        onPressed: callback,
      ),
    );
  }
}
