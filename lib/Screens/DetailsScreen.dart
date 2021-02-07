import 'package:flutter/material.dart';
import 'package:sample/DataModel/ProductDataModel.dart';
import 'package:sample/Widgets/HomeWidgets.dart';

class DetailsScreen extends StatefulWidget {
  static String routeName = "details-screen";
  final ProductDataModel productDataModel;

  const DetailsScreen({Key key, this.productDataModel}) : super(key: key);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      valueSetWidget(context);
    });
  }

  //default text sho if in case any error in titlt, description
  String titleShow = "-", descriptionShow = "";

  void valueSetWidget(BuildContext context) {
    if (mounted) {
      setState(() {
        if (widget != null && widget.productDataModel != null) {
          if (widget.productDataModel.title != null &&
              widget.productDataModel.title.toString().length > 0) {
            titleShow = widget.productDataModel.title.toString();
          } else if (widget.productDataModel.description != null &&
              widget.productDataModel.description.toString().length > 0) {
            descriptionShow = widget.productDataModel.description.toString();
          }
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("$titleShow"),
              SizedBox(
                height: 8,
              ),
              Text("$descriptionShow"),
            ],
          ),
        ),
      ),
    );
  }
}
