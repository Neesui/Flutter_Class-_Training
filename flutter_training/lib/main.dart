import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: "Flutter Training",
      home: HomeWidget(),
    ),
  );
}
class HomeWidget extends StatelessWidget{
const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
          child: Text("Hlo Nisha",style:TextStyle(fontSize: 50, color: Colors.red)),
        ),
      );
  }
  
}

