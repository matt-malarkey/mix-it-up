import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mix_it_up_tuesdays/tabs/mix_it_up.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 1;

  static List<Widget> _pages = <Widget>[
    Text(
      'Suggest',
    ),
    MixItUpTab(),
    Text(
      'Favourites',
    ),
  ];

  Widget _navItem(String text, IconData icon, int index) => Padding(
    padding: const EdgeInsets.symmetric(vertical: 4.0),
    child: FlatButton(
          shape: CircleBorder(),
          clipBehavior: Clip.none,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Icon(icon),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0, bottom: 16.0),
                child: Text(text),
              ),
            ],
          ),
          onPressed: () => setState(() => _selectedIndex = index),
        ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mix It Up Tuesday'),
      ),
      body: Center(
        child: _pages[_selectedIndex],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 32.0, left: 16.0, right: 16.0),
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          clipBehavior: Clip.antiAlias,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _navItem('Suggest', Icons.create, 0),
              _navItem('Mix It Up', Icons.autorenew, 1),
              _navItem('Favourites', Icons.favorite, 2),
            ],
          ),
        ),
      ),
    );
  }
}
