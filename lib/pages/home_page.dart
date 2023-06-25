import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ola_mundo/app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int count = 0;
  bool isDartTheme = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 22, 26, 36),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network(
                      'https://yt3.ggpht.com/yti/AHyvSCAA5KFSGBbVXAJPQwTKU37dVaPlnJ4l4rCiGhPYWw=s88-c-k-c0x00ffffff-no-rj-mo')),
              accountName: const Text('Thailson A'),
              accountEmail: const Text('thailson@gmail.com'),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Inicio'),
              subtitle: const Text('Tela de Inicio'),
              onTap: () {
                if (kDebugMode) {
                  print('home');
                }
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              subtitle: const Text('Finalizar sessão'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text(
          'Fala Jhon Doe',
          style: TextStyle(
              fontFamily: 'Fill', fontWeight: FontWeight.w200, fontSize: 20),
        ),
        actions: const [],
        backgroundColor: const Color.fromARGB(255, 22, 26, 36),
        leading: Image.asset('assets/images/perfil.png'),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Contador: $count'),
            const CustomSwitch(),
            Container(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.black,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.green,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(
            () {
              count++;
            },
          );
        },
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
