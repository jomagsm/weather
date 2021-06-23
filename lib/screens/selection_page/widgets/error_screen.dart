import 'package:flutter/material.dart';

class ErrorScaffold extends StatelessWidget {
  final Function onPressed;
  final error;
  ErrorScaffold({Key key, @required this.onPressed, this.error})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
            ),
            onPressed: onPressed),
      ),
      body: Center(
        child: Text(error.message.toString()),
      ),
    );
  }
}
