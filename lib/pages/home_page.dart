import './manage-product.dart';

import './../product_manager.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final Map<String, String> product = {
    'title': '1 product',
    'image': 'assets/food.jpg'
  };
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        drawer: Drawer(
            child: Column(
          children: <Widget>[
            AppBar(automaticallyImplyLeading: false, title: Text('choose')),
            ListTile(
              title: Text('manage Product'),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            ManageProductPage()));
              },
            )
          ],
        )),
        appBar: AppBar(title: Text('Easy List')),
        body: ProductManger(initialProductValue: product));
  }
}
