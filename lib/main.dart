import 'package:arc_raiders/screens/arc_screen.dart';
import 'package:arc_raiders/screens/weapon_or_load_screen.dart';
import 'package:arc_raiders/screens/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app_language.dart';
import 'app_strings.dart';
import 'screens/history_screen.dart';
import 'screens/speranza_screen.dart';
import 'screens/maps_screen.dart';
import 'package:arc_raiders/widgets/animated_border.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => AppLanguage(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final lang = context.watch<AppLanguage>();
    final s = AppStrings.of(lang);

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 4, 17, 43),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "ARC RAIDERS",
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 40),
                MenuButton(
                  title: s.history,
                  imagePath: "assets/images/history.jpg",
                  onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const HistoryScreen())),
                ),
                const SizedBox(height: 12),
                MenuButton(
                  title: s.speranza,
                  imagePath: "assets/images/speranza.jpg",
                  onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const SperanzaScreen())),
                ),
                const SizedBox(height: 12),
                MenuButton(
                  title: s.arc,
                  imagePath: "assets/images/ARC.jpg",
                  onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const ArcScreen())),
                ),
                const SizedBox(height: 12),
                MenuButton(
                  title: s.weapons,
                  imagePath: "assets/images/brulleta.jpg",
                  onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const WeaponOrLoadScreen())),
                ),
                const SizedBox(height: 12),
                MenuButton(
                  title: s.maps,
                  imagePath: "assets/images/Spaceport.png",
                  onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const MapsScreen())),
                ),
                const SizedBox(height: 12),
                MenuButton(
                  title: s.settings,
                  imagePath: "assets/images/Looting_Mk3_Safekeeper_Ability_Icon.png",
                  onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const SettingsScreen())),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  final String title;
  final String imagePath;
  final VoidCallback onTap;

  const MenuButton({
    Key? key,
    required this.title,
    required this.imagePath,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBorder(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Material(
          color: const Color.fromARGB(255, 1, 1, 36),
          child: InkWell(
            onTap: onTap,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            child: Container(
              height: 80,
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      imagePath,
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


/*import 'package:arc_raiders/screens/arc_screen.dart';
import 'package:arc_raiders/screens/weapon_or_load_screen.dart';
import 'package:flutter/material.dart';
import 'screens/history_screen.dart';
import 'screens/speranza_screen.dart';
import 'screens/weapons_screen.dart';
import 'screens/maps_screen.dart';
import 'package:arc_raiders/widgets/animated_border.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 4, 17, 43),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
             children: [
              const Text("ARC RAIDERS",
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 26,
                fontWeight:  FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            MenuButton(title: "ИСТОРИЯ", imagePath:"assets/images/history.jpg",onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => const HistoryScreen(),),);},),
            const SizedBox(height: 12),
            MenuButton(title: "СПЕРАНЦА",imagePath: "assets/images/speranza.jpg",onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => const SperanzaScreen(),),);},),
            const SizedBox(height: 12),
            MenuButton(title: "ARC",imagePath: "assets/images/ARC.jpg",onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const ArcScreen(),),);},),
            const SizedBox(height: 12),
            MenuButton(title: "ОРУЖИЕ / СНАРЯЖЕНИЕ",imagePath: "assets/images/brulleta.jpg",onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const WeaponOrLoadScreen(),),);},),
            const SizedBox(height: 12),
            MenuButton(title: "КАРТЫ / СОБЫТИЯ",imagePath: "assets/images/history.jpg",onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const MapsScreen(),),);},),
            const SizedBox(height: 12),
            ],
          ),
        ),
      ),
      ),
    );
  }
}
class MenuButton extends StatelessWidget {
  final String title;
  final String imagePath;
  final VoidCallback onTap;

  const MenuButton({
    Key? key,
    required this.title,
    required this.imagePath,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBorder(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Material(
          color: const Color.fromARGB(255, 1, 1, 36),
          child: InkWell(
            onTap: onTap,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            child: Container(
              height: 80,
              child: Row(
                children: [
                  ///  КАРТИНКА СЛЕВА
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      imagePath,
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),

                  const SizedBox(width: 16),

                  ///  ТЕКСТ
                  Expanded(
                    child: Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
} */