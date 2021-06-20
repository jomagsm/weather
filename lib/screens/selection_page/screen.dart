import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatther2/screens/weather_screen/screen.dart';
import 'package:weatther2/theme/color_theme.dart';

import 'bloc/selected_city_bloc.dart';
import 'widgets/utils.dart';

class SelectedPage extends StatelessWidget {
  const SelectedPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider<SelectedCityBloc>(
        create: (context) => SelectedCityBloc(),
        child: Scaffold(
            backgroundColor: ColorPalette.blue,
            appBar: AppBar(
              // backgroundColor: ColorPalette.blue,
              centerTitle: true,
              title: Text('Weather'),
            ),
            body: BlocConsumer<SelectedCityBloc, SelectedCityState>(
              listener: (context, state) {},
              builder: (context, state) {
                return state.maybeMap(
                    error: (message) => Center(
                          child: Text(message.toString()),
                        ),
                    orElse: () => Center(child: CircularProgressIndicator()),
                    loading: (_) => Center(child: CircularProgressIndicator()),
                    initial: (_) => SafeArea(
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
                                onSubmitted: (value) {
                                  String city = convertToTitleCase(value);
                                  context.read<SelectedCityBloc>()
                                    ..add(SelectedCityEvent.selectedView(
                                        city: city));
                                },
                              ),
                            ),
                          ),
                        ),
                    data: (_data) => HomePage(city: _data.city));
              },
            )));
  }
}
