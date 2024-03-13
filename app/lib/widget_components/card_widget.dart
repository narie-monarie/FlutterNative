import 'package:app/core_values/class/card_class.dart';
import 'package:app/core_values/constants.dart';
import 'package:app/pages/description_page.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.card,
  });

  final CardProperties card;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return DescriptionPage(
                card: card,
              );
            },
          ),
        );
      },
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(kDouble10),
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: kDouble5),
              Image.asset(card.imagePath),
              Text(
                card.title,
                style: const TextStyle(
                  fontSize: kDouble25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("Real ${card.title}"),
              const SizedBox(height: kDouble10),
            ],
          ),
        ),
      ),
    );
  }
}
