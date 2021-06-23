import 'package:flutter/material.dart';

class CircularProgress extends StatelessWidget {
  final Function onPressed;
  const CircularProgress({Key key, @required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
            ),
            onPressed: onPressed,
          ),
        ),
        body: Center(child: CircularProgressIndicator()));
  }
}
