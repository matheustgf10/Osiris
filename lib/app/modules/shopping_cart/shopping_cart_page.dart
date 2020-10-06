import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:osiris/app/shared/pages/bottom_bar/bottom_bar_page.dart';
import 'shopping_cart_controller.dart';

class ShoppingCartPage extends StatefulWidget {
  final String title;
  const ShoppingCartPage({Key key, this.title = "Carrinho"}) : super(key: key);

  @override
  _ShoppingCartPageState createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState
    extends ModularState<ShoppingCartPage, ShoppingCartController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Column(
          children: [
            ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Column(
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              child: Image.network(
                                'https://i.picsum.photos/id/1080/6858/4574.jpg?hmac=qMYBjROs2Wu589QQXRAYsxDJu4ZuRQ4PKDpb3x_Oouw',
                                width: 150,
                                height: 100,
                              ),
                            ),
                            SizedBox(width: 20),
                            Column(
                              children: [
                                Text('Morangos ' + (index + 1).toString()),
                                Text('R\$ 19,99'),
                              ],
                            ),
                            Spacer(),
                            MaterialButton(
                                onPressed: () {
                                  print('Comprado!');
                                },
                                child: Text('Comprar')),
                          ],
                        ),
                      ),
                    ],
                  );
                }),
            SizedBox(height: 10),
            Row(
              children: [
                Spacer(),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Finalizar Compra'),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomBarPage(
        bottomBarCurrentIndex: 2,
      ),
    );
  }
}
