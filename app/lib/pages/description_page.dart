import 'package:app/core_values/class/card_class.dart';
import 'package:app/core_values/constants.dart';
import 'package:flutter/material.dart';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({super.key, required this.card});

  final CardProperties card;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(card.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Center(
                child: Image.asset(card.imagePath, width: 200.0),
              ),
              Text(
                card.title,
                style: const TextStyle(
                  fontSize: kDouble35,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  baconDescription,
                  style: TextStyle(fontSize: kDouble20),
                  textAlign: TextAlign.justify,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  baconDescription,
                  style: TextStyle(fontSize: kDouble20),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
