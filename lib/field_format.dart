import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:test_app/main_provider.dart';
import 'package:test_app/picker_widget.dart';

class FieldFormat extends StatefulWidget {
  @override
  _FieldFormatState createState() => _FieldFormatState();
}

class _FieldFormatState extends State<FieldFormat> {
  GlobalKey<FormState> _formState = GlobalKey<FormState>();
  TextEditingController _controller;
  FocusNode _node;
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _node = FocusNode();
    _node.addListener(() {
      _isFocused = _node.hasFocus;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _node.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fields'),
      ),
      body: Form(
        key: _formState,
        child: Padding(
          padding: EdgeInsets.all(
            20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                focusNode: _node,
                decoration: InputDecoration(
                  labelText: 'City',
                  labelStyle: TextStyle(
                    color: _isFocused ? Colors.teal : Colors.grey[600],
                  ),
                  // enabledBorder: _isFocused
                  //     ? OutlineInputBorder(
                  //         borderSide: BorderSide(
                  //           color: Colors.teal,
                  //           width: 3.0,
                  //         ),
                  //         borderRadius: BorderRadius.circular(12),
                  //       )
                  //     : OutlineInputBorder(
                  //         borderSide: BorderSide(
                  //           color: Colors.grey[600],
                  //           width: 1.0,
                  //         ),
                  //         borderRadius: BorderRadius.circular(12),
                  //       ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey[600],
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.teal,
                      width: 3.0,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                controller: _controller,
                onTap: () async {
                  await showModalBottomSheet(
                    context: context,
                    builder: (ctx) {
                      FocusScope.of(context).requestFocus(_node);
                      return PickerWidget(
                        onClick: (String item) {
                          setState(() {
                            _controller.text = item;
                          });
                          Navigator.pop(context);
                        },
                      );
                    },
                  );
                  _node.unfocus();
                  print(_node.hasFocus);
                },
                readOnly: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
