import 'package:flutter/material.dart';

class SnitchScreen extends StatelessWidget {
  const SnitchScreen({super.key});

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
                    "assets/images/snitch.jpg",
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 20),
                const Center(
                  child: Text(
                    "Стукач",
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
                ),
                const ArcStatRow(
                  title: "Основная атака",
                  value: "Нет",
                ),
                const ArcStatRow(
                  title: "Способности",
                  value: "Призыв ARC",
                ),
                const ArcStatRow(
                  title: "Слабость",
                  value: "Двигатели",
                ),
                const ArcStatRow(
                  title: "Полученный опыт",
                  value: "Уничтожение: +100 XP\nЯдро: +200 XP",
                ),
                const ArcStatRow(
                  title: "Здоровье",
                  value: "158",
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

class ArcStatRow extends StatelessWidget {
  final String title;
  final String value;
  final Color valueColor;

  const ArcStatRow({
    super.key,
    required this.title,
    required this.value,
    this.valueColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              Expanded(
                child: Text(
                  value,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: valueColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 10),

          Container(
            height: 1,
            color: Colors.white12,
          ),
        ],
      ),
    );
  }
}