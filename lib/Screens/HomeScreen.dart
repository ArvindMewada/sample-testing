import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sample/DataModel/ProductDataModel.dart';
import 'package:sample/Widgets/HomeWidgets.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "home-screen";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<ProductDataModel> productList = [];
  List data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Home Screen"),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: _buildProductList(context),
        ),
      ),
    );
  }

  Widget _buildProductList(BuildContext context) {
    return new FutureBuilder(
        future: getCountryFromJson(context),
        builder: (context, snapshot) {
          List<ProductDataModel> productList = snapshot.data;
          return productList.isNotEmpty
              ? ProductList(
                  productList: productList,
                )
              : new Center(child: new CircularProgressIndicator());
        });
  }


  Future<List<ProductDataModel>> getCountryFromJson(BuildContext context) async {
    String jsonString =
    await DefaultAssetBundle.of(context).loadString('assets/product.json');
    List<dynamic> raw = jsonDecode(jsonString);
    return raw.map((e) => ProductDataModel.fromJson(e)).toList();
  }
}
