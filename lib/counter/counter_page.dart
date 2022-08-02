import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reactive_counter_sn/appbar_color/appbar_color_controller.dart';
import 'package:reactive_counter_sn/appbar_color/appbar_color_state.dart';
import 'package:reactive_counter_sn/counter/counter_controller.dart';
import 'package:reactive_counter_sn/rank/rank_controller.dart';

import 'counter_state.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appBarBackColor = context.watch<AppBarColorState>().backColor;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarBackColor,
        title: const Text('Statenotifier(Reactive) Example'),
        actions: [
          IconButton(
              onPressed: () {
                context.read<AppBarColorController>().changeBackColor();
              },
              icon: const Icon(Icons.color_lens)),
        ],
      ),
      backgroundColor: _buildBackColor(context),
      body: _buildContent(context),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CounterController>().increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    final counter = context.watch<CounterState>().counter;
    return Center(
      child: Text(
        '$counter',
        style: Theme.of(context).textTheme.headline2,
      ),
    );
  }

  Color _buildBackColor(BuildContext context) {
    final currentRank = context.watch<RankStatus>();

    switch (currentRank) {
      case RankStatus.silver:
        return Colors.grey;
      case RankStatus.gold:
        return Colors.yellow;
      default:
        return Colors.orangeAccent;
    }
  }
}
