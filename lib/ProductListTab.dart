import 'package:flutter/cupertino.dart';
import 'package:flutter_sample_app/state/AppStateModel.dart';
import 'package:provider/provider.dart';

class ProductListTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Consumer<AppStateModel>(
      builder: (context, model, child) => const CustomScrollView(
            slivers: [
              CupertinoSliverNavigationBar(
                largeTitle: Text('Cupertino Store'),
              )
            ],
          ));
}
