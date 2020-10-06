import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'offer_controller.g.dart';

@Injectable()
class OfferController = _OfferControllerBase with _$OfferController;

abstract class _OfferControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
