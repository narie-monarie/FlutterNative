import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello"),
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.red,
            height: 120,
            width: 130,
          )
        ],
      ),
    );
  }
}
