import 'package:flutter/material.dart';

class Calendar extends StatefulWidget {
  static const routeName = '/';

  const Calendar({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _CalendarState();
  }
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('Calendar'),
      ),
    );
  }
}
