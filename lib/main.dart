import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:reactive_counter_sn/appbar_color/appbar_color_controller.dart';
import 'package:reactive_counter_sn/appbar_color/appbar_color_state.dart';
import 'package:reactive_counter_sn/counter/counter_controller.dart';
import 'package:reactive_counter_sn/counter/counter_page.dart';

import 'counter/counter_state.dart';
import 'rank/rank_controller.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StateNotifierProvider<AppBarColorController, AppBarColorState>(
            create: (_) => AppBarColorController()),
        StateNotifierProvider<CounterController, CounterState>(
            create: (_) => CounterController()),
        StateNotifierProvider<RankController, RankStatus>(
            create: (_) => RankController()),
      ],
      child: const MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        home: CounterPage(),
      ),
    );
  }
}
