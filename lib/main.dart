import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_library/data/weather_repository.dart';
import 'package:flutter_bloc_library/pages/weather_search_page.dart';

import 'cubit/weather_cubit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bloc library',
      home: BlocProvider(
          create: (context) => WeatherCubit(FakeWeatherRepository()),
          child: WeatherSearchPage()),
    );
  }
}

// class MyState extends ChangeNotifier {
//   final int field1;
//   final String field2;

//   MyState(this.field1, this.field2);
// }

// class MyCubit extends Cubit<MyState> {
//   MyCubit(MyState state) : super(MyState(0,'Initial value'));

//   void changeState() {
//     emit(MyState(0,'New Value'));
//   }

// }
