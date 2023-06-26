import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ola_mundo/app_controller.dart';
import 'package:ola_mundo/componentes/build_app_bar.dart';
import 'package:ola_mundo/componentes/favoritos.dart';
import 'package:ola_mundo/componentes/search_box_app.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  bool isDartTheme = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: builderAppBarAPP(),
      backgroundColor: const Color.fromARGB(255, 22, 26, 36),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          children: [
            searchBoxApp(),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 30, bottom: 20),
                    child: Container(
                      color: const Color.fromARGB(255, 67, 115, 240),
                      child: const Text(
                        'Favoritos',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w100,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  const Favoritos(),
                ],
              ),
            ),
            /*SizedBox(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 168,
                        height: 247,
                        color: Colors.blue,
                        child: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/bg_films/2.jpg'),
                                fit: BoxFit.contain),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 168,
                        height: 247,
                        color: Colors.blue,
                        child: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/bg_films/3.jpg'),
                                fit: BoxFit.contain),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 168,
                        height: 247,
                        color: Colors.blue,
                        child: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/bg_films/4.jpg'),
                                fit: BoxFit.contain),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 168,
                        height: 247,
                        color: Colors.blue,
                        child: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/bg_films/5.jpg'),
                                fit: BoxFit.contain),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 168,
                        height: 247,
                        color: Colors.blue,
                        child: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/bg_films/6.jpg'),
                                fit: BoxFit.contain),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 168,
                        height: 247,
                        color: Colors.blue,
                        child: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/bg_films/7.jpg'),
                                fit: BoxFit.contain),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 168,
                        height: 247,
                        color: Colors.blue,
                        child: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/bg_films/8.jpg'),
                                fit: BoxFit.contain),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 168,
                        height: 247,
                        color: Colors.blue,
                        child: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/bg_films/9.jpg'),
                                fit: BoxFit.contain),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 168,
                        height: 247,
                        color: Colors.blue,
                        child: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/bg_films/10.jpg'),
                                fit: BoxFit.contain),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 168,
                        height: 247,
                        color: Colors.blue,
                        child: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/bg_films/11.jpg'),
                                fit: BoxFit.contain),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  )
                ],
              ),
            ),*/
          ],
        ),
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 22, 26, 36),
        child: IconTheme(
          data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  iconSize: 40,
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/home');
                  },
                  icon: const Icon(Icons.home_filled),
                ),
                IconButton(
                  iconSize: 40,
                  onPressed: () {},
                  icon: const Icon(Icons.person_2_rounded),
                ),
                IconButton(
                  iconSize: 40,
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/');
                  },
                  icon: const Icon(Icons.logout_rounded),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.isDartTheme,
        onChanged: (value) {
          AppController.instance.changeTheme();
        });
  }
}
