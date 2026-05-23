import 'package:flutter/material.dart';
import 'package:arc_raiders/screens/events/LushBlooms.dart';

class ClosescrutinyScreen extends StatelessWidget {
  const ClosescrutinyScreen({super.key});

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
                    "assets/images/rich.WEBP",
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 20),
                const Center(
                  child: Text(
                    "Тщательный анализ",
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
                    " Тщательный анализ - это условие карты, при\n котором появляются Геодезисты, защищённые\n Вапорайзерами, которые вызывают ARC-\n Оценщиков после того, как они заканчивают\n поиск ценных материалов. Рейдеры могут\n взломать ARC-оценщиков, чтобы получить \nдоступ к добыче.",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10),

                const Center(
                  child: Text(
                    " * Нет активных запертых дверей\n"
                    " * Уменьшение общей стоимости лута\n"
                    " * Увеличение количества ARC лута",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10),

            ],
            ),
          )
        )
      ),
    );
  }
}