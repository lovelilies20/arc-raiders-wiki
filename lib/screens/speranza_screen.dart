import 'package:arc_raiders/screens/workshop_screen.dart';
import 'package:flutter/material.dart';
import 'package:arc_raiders/main.dart';
import 'package:provider/provider.dart';
import 'package:arc_raiders/app_language.dart';
import 'package:arc_raiders/app_strings.dart';

class SperanzaScreen extends StatelessWidget {
  const SperanzaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final s = AppStrings.of(context.watch<AppLanguage>());
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 4, 17, 43),
      appBar: AppBar(
        title: Text(s.speranza),
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                s.speranz,
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 22,
                  height: 1.5,
                ),
              ),
            ),

            const SizedBox(height: 20),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                s.speranzStory,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  height: 1.5,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                s.hub,
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 22,
                  height: 1.5,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                s.hubStory,
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
            const SizedBox(height: 20),
          ],
        ),
        ),
      ),
    );
  }
}