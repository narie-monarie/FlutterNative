import 'package:all_widgets/pages/home_items.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //logo
          Padding(
            padding: const EdgeInsets.only(
                left: 80.0, right: 80, bottom: 20, top: 120),
            child: Image.asset('lib/images/1.png'),
          ),
          //We Deliver to your door step
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              "We Deliver Groceries at Your DoorStep",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Text(
            "We Deliver it Fresh",
            style: TextStyle(color: Colors.black),
          ),
          const Spacer(),
          //get Started
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const HomeItems();
                },
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(7.0),
              ),
              padding: const EdgeInsets.all(12),
              child: const Text(
                "Get Started",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
