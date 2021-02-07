import 'package:flutter/material.dart';
import 'package:sample/DataModel/ProductDataModel.dart';
import 'package:sample/Widgets/DetailsScreenWidget.dart';

class ProductList extends StatelessWidget {
  final List<dynamic> productList;

  ProductList({Key key, this.productList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: productList == null ? 0 : productList.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(productDataModel: productList[index],),
                ),
              );
            },
            child: new Card(
              child: new Container(
                child: new Center(
                    child: new Column(
                  // Stretch the cards in horizontal axis
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    new Text(
                      // Read the name field value and set it in the Text widget
                      productList[index].title,
                      // set some style to text
                      style: new TextStyle(
                          fontSize: 20.0, color: Colors.lightBlueAccent),
                    ),
                    new Text(
                      // Read the name field value and set it in the Text widget
                      productList[index].description,
                      // set some style to text
                      style: new TextStyle(fontSize: 20.0, color: Colors.amber),
                    ),
                  ],
                )),
                padding: const EdgeInsets.all(15.0),
              ),
            ),
          );
        });
  }
}
