import 'package:flutter/material.dart';

//Stateless are Immutable while Stateful are mutable
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FLUTTER MAP"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              child: Container(
                padding: const EdgeInsets.all(8.0),
                width: double.infinity,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    Image.asset('images/cherry-916.png'),
                    const Text(
                      "Space Weather",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text("Description")
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Card(
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      height: 170,
                      child: Image.asset('images/cherry-149.png'),
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      height: 170,
                      child: Image.asset('images/cherry-703.png'),
                    ),
                  ),
                ),
              ],
            ),
            Card(
              child: Container(
                padding: const EdgeInsets.all(8.0),
                width: double.infinity,
                height: 300.0,
                child: Image.asset('images/cherry-79.png'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
