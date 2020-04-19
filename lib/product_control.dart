import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget{
  final Function addProduct;
  final int length;
  ProductControl(this.addProduct,this.length);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
          color: Theme.of(context).accentColor,
            onPressed: () {
              addProduct({'title' : 'myData'+(length+1).toString(), "image" : 'assets/food.jpg'});
            },
            child: Text('Add Product'));
  }
}