import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:arc_raiders/app_language.dart';
import 'package:arc_raiders/app_strings.dart';

class JupiterScreen extends StatelessWidget {
  const JupiterScreen({super.key});

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

            // КАРТИНКА СВЕРХУ
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(5),
              ),
              child: Image.asset(
                "assets/images/jupiter.jpg",
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

                  // ТЕГИ
                  Row(
                    children: [
                      _tag("Снайперская винтовка"),
                      const SizedBox(width: 8),
                      _tag("Легендарная"),
                    ],
                  ),

                  const SizedBox(height: 12),

                  // НАЗВАНИЕ
                  const Text(
                    "Юпитер",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  // ОПИСАНИЕ
                  const Text(
                    "Снайперская винтовка с затвором с исключительным уроном и точностью, но медленным управлением.",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),

                  const SizedBox(height: 20),

                  // ХАРАКТЕРИСТИКИ
                  _stat("Тип боеприпасов", "Энергетический заряд"),
                  _stat("Размер магазина", "5"),
                  _stat("Долговечность", "167 выстрелов"),
                  _stat("Режим стрельбы", "Скользящий затвор"),
                  _stat("Пробитие брони ARC", "Очень сильное"),
                  _stat("Особая черта", "Экспериментальные"),
                  _stat("Повреждения", "60"),
                  _stat("Скорострельность", "7.67"),
                  _stat("Время перезарядки","3.3"),
                  _stat("Множитель в голову", "2.0x"),
                  _stat("Дальность", "71.7"),
                  _stat("Стабильность", "73.5"),
                  _stat("Скорость", "39.2"),
                  _stat("Скрытность", "5"),

                  const SizedBox(height: 20),

                  // ОБЩИЕ ДАННЫЕ
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

                  _stat("Вес", "9.0"),
                  _stat("Цена продажи", "27,500"),

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

// ТЕГ (зелёная кнопка)
Widget _tag(String text) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
    decoration: BoxDecoration(
      color: Colors.yellow,
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
// СТРОКА ХАРАКТЕРИСТИК
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