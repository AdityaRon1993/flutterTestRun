import 'package:flutter/material.dart';

import './home_page.dart';
import './manage-product-sub-pages/create-product.dart';
import './manage-product-sub-pages/manage-product-sub.dart';

class ManageProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return WillPopScope(
        child: DefaultTabController(
            length: 2,
            child: Scaffold(
                drawer: Drawer(
                    child: Column(
                  children: <Widget>[
                    AppBar(
                      title: Text('choose'),
                      automaticallyImplyLeading: false,
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => HomePage()));
                      },
                      title: Text('All Products'),
                    )
                  ],
                )),
                appBar: AppBar(
                    title: Text('Manage Product'),
                    bottom: TabBar(
                      tabs: <Widget>[
                        Tab(text : 'Create Product', icon: Icon(Icons.create)),
                        Tab(text :'Manage Product', icon : Icon(Icons.list))
                      ],
                    )),
                body: Center(
                  child: TabBarView(children: [
                    CreateProductPage(),
                    ManageProductSub()                    
                  ]),
                ))),
        onWillPop: () {
          print('trying to leave');
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (BuildContext context) => HomePage()));
          return Future.value(false);
        });
  }
}
