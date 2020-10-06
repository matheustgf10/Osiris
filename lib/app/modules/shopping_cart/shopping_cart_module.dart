import 'package:dio/dio.dart';
import 'repositories/shopping_cart_repository.dart';
import 'shopping_cart_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'shopping_cart_page.dart';

class ShoppingCartModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $ShoppingCartRepository,
        $ShoppingCartController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => ShoppingCartPage()),
      ];

  static Inject get to => Inject<ShoppingCartModule>.of();
}
