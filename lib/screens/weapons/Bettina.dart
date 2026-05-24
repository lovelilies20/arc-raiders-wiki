import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:arc_raiders/app_language.dart';
import 'package:arc_raiders/app_strings.dart';

class BettinaScreen extends StatelessWidget {
  const BettinaScreen({super.key});

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
                "assets/images/bettina.jpg",
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
                      _tag("Штурмовая винтовка"),
                      const SizedBox(width: 8),
                      _tag("Эпическая"),
                    ],
                  ),

                  const SizedBox(height: 12),

                  const Text(
                    "Бетина",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    "Низкая скорострельность и высокий урон.",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),

                  const SizedBox(height: 20),

                  _stat("Тип боеприпасов", "Тяжёлые боеприпасы"),
                  _stat("Размер магазина", "22"),
                  _stat("Долговечность", "597 | 648 | 752 | 874"),
                  _stat("Режим стрельбы", "Полностью автоматический"),
                  _stat("Пробитие брони ARC", "Сильное"),
                  _stat("Повреждения", "16"),
                  _stat("Скорострельность", "28,7"),
                  _stat("Время перезарядки","4,5"),
                  _stat("Множитель в голову", "1,5x"),
                  _stat("Дальность", "52.3"),
                  _stat("Стабильность", "79.7"),
                  _stat("Скорость", "49.4"),
                  _stat("Скрытность", "14"),

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

                  _stat("Вес", "11.0"),
                  _stat("Цена продажи", "14,000"),

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
      color: Colors.pinkAccent,
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