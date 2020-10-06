import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'offer_controller.dart';

class OfferPage extends StatefulWidget {
  final String title;
  const OfferPage({Key key, this.title = "Offer"}) : super(key: key);

  @override
  _OfferPageState createState() => _OfferPageState();
}

class _OfferPageState extends ModularState<OfferPage, OfferController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
