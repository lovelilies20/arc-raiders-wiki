import 'package:flutter/material.dart';
import 'SNITCH.dart';

class QueenScreen extends StatelessWidget {
  const QueenScreen({super.key});

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
                    "assets/images/queen.jpg",
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 20),

                const Center(
                  child: Text(
                    "Королева",
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
                  valueColor: Colors.yellow,
                ),
                const ArcStatRow(
                  title: "Броня",
                  value: "Тяжелая",
                  valueColor: Colors.blueAccent,
                ),
                const ArcStatRow(
                  title: "Основная атака",
                  value: "Минометный огонь",
                ),
                const ArcStatRow(
                  title: "Способности",
                  value: "Лазеры из глаз\nУдар о землю\nЭлектромагнитный импульс",
                ),
                const ArcStatRow(
                  title: "Слабость",
                  value: "Суставы ног, ядро",
                ),
                const ArcStatRow(
                  title: "Полученный опыт",
                  value: "Уничтожение: +1000 Опыта\nПоиск +500/1000 XP",
                ),
                const ArcStatRow(
                  title: "Здоровье",
                  value: "34000",
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