import 'package:flutter/material.dart';
import 'SNITCH.dart';

class HarvesterScreen extends StatelessWidget {
  const HarvesterScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                const Center(
                  child: Text(
                    "Сборщик ARC",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                const ArcStatRow(
                  title: "Тип добычи",
                  value: "ARC",
                ),
                const ArcStatRow(
                  title: "Должно быть взломано",
                  value: "Да",
                ),
                const ArcStatRow(
                  title: "Раздел(ы)",
                  value: "19",
                ),
                const ArcStatRow(
                  title: "Только для событий",
                  value: "Да (Сборщик)",
                ),
                const ArcStatRow(
                  title: "Присутствие в событиях",
                  value: "Да (Сборщик)",
                ),
                const ArcStatRow(
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
