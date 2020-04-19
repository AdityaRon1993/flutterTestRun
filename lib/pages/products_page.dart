import 'package:flutter/material.dart';

class ProductsPage extends StatelessWidget {
  final String title, image;
  ProductsPage(this.title, this.image);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return WillPopScope(
        child: Scaffold(
            appBar: AppBar(title: Text('Product Page')),
            body: Center(
                child: Column(children: [
              Container(
                  padding: EdgeInsets.all(40.0),
                  child: Center(
                    child: Text(title),
                  )),
              Image.asset(image),
              Container(
                  padding: EdgeInsets.all(30),
                  child: RaisedButton(
                      onPressed: () {
                        Navigator.pop(context, true);
                      },
                      child: Text('Delete')))
            ]))),
        onWillPop: () {
          print('trying to leave');
          Navigator.pop(context,false);
          return Future.value(false);
        });
  }
}
