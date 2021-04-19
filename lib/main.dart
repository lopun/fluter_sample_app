import 'package:flutter/cupertino.dart';
import 'package:flutter_sample_app/app.dart';
import 'package:flutter_sample_app/state/AppStateModel.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<AppStateModel>(
    create: (_) => AppStateModel()..loadProducts(),
    child: CupertinoStoreApp(),
  ));
}
