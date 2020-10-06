import 'offer_controller.dart';
import 'package:dio/dio.dart';
import 'repositories/offer_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'offer_page.dart';

class OfferModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $OfferController,
        $OfferRepository,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => OfferPage()),
      ];

  static Inject get to => Inject<OfferModule>.of();
}
