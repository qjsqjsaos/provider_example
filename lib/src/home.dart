import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/src/provider/count_provider.dart';
import 'package:provider_example/src/ui/count_home_widget.dart';

class Home extends StatelessWidget {
  Home({Key key}) : super(key: key);

  CountProvider _countProvider;
  @override
  Widget build(BuildContext context) {
    _countProvider = Provider.of<CountProvider>(context); //프로바이더의 값을 가져온다.

    return Scaffold(
      appBar: AppBar(
        title: Text("Provider Sample"),
      ),
      body: CountHomeWidget(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                _countProvider.add();
              }),
          IconButton(
              icon: Icon(Icons.remove),
              onPressed: () {
                _countProvider.remove();
              }),
        ],
      ),
    );
  }
}
