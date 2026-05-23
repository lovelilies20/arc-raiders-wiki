import 'package:flutter/material.dart';
import 'SNITCH.dart';

class PopScreen extends StatelessWidget {
  const PopScreen({super.key});

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
                    "assets/images/pop.jpg",
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 20),

                const Center(
                  child: Text(
                    "Взрывобот",
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
                  value: "Умеренный",
                  valueColor: Colors.green,
                ),
                const ArcStatRow(
                  title: "Броня",
                  value: "Нет",
                  valueColor: Colors.white,
                ),
                const ArcStatRow(
                  title: "Основная атака",
                  value: "Взрыв",
                ),
                const ArcStatRow(
                  title: "Полученный опыт",
                  value: "Уничтожение: +50 Опыта\nПоиск +100 XP",
                ),
                const ArcStatRow(
                  title: "Здоровье",
                  value: "20",
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
