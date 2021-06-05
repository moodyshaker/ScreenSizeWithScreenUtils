import 'package:flutter/material.dart';

class PickerWidget extends StatelessWidget {
  final Function onClick;

  PickerWidget({
    @required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, i) => ListTile(
        onTap: () => onClick('item $i'),
        title: Text(
          'item $i',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: Icon(
          Icons.location_city,
          color: Colors.grey[600],
        ),
      ),
    );
  }
}
