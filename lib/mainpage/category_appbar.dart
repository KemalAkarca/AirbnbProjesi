import 'package:flutter/material.dart';

class CategoryAppbar extends StatefulWidget {
  final String title;
  final bool selected;
  final String resimYol;

  const CategoryAppbar({
    required this.title,
    required this.selected,
    required this.resimYol,
    });

  @override
  State<CategoryAppbar> createState() => _CategoryAppbarState();
}

class _CategoryAppbarState extends State<CategoryAppbar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 45, 
          width: 45,
          child: Image.asset("resimyolu",
          fit: BoxFit.cover,),
        ),
        const SizedBox(height: 4,),
        Text(
          widget.title,
          style: TextStyle(

          ),
        ),
      ],
    );
  }
}
