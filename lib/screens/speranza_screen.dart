import 'package:arc_raiders/screens/workshop_screen.dart';
import 'package:flutter/material.dart';
import 'package:arc_raiders/main.dart';

class SperanzaScreen extends StatelessWidget {
  const SperanzaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 4, 17, 43),
      appBar: AppBar(
        title: const Text("СПЕРАНЦА"),
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
                "Сперанца",
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
                "Сперанса - самый старый район Толедо, и это ваш новый дом. Это обзор различных действий, активностей и людей, которых вы можете встретить в Сперансе.\n"
                "______________________________________________",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  height: 1.5,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Главный хаб",
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
                "Главный Хаб - это место, где вы можете выбрать, какую карту развернуть на Верхней части и где можно набрать других рейдеров, чтобы быть вместе во время рейдов.\n"
                "______________________________________________",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  height: 1.5,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Мастерская",
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 22,
                  height: 1.5,
                ),
              ),
            ),
            const SizedBox(height: 20),
            MenuButton(title: "Мастерская", imagePath: "assets/images/Workshop.png", onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => const WorkshopScreen(),),);},),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "______________________________________________",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  height: 1.5,
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
        ),
      ),
    );
  }
}