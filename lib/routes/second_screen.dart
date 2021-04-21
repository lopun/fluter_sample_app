import 'package:flutter/cupertino.dart';

class ScreenArguments {
  final String title;
  final String message;

  ScreenArguments({required this.title, required this.message});
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ScreenArguments args =
        ModalRoute.of(context)!.settings.arguments as ScreenArguments;

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(args.title),
      ),
      child: Center(
        child: CupertinoButton(
          onPressed: () {
            Navigator.popUntil(context, ModalRoute.withName('/'));
          },
          child: Text(args.message),
        ),
      ),
    );
  }
}
