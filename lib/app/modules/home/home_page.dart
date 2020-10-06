import 'package:easy_search/easy_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:osiris/app/shared/models/Product.dart';
import 'package:osiris/app/shared/pages/bottom_bar/bottom_bar_page.dart';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Inicio"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  List<String> listOfNames = ['Sample', 'Sample2', 'Sample3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 10),
            EasySearch(
              multipleSelect: true,
              searchResultSettings: SearchResultSettings(
                  padding: EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0)),
              controller: SearchItem(
                items: [
                  Item(
                      Product(
                          photo: 'https://picsum.photos/250?image=9',
                          name: 'Computador 1',
                          description: 'R\$ 19,99'),
                      false),
                  Item(
                      Product(
                          photo: 'https://picsum.photos/250?image=9',
                          name: 'Computador 2',
                          description: 'R\$ 19,99'),
                      false),
                  Item(
                      Product(
                          photo: 'https://picsum.photos/250?image=9',
                          name: 'Computador 3',
                          description: 'R\$ 19,99'),
                      false),
                ],
              ),
              customItemBuilder:
                  (BuildContext context, Product product, bool isSelected) {
                return Container(
                  decoration: !isSelected
                      ? null
                      : BoxDecoration(
                          border:
                              Border.all(color: Theme.of(context).primaryColor),
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.white,
                        ),
                  child: ListTile(
                    selected: isSelected,
                    title: Text(product.name),
                    subtitle: Text(product.description),
                    leading: Image.network(product.photo),
                  ),
                );
              },
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: List.generate(2, (index) {
                  return FlatButton(
                    onPressed: () {
                      Modular.to
                          .pushReplacementNamed('/product', arguments: index);
                    },
                    child: Container(
                      child: Column(children: [
                        Image.network(
                          'https://picsum.photos/250?image=9',
                          width: 150,
                          height: 100,
                        ),
                        Text(
                          'Computador ' + (index + 1).toString(),
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Text('R\$ 2999,00',
                            style: Theme.of(context).textTheme.bodyText1),
                      ]),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomBarPage(bottomBarCurrentIndex: 1),
    );
  }
}
