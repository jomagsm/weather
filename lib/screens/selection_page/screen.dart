import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatther2/screens/selection_page/widgets/content.dart';
import 'bloc/selected_city_bloc.dart';
import 'widgets/hourly_list.dart';
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
              error: (message) => Center(
                child: Text(message.toString()),
              ),
              orElse: () => Center(child: CircularProgressIndicator()),
              loading: (_) => Center(child: CircularProgressIndicator()),
              initial: (_) => Scaffold(
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
                        onSubmitted: (value) {
                          String city = convertToTitleCase(value);
                          context.read<SelectedCityBloc>()
                            ..add(SelectedCityEvent.selectedView(city: city));
                        },
                      ),
                    ),
                  ),
                ),
              ),
              data: (_data) => Scaffold(
                appBar: AppBar(
                  centerTitle: true,
                  leading: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                    ),
                    onPressed: () {
                      context.read<SelectedCityBloc>()
                        ..add(SelectedCityEvent.initail());
                    },
                  ),
                  title: Text(_data.city.name),
                  backgroundColor: Colors.transparent,
                ),
                backgroundColor:
                    getBackground(_data.weather.hourly[0].weather[0].id),
                body: SingleChildScrollView(
                  child: SafeArea(
                    child: Center(
                      child: Column(
                        children: [
                          Content(
                            weather: _data.weather,
                            city: _data.city,
                          ),
                          HourlyList(
                            hourly: _data.weather.hourly,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ));
  }
}
