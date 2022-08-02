import 'package:reactive_counter_sn/counter/counter_state.dart';
import 'package:state_notifier/state_notifier.dart';

enum RankStatus { bronze, silver, gold }

class RankController extends StateNotifier<RankStatus> with LocatorMixin {
  RankController() : super(RankStatus.bronze);

  @override
  void update(Locator watch) {
    super.update(watch);

    final counterState = watch<CounterState>();

    if (counterState.counter >= 50) {
      state = RankStatus.silver;
    }
    if (counterState.counter >= 100) {
      state = RankStatus.gold;
    }
  }
}
