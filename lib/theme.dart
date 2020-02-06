import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const Color _yellow = const Color(0xFFFFFC56);
const Color _darkBlue = const Color(0xFF083D77);
const Color _white = Colors.white;
const Color _pink = const Color(0xFFFF52AE);
const Color _lightBlue = const Color(0xFF59E6FF);

final appTheme = ThemeData(
  primaryColor: _darkBlue,
  accentColor: _pink,
  canvasColor: _lightBlue,
  buttonColor: _white,
  backgroundColor: _lightBlue,
  dialogBackgroundColor: _white,
  disabledColor: _white,
  cardColor: _white,
  textTheme: _textWith(color: Colors.black),
  primaryTextTheme: _textWith(color: _white),
  accentTextTheme: _textWith(color: _white),
  iconTheme: IconThemeData(color: _white),
  accentIconTheme: IconThemeData(color: _white),
  buttonTheme: ButtonThemeData(buttonColor: _white),
  cursorColor: _white,
  toggleableActiveColor: _white,
  cardTheme: CardTheme(
    color: _white,
    elevation: 4.0,
    shape: RoundedRectangleBorder(borderRadius: smallBorderRadius),
  ),
);

final smallBorderRadius = BorderRadius.circular(16.0);
final mediumBorderRadius = BorderRadius.circular(24.0);
final largeBorderRadius = BorderRadius.circular(32.0);

TextTheme _textWith({@required Color color}) => TextTheme(
      headline: TextStyle(
        fontFamily: 'DR',
        fontFamilyFallback: const ['Roboto'],
        color: color,
        fontSize: 40,
        fontWeight: FontWeight.w600,
      ),
      subhead: TextStyle(
        fontFamily: 'DR',
        fontFamilyFallback: const ['Roboto'],
        color: color,
        fontSize: 28,
        fontWeight: FontWeight.w300,
      ),
      title: TextStyle(
        fontFamily: 'DR',
        fontFamilyFallback: const ['Roboto'],
        color: color,
        fontSize: 40,
        fontWeight: FontWeight.w300,
      ),
      subtitle: TextStyle(
        color: color,
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
      body1: TextStyle(
        color: color,
        fontSize: 22,
        fontWeight: FontWeight.w400,
      ),
      body2: TextStyle(
        color: color,
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
      caption: TextStyle(
        color: color,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
    );
