import 'package:flutter/material.dart';

class TabsElemanlari extends StatefulWidget {
  final String title;
  final String resimyolu;

  TabsElemanlari({required this.title, required this.resimyolu});

  @override
  State<TabsElemanlari> createState() => _TabsElemanlariState();
}

class _TabsElemanlariState extends State<TabsElemanlari> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            height: 120,
            width: 120,
            child: Image.asset((widget.resimyolu).toString())),
        SizedBox(
          height: 3,
        ),
        Text(
          widget.title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
