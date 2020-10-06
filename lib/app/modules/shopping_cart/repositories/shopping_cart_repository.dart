import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/native_imp.dart';

part 'shopping_cart_repository.g.dart';

@Injectable()
class ShoppingCartRepository extends Disposable {
  final DioForNative client;

  ShoppingCartRepository(this.client);

  Future fetchPost() async {
    final response =
        await client.get('https://jsonplaceholder.typicode.com/posts/1');
    return response.data;
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
