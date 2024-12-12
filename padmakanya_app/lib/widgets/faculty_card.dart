import 'package:flutter/material.dart';

class Facultycard extends StatelessWidget {
  const Facultycard({
    super.key,
    required  this.text,
    });
final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 137,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xff000B58),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Image.asset("assets/pklogo.jpg",
          width: 70,
          ),
          SizedBox(height: 6),
          Text(text, style: TextStyle(
            color: Colors.white,
          ),)
        ]
      ),
    );
  }
}