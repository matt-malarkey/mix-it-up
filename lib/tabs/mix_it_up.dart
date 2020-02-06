import 'package:flutter/material.dart';
import 'package:mix_it_up_tuesdays/model/ideas.dart';
import 'package:provider/provider.dart';

class MixItUpTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String idea = Provider.of<Idea>(context).idea;
    return RefreshIndicator(
      backgroundColor: Theme.of(context).buttonColor,
      onRefresh: () async => Future.delayed(
        Duration(seconds: 1),
        () => Provider.of<Idea>(context, listen: false).getNewIdea(),
      ),
      child: CustomScrollView(
        slivers: <Widget>[
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Center(
                child: Text(
                  idea,
                  style: Theme.of(context).textTheme.body1,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
