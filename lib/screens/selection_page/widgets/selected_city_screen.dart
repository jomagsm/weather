import 'package:flutter/material.dart';

class SelectedCityScreen extends StatelessWidget {
  final Function onSubmitted;
  const SelectedCityScreen({Key key, @required this.onSubmitted})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Weather'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Enter city',
                border: OutlineInputBorder(),
              ),
              maxLength: 100,
              textCapitalization: TextCapitalization.words,
              onSubmitted: onSubmitted,
            ),
          ),
        ),
      ),
    );
  }
}
