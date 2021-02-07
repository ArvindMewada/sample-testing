import 'package:flutter/material.dart';
import 'package:sample/DataModel/ProductDataModel.dart';
import 'package:sample/Widgets/HomeWidgets.dart';

class DetailsScreen extends StatelessWidget {
  final ProductDataModel productDataModel;

  const DetailsScreen({Key key, this.productDataModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${productDataModel.title}"),
        elevation: 16,
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("${productDataModel.title}"),
              SizedBox(
                height: 8,
              ),
              Text("${productDataModel.description}"),
            ],
          ),
        ),
      ),
    );
  }
}

