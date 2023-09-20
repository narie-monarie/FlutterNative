import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bloc Pattern"),
        centerTitle: true,
        elevation: 0.0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
