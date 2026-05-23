import 'package:arc_raiders/screens/granade_screen.dart';
import 'package:arc_raiders/screens/loadout_screen.dart';
import 'package:arc_raiders/screens/weapons_screen.dart';
import 'package:flutter/material.dart';
import 'package:arc_raiders/main.dart';

class WeaponOrLoadScreen extends StatelessWidget {
  const WeaponOrLoadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 4, 17, 43),
      appBar: AppBar(
        title: const Text("Оружие/Снаряжение"),
        backgroundColor: const Color.fromARGB(255, 234, 247, 60),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
            ),
            const SizedBox(height: 20),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Оружие",
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 22,
                  height: 1.5,
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Оружие - стреляющее боеприпасами, основанными на снарядах или энергии. Рейдеры используют оружие для атаки и защиты от ARC и друг друга.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  height: 1.5,
                ),
              ),
            ),
            const SizedBox(height: 20),

            const SizedBox(height: 20),

            const SizedBox(height: 12),
            MenuButton(title: "Оружие", imagePath: "assets/images/tempest.jpg", onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => const WeaponsScreen(),),);},),
            const SizedBox(height: 12),
            MenuButton(title: "Гранаты", imagePath: "assets/images/Wolfpack.png", onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => const GranadeScreen(),),);},),
            const SizedBox(height: 12),
            MenuButton(title: "Снаряжение", imagePath: "assets/images/Looting_Mk._3_(Safekeeper) copy.png", onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => const LoadoutScreen(),),);},),
          ],
            ),
        ),
      ),
    );
  }
}