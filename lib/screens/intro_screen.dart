import 'package:flutter/material.dart';
import '../shared/menu_drawer.dart';
import '../shared/menu_bottom.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Globo Fitness')),
        drawer: const MenuDrawer(),
        bottomNavigationBar: const MenuBottom(),
        body: Container(
          decoration: const BoxDecoration(
              image: const DecorationImage(
                  image: const AssetImage('assets/liverpool.jpg'),
                  fit: BoxFit.cover)),
          child: Center(
              child: Container(
            padding: const EdgeInsets.all(24),
            decoration: const BoxDecoration(
              borderRadius: const BorderRadius.all(const Radius.circular(20)),
              color: Colors.white70,
            ),
            child: const Text('Commit to be fit',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 22,
                  shadows: [
                    Shadow(
                        offset: Offset(1.0, 1.0),
                        blurRadius: 2.0,
                        color: Colors.grey)
                  ],
                )),
          )),
        ));
  }
}
