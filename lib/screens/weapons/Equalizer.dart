import 'package:flutter/material.dart';

class EqualizerScreen extends StatelessWidget {
  const EqualizerScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                "assets/images/equa.jpg",
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
                      _tag("Специальное"),
                      const SizedBox(width: 8),
                      _tag("Легендарная"),
                    ],
                  ),

                  const SizedBox(height: 12),

                  // НАЗВАНИЕ
                  const Text(
                    "Эквалайзер",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  // ОПИСАНИЕ
                  const Text(
                    "Экспериментальная лучевая винтовка с большой ёмкостью.",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),

                  const SizedBox(height: 20),

                  // ХАРАКТЕРИСТИКИ
                  _stat("Тип боеприпасов", "Энергетический заряд"),
                  _stat("Размер магазина", "50"),
                  _stat("Долговечность", "3450 выстрелов"),
                  _stat("Режим стрельбы", "Полностью автоматический"),
                  _stat("Пробитие брони ARC", "Очень сильное"),
                  _stat("Особая черта", "Экспериментальные"),
                  _stat("Повреждения", "8"),
                  _stat("Скорострельность", "33.33"),
                  _stat("Время перезарядки","3.3"),
                  _stat("Множитель в голову", "2.0x"),
                  _stat("Дальность", "76"),
                  _stat("Стабильность", "84.6"),
                  _stat("Скорость", "44.6"),
                  _stat("Скрытность", "1"),

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

                  _stat("Вес", "14.0"),
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