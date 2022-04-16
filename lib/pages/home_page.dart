import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            //app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //name
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        "Hello,",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      const SizedBox(
                        height: 6.0,
                      ),
                      const Text(
                        "Toto Thii",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      )
                    ],
                  ),

                  //profile picture
                  Container(
                    padding: const EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                        color: Colors.deepPurple[200],
                        borderRadius: BorderRadius.circular(12.0)),
                    child: const Icon(Icons.person),
                  )
                ],
              ),
            ),

            const SizedBox(height: 25.0),
            //card -> how do you feel?

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    color: Colors.pink[200],
                    borderRadius: BorderRadius.circular(12.0)),
                child: Row(children: [
                  // animation or cute picture
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.deepPurple,
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  // how do you feel? + get started button
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "How do you feel?",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),
                        const Text("Fill out your medical card right now",
                            style: TextStyle(fontSize: 14)),
                        const SizedBox(
                          height: 12.0,
                        ),
                        Container(
                          padding: const EdgeInsets.all(12.0),
                          decoration: BoxDecoration(
                              color: Colors.deepPurple[300],
                              borderRadius: BorderRadius.circular(12.0)),
                          child: const Center(
                            child: Text("Get started"),
                          ),
                        )
                      ],
                    ),
                  )
                ]),
              ),
            )

            // search bar

            // horizontal list view -> categories list

            // doctor list
          ],
        ),
      ),
    );
  }
}
