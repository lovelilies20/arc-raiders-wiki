import 'package:flutter/material.dart';
import 'package:arc_raiders/screens/events/LushBlooms.dart';

class HurricaneScreen extends StatelessWidget {
  const HurricaneScreen({super.key});

@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B1C3D),
      appBar: AppBar(
        title: const Text("КАРТЫ/СОБЫТИЯ"),
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
                    "assets/images/348px-Hurricane_map_condition.png.WEBP",
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 20),
                const Center(
                  child: Text(
                    "Ураган",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Center(
                  child: Text(
                    " Сильные ветры проносятся по поверхности,\n затрагивая значительные части района.\n Видимость и слух могут быть снижены, так что\n будьте начеку.\n\n"
                    " * Повышенная стоимость добычи\n"
                    " * Обломки ломают на щиты\n"
                    " * ARC с повышенной угрозой",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                const Center(
                  child: Text(
                    "Сложность",
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10),

                const EveStatRow(
                  title: "Поле битвы у дамбы",
                  value: "5/5",
                  valueColor: Colors.pink,
                ),
                const EveStatRow(
                  title: "Погребенный город",
                  value: "5/5",
                  valueColor: Colors.pink,
                ),
                const EveStatRow(
                  title: "Космопорт",
                  value: "5/5",
                  valueColor: Colors.pink,
                ),
                const EveStatRow(
                  title: "Синие ворота",
                  value: "5/5",
                  valueColor: Colors.pink,
                ),
            ],),
          )
        )
      ),
    );
  }
}