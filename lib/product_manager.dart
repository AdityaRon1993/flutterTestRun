import 'package:flutter/material.dart';

import 'product_control.dart';
import 'products.dart';

class ProductManger extends StatefulWidget {
  final Map initialProductValue;
  ProductManger({this.initialProductValue});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductManager();
  }
}

class _ProductManager extends State<ProductManger> {
  List<Map> _products = [];
  @override
  void initState() {
    // TODO: implement initState
    print(widget.initialProductValue);
    if (widget.initialProductValue != null) {
      _products.add(widget.initialProductValue);
      super.initState();
    }
  }

  void _addProduct(param) {
    setState(() {
      _products.add(param);
      print(_products);
    });
  }
  void _deleteProduct(index){
    setState(() {
      _products.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Container(
            margin: EdgeInsets.all(10.0),
            child: ProductControl(_addProduct, _products.length)),
        Expanded(child: Products(_products, deleteProduct : _deleteProduct))
      ],
    );
  }
}
