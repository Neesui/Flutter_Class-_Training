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
    return Scaffold(
        body: Center(
          child: Column(
            children: [
              const Text("Hi Nisha",
          style:TextStyle(fontSize: 50, color: Colors.red)
          ),
          Image.network('https://picsum.photos/200',
            height: 60,
            width: 60,
            )],
          )
        ),
      );
  }
  
}

