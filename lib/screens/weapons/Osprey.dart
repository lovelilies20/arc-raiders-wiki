import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:arc_raiders/app_language.dart';
import 'package:arc_raiders/app_strings.dart';

class OspreyScreen extends StatelessWidget {
  const OspreyScreen({super.key});

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
                "assets/images/osprey.jpg",
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
                      _tag("Снайперская винтовка"),
                      const SizedBox(width: 8),
                      _tag("Редкое"),
                    ],
                  ),

                  const SizedBox(height: 12),

                  const Text(
                    "Ястреб",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    "У него надёжный урон и точность.",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),

                  const SizedBox(height: 20),

                  _stat("Тип боеприпасов", "Средние боеприпасы"),
                  _stat("Размер магазина", "8"),
                  _stat("Долговечность", "86 | 101 | 126 | 154"),
                  _stat("Режим стрельбы", "Одиночный"),
                  _stat("Пробитие брони ARC", "Умеренное"),
                  _stat("Особая черта","Скоп (5,66x зум)"),
                  _stat("Повреждения", "45"),
                  _stat("Скорострельность", "17.7"),
                  _stat("Время перезарядки","2.5"),
                  _stat("Множитель в голову", "2.0x"),
                  _stat("Дальность", "80.3"),
                  _stat("Стабильность", "89.4"),
                  _stat("Скорость", "45.9"),
                  _stat("Скрытность", "12"),

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

                  _stat("Вес", "7.0"),
                  _stat("Цена продажи", "10,000"),

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
      color: Colors.blue,
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