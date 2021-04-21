import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_sample_app/routes/first_screen.dart';
import 'package:flutter_sample_app/routes/second_screen.dart';
import 'StoreHomePage.dart';

class CupertinoStoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return CupertinoApp(
      theme: const CupertinoThemeData(brightness: Brightness.light),
      routes: {
        '/': (_) => FirstScreen(),
        '/second': (_) => SecondScreen(),
      },
      initialRoute: '/',
    );
  }
}
