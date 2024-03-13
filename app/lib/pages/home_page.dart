import 'package:app/core_values/class/card_class.dart';
import 'package:app/widget_components/card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardWidget(
              card: CardProperties(
                title: "Flutter Developer",
                imagePath: 'images/3.png',
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: CardWidget(
                      card: CardProperties(
                    title: "Elixir Developer",
                    imagePath: "images/5.png",
                  )),
                ),
                Expanded(
                  child: CardWidget(
                    card: CardProperties(
                      title: "Rails Developer",
                      imagePath: "images/7.png",
                    ),
                  ),
                ),
              ],
            ),
            CardWidget(
              card: CardProperties(
                title: "Ocaml developer",
                imagePath: "images/4.png",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
