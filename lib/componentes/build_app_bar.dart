import 'package:flutter/material.dart';

AppBar builderAppBarAPP() {
  return AppBar(
    centerTitle: true,
    backgroundColor: const Color.fromARGB(255, 22, 26, 36),
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          children: [
            Text(
              'Fala Jhon Doe',
              style: TextStyle(
                  fontFamily: 'Fill',
                  fontWeight: FontWeight.w200,
                  fontSize: 20),
            ),
            Text(
              'Deixe salvo aqui seus filmes favoritos',
              style: TextStyle(
                  fontFamily: 'Fill',
                  fontWeight: FontWeight.w200,
                  fontSize: 10),
            ),
          ],
        ),
        Column(
          children: [
            SizedBox(
              height: 40,
              width: 40,
              child: ClipRect(
                child: Image.asset('assets/images/perfil.png'),
              ),
            )
          ],
        )
      ],
    ),
    elevation: 0,
    toolbarHeight: 100,
  );
}
