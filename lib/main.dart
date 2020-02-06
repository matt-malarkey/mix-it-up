import 'package:flutter/material.dart';
import 'package:mix_it_up_tuesdays/home.dart';
import 'package:mix_it_up_tuesdays/model/ideas.dart';
import 'package:mix_it_up_tuesdays/theme.dart';
import 'package:provider/provider.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Idea(),
        )
      ],
      child: Consumer<Idea>(
        builder: (BuildContext context, Idea value, Widget child) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: appTheme,
            home: Theme(
              data: appTheme,
              child: HomeScreen(),
            ),
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
