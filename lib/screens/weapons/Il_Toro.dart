import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:arc_raiders/app_language.dart';
import 'package:arc_raiders/app_strings.dart';

class IlToroScreen extends StatelessWidget {
  const IlToroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final s = AppStrings.of(context.watch<AppLanguage>());
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 4, 17, 43),
      appBar: AppBar(
        title: const Text("Оружие"),
        backgroundColor: Colors.yellow,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(5),
              ),
              child: Image.asset(
                "assets/images/il_toro.jpg",
                width: double.infinity,
                height: 220,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 16),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Row(
                    children: [
                      _tag("Дробовик"),
                      const SizedBox(width: 8),
                      _tag("Необычное"),
                    ],
                  ),

                  const SizedBox(height: 12),

                  const Text(
                    "Эль-Торо",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    "У него большой разброс пуль, резкий спад и высокий урон.",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),

                  const SizedBox(height: 20),

                  _stat("Тип боеприпасов", "Патроны для дробовика"),
                  _stat("Размер магазина", "5 | 6 | 7 | 8"),
                  _stat("Долговечность", "76 | 96 | 123 | 150"),
                  _stat("Режим стрельбы", "Помповое"),
                  _stat("Пробитие брони ARC", "Слабое"),
                  _stat("Повреждения", "7×9 (63)"),
                  _stat("Скорострельность", "14"),
                  _stat("Время перезарядки","3,9"),
                  _stat("Дальность", "20"),
                  _stat("Стабильность", "80.6"),
                  _stat("Скорость", "61.1"),
                  _stat("Скрытность", "18"),

                  const SizedBox(height: 20),

                  const Center(
                    child: Text(
                    "Общие данные",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  _stat("Вес", "8.0"),
                  _stat("Цена продажи", "7,000"),

                  const SizedBox(height: 30),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget _tag(String text) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
    decoration: BoxDecoration(
      color: Colors.green,
      borderRadius: BorderRadius.circular(8),
    ),
    child: Text(
      text,
      style: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
Widget _stat(String title, String value) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 6),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(color: Colors.white70),
        ),
        Text(
          value,
          style: const TextStyle(color: Colors.white),
        ),
      ],
    ),
  );
}