import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'StoreHomePage.dart';

class CupertinoStoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return CupertinoApp(
      theme: const CupertinoThemeData(brightness: Brightness.light),
      home: StoreHomePage(),
    );
  }
}
