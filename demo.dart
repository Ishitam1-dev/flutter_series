import 'package:flutter/material.dart';

class DemoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "add card",
        child: Icon(Icons.add),
      ),
      backgroundColor: const Color.fromARGB(255, 217, 248, 248),
      appBar: AppBar(centerTitle: true, title: Text('demo of all widgets')),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          color: const Color.fromARGB(136, 245, 169, 169),
          child: Column(
            children: [
              Padding(padding: EdgeInsetsGeometry.all(10)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.person, size: 50),
                  Text('Admin', style: TextStyle(fontSize: 20)),
                ],
              ),
              SizedBox(height: 50),
              Text(
                'NAME  : ISHITA MAKADIYA',
                style: TextStyle(
                  fontSize: 16,
                  color: const Color.fromARGB(255, 23, 143, 241),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontSize: 14,
                  color: const Color.fromARGB(255, 39, 70, 248),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
