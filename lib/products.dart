import 'package:flutter/material.dart';

import './pages/products_page.dart';

class Products extends StatelessWidget {
  final List<Map> products;
  final Function deleteProduct;
  Products(this.products, {this.deleteProduct});

  // @override
  Widget _buildProductItems(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['image']),
          Text(products[index]['title']),
          Center(
            child: RaisedButton(
              child: Text('See Product'),
              onPressed: () => Navigator.push<bool>(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => ProductsPage(
                        products[index]['title'], products[index]['image'])),
              ).then((bool onValue) {
                print(onValue);
                if (onValue) {
                  deleteProduct(index);
                }
              }),
            ),
          ),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    // TODO: implement build

    return (products.length > 0)
        ? ListView.builder(
            itemBuilder: _buildProductItems,
            itemCount: products.length,
          )
        : Center(
            child: Text('no data Found'),
          );
  }
}
