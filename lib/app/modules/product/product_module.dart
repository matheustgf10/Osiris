import 'product_controller.dart';
import 'package:dio/dio.dart';
import 'repositories/product_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'product_page.dart';

class ProductModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $ProductController,
        $ProductRepository,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => ProductPage()),
      ];

  static Inject get to => Inject<ProductModule>.of();
}
