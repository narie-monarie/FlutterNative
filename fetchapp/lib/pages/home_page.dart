import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<Map<String, dynamic>> fetchRandomJoke() async {
    final response = await http
        .get(Uri.parse("https://official-joke-api.appspot.com/random_joke"));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }

    return throw Exception("Failed to Fetch");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FETCHINGS"),
        centerTitle: true,
      ),
      body: FutureBuilder(
          future: fetchRandomJoke(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            }

            if (snapshot.hasData) {
              final joke = snapshot.data;
              final setup = joke!["setup"];
              final punchline = joke["punchline"];

              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Card(
                      child: Container(
                        padding: const EdgeInsets.all(9.0),
                        child: Column(children: [
                          const SizedBox(
                            height: 5,
                          ),
                          Text('$setup'),
                          Text('$punchline')
                        ]),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        fetchRandomJoke();
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                    ),
                    child: const Text("Generate A Random Joke"),
                  ),
                ],
              );
            } else {
              return const CircularProgressIndicator();
            }
          }),
    );
  }
}
