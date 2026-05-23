import 'package:flutter/material.dart';
import 'SNITCH.dart';

class MatriarchScreen extends StatelessWidget {
  const MatriarchScreen({super.key});

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
                    "assets/images/matriarch.jpg",
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 20),

                const Center(
                  child: Text(
                    "Матриарх",
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
                  value: "Экстремальный",
                  valueColor: Colors.yellowAccent,
                ),
                const ArcStatRow(
                  title: "Броня",
                  value: "Тяжелый",
                  valueColor: Colors.blueAccent,
                ),
                const ArcStatRow(
                  title: "Основная атака",
                  value: "Ракетный бой",
                ),
                const ArcStatRow(
                  title: "Способности",
                  value: "Газовые гранаты,  светошумовые\nгранаты,\nэнергетический щит,призыв ARC",
                ),
                const ArcStatRow(
                  title: "Слабость",
                  value: "Суставы ног, Ядро",
                ),
                const ArcStatRow(
                  title: "Полученный опыт",
                  value: "Уничтожение: +1000 Опыта\nПоиск +500 XP",
                ),
                const ArcStatRow(
                  title: "Здоровье",
                  value: "27000",
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
