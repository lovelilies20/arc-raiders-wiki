import 'package:flutter/material.dart';
import 'SNITCH.dart';

class SurveyorScreen extends StatelessWidget {
  const SurveyorScreen({super.key});

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
                    "assets/images/surveyor.jpg",
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 20),

                const Center(
                  child: Text(
                    "Наблюдатель",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                const ArcStatRow(
                  title: "Уровень угрозы",
                  value: "Низкий",
                ),
                const ArcStatRow(
                  title: "Броня",
                  value: "Тяжелый",
                  valueColor: Colors.blueAccent,
                ),
                const ArcStatRow(
                  title: "Основная атака",
                  value: "Таран",
                ),
                const ArcStatRow(
                  title: "Способности",
                  value: "Нет",
                ),
                const ArcStatRow(
                  title: "Слабость",
                  value: "Ядро",
                ),
                const ArcStatRow(
                  title: "Полученный опыт",
                  value: "Уничтожение: +200 Опыта\nПоиск +300 XP",
                ),
                const ArcStatRow(
                  title: "Здоровье",
                  value: "257",
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
