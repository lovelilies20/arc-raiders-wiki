import 'package:flutter/material.dart';
import 'package:arc_raiders/screens/events/LushBlooms.dart';
import 'package:provider/provider.dart';
import 'package:arc_raiders/app_language.dart';
import 'package:arc_raiders/app_strings.dart';

class ProspectingprobesScreen extends StatelessWidget {
  const ProspectingprobesScreen({super.key});

@override
  Widget build(BuildContext context) {
    final s = AppStrings.of(context.watch<AppLanguage>());
    return Scaffold(
      backgroundColor: const Color(0xFF0B1C3D),
      appBar: AppBar(
        title: Text(s.maps),
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
                    "assets/images/348px-Prospecting_Probes_map_condition.png.WEBP",
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: Text(
                    s.searchProbe,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: Text(
                    s.probeSpecting,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                Center(
                  child: Text(
                    s.difficulty,
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10),

                EveStatRow(
                  title: s.battleDamb,
                  value: "3/5",
                  valueColor: Colors.green,
                ),
                EveStatRow(
                  title: s.buriedCity,
                  value: "4/5",
                  valueColor: Colors.blue,
                ),
                EveStatRow(
                  title: s.spaceport,
                  value: "4/5",
                  valueColor: Colors.blue,
                ),
                EveStatRow(
                  title: s.bluegate,
                  value: "4/5",
                  valueColor: Colors.blue,
                ),
            ],),
          )
        )
      ),
    );
  }
}