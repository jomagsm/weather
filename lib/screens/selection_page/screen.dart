import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatther2/screens/selection_page/widgets/error_screen.dart';
import 'package:weatther2/screens/selection_page/widgets/weather_screen.dart';
import 'bloc/selected_city_bloc.dart';
import 'widgets/circular_progress.dart';
import 'widgets/selected_city_screen.dart';
import 'widgets/utils.dart';

class SelectedPage extends StatelessWidget {
  const SelectedPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider<SelectedCityBloc>(
        create: (context) => SelectedCityBloc(),
        child: BlocConsumer<SelectedCityBloc, SelectedCityState>(
          listener: (context, state) {},
          builder: (context, state) {
            return state.maybeMap(
                error: (message) => ErrorScaffold(
                      message: message,
                      onPressed: () {
                        {
                          context.read<SelectedCityBloc>()
                            ..add(SelectedCityEvent.initail());
                        }
                      },
                    ),
                orElse: () => CircularProgress(
                      onPressed: () {
                        {
                          context.read<SelectedCityBloc>()
                            ..add(SelectedCityEvent.initail());
                        }
                      },
                    ),
                loading: (_) =>
                    Scaffold(body: Center(child: CircularProgressIndicator())),
                initial: (_) => SelectedCityScreen(
                      onSubmitted: (value) {
                        String city = convertToTitleCase(value);
                        context.read<SelectedCityBloc>()
                          ..add(SelectedCityEvent.selectedView(city: city));
                      },
                    ),
                data: (_data) => WeatherScreen(
                      data: _data,
                      onPressed: () {
                        {
                          context.read<SelectedCityBloc>()
                            ..add(SelectedCityEvent.initail());
                        }
                      },
                    ));
          },
        ));
  }
}
