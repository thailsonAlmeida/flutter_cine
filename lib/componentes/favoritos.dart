import 'dart:html';

import 'package:flutter/material.dart';

class Favoritos extends StatelessWidget {
  const Favoritos({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Container(
                    width: 168,
                    height: 247,
                    color: Colors.blue,
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/bg_films/1.jpg'),
                            fit: BoxFit.contain),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                        height: 20,
                        child: FloatingActionButton.small(
                          backgroundColor:
                              const Color.fromARGB(255, 212, 156, 3),
                          onPressed: () {},
                          child: const Icon(Icons.add),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          )
        ],
      ),
    );
  }
}
