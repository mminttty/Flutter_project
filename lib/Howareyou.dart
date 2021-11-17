import 'package:flutter/material.dart';

class Howareyou extends StatefulWidget {
  static const routeName = '/';

  const Howareyou({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _HowareyouState();
  }
}

class _HowareyouState extends State<Howareyou> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('How are you'),
      ),
    );
  }
}
