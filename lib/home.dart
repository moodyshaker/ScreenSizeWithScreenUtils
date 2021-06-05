import 'package:flutter/material.dart';
import 'package:test_app/dummy_data.dart';
import 'package:test_app/list_item.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sizes'),
      ),
      body: ListView.builder(
        itemCount: categoryList.length,
        itemBuilder: (context, i) => WeevoShipmentItem(
          index: i,
          onItemPressed: () {},
        ),
      ),
    );
  }
}
