import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class BottomBarPage extends StatefulWidget {
  final String title;
  final int bottomBarCurrentIndex;
  const BottomBarPage(
      {Key key, this.title = "BottomBar", this.bottomBarCurrentIndex})
      : super(key: key);

  @override
  _BottomBarPageState createState() => _BottomBarPageState();
}

class _BottomBarPageState extends State<BottomBarPage> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
      items: [
        TabItem(icon: Icons.local_offer_outlined, title: 'Ofertas'),
        TabItem(icon: Icons.home, title: 'Inicio'),
        TabItem(icon: Icons.shopping_cart, title: 'Carrinho'),
        TabItem(icon: Icons.person, title: 'Perfil'),
      ],
      initialActiveIndex:
          widget.bottomBarCurrentIndex ?? 1, //optional, default as 0
      onTap: (int i) {
        switch (i) {
          case 0:
            Modular.to.pushReplacementNamed('/offer');
            break;
          case 1:
            Modular.to.pushReplacementNamed('/home');
            break;
          case 2:
            Modular.to.pushReplacementNamed('/shopping_cart');
            break;
          case 3:
            Modular.to.pushReplacementNamed('/profile');
            break;
          default:
            print('ERROR! Don\'t load this page');
        }
      },
    );
  }
}
