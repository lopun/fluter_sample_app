import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'state/AppStateModel.dart';

class ShoppingCartTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ShoppingCartTabState();
  }
}

class _ShoppingCartTabState extends State<ShoppingCartTab> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateModel>(
        builder: (context, model, child) => const CustomScrollView(
              slivers: [
                CupertinoSliverNavigationBar(
                  largeTitle: Text('Shopping Cart'),
                )
              ],
            ));
  }
}
