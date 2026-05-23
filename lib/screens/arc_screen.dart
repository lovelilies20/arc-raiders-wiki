import 'package:arc_raiders/screens/ARC/ARC_PROBE.dart';
import 'package:arc_raiders/screens/ARC/BASTION.dart';
import 'package:arc_raiders/screens/ARC/BOMBARDIER.dart';
import 'package:arc_raiders/screens/ARC/COURIER.dart';
import 'package:arc_raiders/screens/ARC/FIREBALL.dart';
import 'package:arc_raiders/screens/ARC/HARVESTER.dart';
import 'package:arc_raiders/screens/ARC/HORNET.dart';
import 'package:arc_raiders/screens/ARC/LEAPER.dart';
import 'package:arc_raiders/screens/ARC/MATRIARCH.dart';
import 'package:arc_raiders/screens/ARC/POP.dart';
import 'package:arc_raiders/screens/ARC/ROCKETEER.dart';
import 'package:arc_raiders/screens/ARC/SENTINEL.dart';
import 'package:arc_raiders/screens/ARC/SHREDDER.dart';
import 'package:arc_raiders/screens/ARC/SNITCH.dart';
import 'package:arc_raiders/screens/ARC/SPOTTER.dart';
import 'package:arc_raiders/screens/ARC/SURVEYOR.dart';
import 'package:arc_raiders/screens/ARC/THE_QUEEN.dart';
import 'package:arc_raiders/screens/ARC/TICK.dart';
import 'package:arc_raiders/screens/ARC/TURRET.dart';
import 'package:arc_raiders/screens/ARC/WASP.dart';
import 'package:flutter/material.dart';
import 'package:arc_raiders/widgets/animated_border.dart';
import 'package:arc_raiders/main.dart';
import 'package:provider/provider.dart';
import 'package:arc_raiders/app_language.dart';
import 'package:arc_raiders/app_strings.dart';

class ArcScreen extends StatefulWidget {
  const ArcScreen({super.key});

  @override
  State<ArcScreen> createState() => _ArcScreenState();
}

class _ArcScreenState extends State<ArcScreen> {
  int selectedIndex = 0;


  @override
  Widget build(BuildContext context) {
    final s = AppStrings.of(context.watch<AppLanguage>());
    final categories = [
    s.arcCatSec,
    s.arcCatInd,
  ];
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 4, 17, 43),
      appBar: AppBar(
        title: Text(s.arc),
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
                "ARC",
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 16),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                s.arcStory,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  height: 1.5,
                ),
              ),
            ),
            const SizedBox(height: 16,),

            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final isSelected = selectedIndex == index;

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 16),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: isSelected ? Colors.white : Colors.white24,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          categories[index],
                          style: TextStyle(
                            color: isSelected ? Colors.white : Colors.white54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            if (selectedIndex == 0) ...[
            MenuButton(title: s.arcWasp, imagePath: "assets/images/WASP.jpg", onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => const WaspScreen(),),);},),
            const SizedBox(height: 12),
            MenuButton(title: s.arcHornet, imagePath: "assets/images/hornet.jpg", onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => const HornetScreen(),),);},),
            const SizedBox(height: 12),
            MenuButton(title: s.arcSnitch, imagePath: "assets/images/snitch.jpg", onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => const SnitchScreen(),),);},),
            const SizedBox(height: 12),
            MenuButton(title: s.arcPop, imagePath: "assets/images/pop.jpg", onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => const PopScreen(),),);},),
            const SizedBox(height: 12),
            MenuButton(title: s.arcFireball, imagePath: "assets/images/fireball.jpg", onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => const FireballScreen(),),);},),
            const SizedBox(height: 12),
            MenuButton(title: s.arcTick, imagePath: "assets/images/tick.jpg", onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => const TickScreen(),),);},),
            const SizedBox(height: 12),
            MenuButton(title: s.arcTurret, imagePath: "assets/images/turret.jpg", onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => const TurretScreen(),),);},),
            const SizedBox(height: 12),
            MenuButton(title: s.arcRocketeer, imagePath: "assets/images/rocketeer.jpg", onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => const RocketeerScreen(),),);},),
            const SizedBox(height: 12),
            MenuButton(title: s.arcLeaper, imagePath: "assets/images/leaper.jpg", onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => const LeaperScreen(),),);},),
            const SizedBox(height: 12),
            MenuButton(title: s.arcBastion, imagePath: "assets/images/bastion.jpg", onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => const BastionScreen(),),);},),
            const SizedBox(height: 12),
            MenuButton(title: s.arcBombardier, imagePath: "assets/images/bombardier.jpg", onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => const BombardierScreen(),),);},),
            const SizedBox(height: 12),
            MenuButton(title: s.arcSpotter, imagePath: "assets/images/spotter.jpg", onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => const SpotterScreen(),),);},),
            const SizedBox(height: 12),
            MenuButton(title: s.arcSentinel, imagePath: "assets/images/sentinel.jpg", onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => const SentinelScreen(),),);},),
            const SizedBox(height: 12),
            MenuButton(title: s.arcShredder, imagePath: "assets/images/shredder.jpg", onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => const ShredderScreen(),),);},),
            const SizedBox(height: 12),
            MenuButton(title: s.arcMatriarch, imagePath: "assets/images/matriarch.jpg", onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => const MatriarchScreen(),),);},),
            const SizedBox(height: 12),
            MenuButton(title: s.arcQueen, imagePath: "assets/images/queen.jpg", onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => const QueenScreen(),),);},),
            const SizedBox(height: 12),
          ],
          if (selectedIndex == 1) ...[
            MenuButton(title: s.arcProbe, imagePath: "assets/images/ARC.jpg", onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => const ProbeScreen(),),);},),
            const SizedBox(height: 12),
            MenuButton(title: s.arcCourier, imagePath: "assets/images/courier.jpg", onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => const CourierScreen(),),);},),
            const SizedBox(height: 12),
            MenuButton(title: s.arcSurveyor, imagePath: "assets/images/surveyor.jpg", onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => const SurveyorScreen(),),);},),
            const SizedBox(height: 12),
            MenuButton(title: s.arcHarvester, imagePath: "assets/images/harvester.jpg", onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => const HarvesterScreen(),),);},),
            const SizedBox(height: 12),
          ],
          ]
        ),
      ),
      ),
    );
  }
}