import 'package:arc_raiders/screens/events/CloseScrutiny.dart';
import 'package:arc_raiders/screens/events/ColdSnap.dart';
import 'package:arc_raiders/screens/events/Hurricane.dart';
import 'package:arc_raiders/screens/events/HuskGraveyard.dart';
import 'package:arc_raiders/screens/events/LushBlooms.dart';
import 'package:arc_raiders/screens/events/NightRaid.dart';
import 'package:arc_raiders/screens/events/ProspectingProbes.dart';
import 'package:arc_raiders/screens/events/UncoveredCaches.dart';
import 'package:flutter/material.dart';
import 'package:arc_raiders/screens/maps/Dam_Battlegrounds.dart';
import 'package:provider/provider.dart';
import 'package:arc_raiders/app_language.dart';
import 'package:arc_raiders/app_strings.dart';

class BuriedCityScreen extends StatelessWidget {
  const BuriedCityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final s = AppStrings.of(context.watch<AppLanguage>());
    return Scaffold(
      backgroundColor: const Color(0xFF0B1C3D),
      appBar: AppBar(
        title: Text(s.buriedCity),
        backgroundColor: const Color.fromARGB(255, 234, 247, 60),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 2, 8, 35),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                  child: Image.asset(
                    "assets/images/Buried_City.png",
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: Text(
                    s.buriedCity,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const SizedBox(height: 20),

                MapsStatRow(
                  title: s.event,
                  value: s.difficulty,
                  valueColor: Colors.grey,
                ),

                MapsStatRow(
                  title: s.inevent,
                  value: "4/5",
                  valueColor: Colors.white,
                ),

                Column(
                  children: [
                    _buildDifficultyLink(
                      context,
                      s.lushblooms,
                      LushbloomsScreen(),
                      "4/5",
                    Colors.white,
                    ),
                    _buildDifficultyLink(
                      context,
                      s.uncoveredcaches,
                      UncoveredcachesScreen(),
                      "4/5",
                    Colors.white,
                    ),
                    _buildDifficultyLink(
                      context,
                      s.searchProbe,
                      ProspectingprobesScreen(),
                      "3/5",
                    Colors.white,
                    ),
                    _buildDifficultyLink(
                      context,
                      s.huskgraveyard,
                      HuskgraveyardScreen(),
                      "4/5",
                    Colors.white,
                    ),
                    _buildDifficultyLink(
                      context,
                      s.nightraid,
                      NightraidScreen(),
                      "5/5",
                    Colors.pink,
                    ),
                    _buildDifficultyLink(
                      context,
                      s.coldsnap,
                      ColdsnapScreen(),
                      "5/5",
                    Colors.pink,
                    ),
                    _buildDifficultyLink(
                      context,
                      s.hurricane,
                      HurricaneScreen(),
                      "5/5",
                    Colors.pink,
                    ),
                    _buildDifficultyLink(
                      context,
                      s.closescrutiny,
                      ClosescrutinyScreen(),
                      "5/5",
                    Colors.pink,
                    ),
                  ],
                ),
                const SizedBox(height: 25),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (_) {
                          return Dialog(
                            backgroundColor: Colors.transparent,
                            insetPadding: const EdgeInsets.all(10),
                            child: InteractiveViewer(
                              minScale: 0.5,
                              maxScale: 4,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  "assets/images/Buried_City_Map.jpg",
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },

                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        "assets/images/Buried_City_Map.jpg",
                        width: double.infinity,
                        height: 220,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildDifficultyLink(
  BuildContext context,
  String title,
  Widget page,
  String level,
  Color color,
) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 14,vertical: 10,),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => page,
              ),
            );
          },
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.blue,
              fontSize: 20,
            ),
          ),
        ),

        Text(
          level,
          style: TextStyle(
            color: color,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}