import 'package:flutter/cupertino.dart';
import 'package:flutter_sample_app/routes/second_screen.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('First Screen'),
        leading: null,
      ),
      child: Center(
        child: CupertinoButton(
            child: Text('Launch Screen'),
            onPressed: () {
              Navigator.pushNamed(context, '/second',
                  arguments: ScreenArguments(
                      title: 'Second Title', message: 'Go Back'));
            }),
      ),
    );
  }
}
