import 'package:flutter/cupertino.dart';

class CatagoryView extends StatefulWidget {
  CatagoryView({Key? key}) : super(key: key);

  @override
  _CatagoryViewState createState() => _CatagoryViewState();
}

class _CatagoryViewState extends State<CatagoryView> {
  @override
  Widget build(BuildContext context) {
    return Center(
       child: Text("分类组件"),
    );
  }
}