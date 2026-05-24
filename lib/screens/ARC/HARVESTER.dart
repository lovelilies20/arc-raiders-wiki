import 'package:flutter/material.dart';
import 'SNITCH.dart';
import 'package:provider/provider.dart';
import 'package:arc_raiders/app_language.dart';
import 'package:arc_raiders/app_strings.dart';

class HarvesterScreen extends StatelessWidget {
  const HarvesterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final s = AppStrings.of(context.watch<AppLanguage>());
    return Scaffold(
      backgroundColor: const Color(0xFF0B1C3D),
      appBar: AppBar(
        title: const Text("ARC"),
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
                    "assets/images/harvester.jpg",
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: Text(
                    s.harvester1,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                ArcStatRow(
                  title: s.probe1,
                  value: "ARC",
                ),
                ArcStatRow(
                  title: s.probe2,
                  value: s.probeYes,
                ),
                ArcStatRow(
                  title: s.probe4,
                  value: "19",
                ),
                ArcStatRow(
                  title: s.probe5,
                  value: s.harvester,
                ),
                ArcStatRow(
                  title: s.probe7,
                  value: s.harvester,
                ),
                ArcStatRow(
                  title: "XP",
                  value: "200",
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
