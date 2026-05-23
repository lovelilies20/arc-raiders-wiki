import 'package:flutter/material.dart';

class TacticalMk3DScreen extends StatelessWidget {
  const TacticalMk3DScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 4, 17, 43),
      appBar: AppBar(
        title: const Text("Снаряжение"),
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
                "assets/images/Tactical_Mk._3_(Defensive) copy.png",
                width: double.infinity,
                height: 450,
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
                      _tag("Аугмент"),
                      const SizedBox(width: 8),
                      _tag("Эпическая"),
                    ],
                  ),

                  const SizedBox(height: 12),

                  const Text(
                    "Tactical Mk. 3 (Защитный)",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    "Аугмент, ориентированный на защиту, чтобы поддерживать Щиты в запасе.",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),

                  const SizedBox(height: 20),

                  Container(
                    padding: const EdgeInsets.all(16),

                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 217, 217, 211),
                      borderRadius: BorderRadius.circular(10),
                    ),

                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Image.asset(
                        "assets/images/Tactical_Mk3_Defensive_Ability_Icon.png",
                        width: 46,
                        height: 87,
                      ),

                      const SizedBox(width: 14),

                      Expanded(
                        child: Text(
                          "Позволяет использовать зарядные устройства щита во время бега.",

                          style: const TextStyle(
                            color: Colors.black87,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            height: 1.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 16,),

                  _stat("Максимальный вес снаряжения", "60.0"),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Совместимость со щитом",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 18,
                        ),
                      ),
                      RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                          children: [
                             TextSpan(
                              text: "    Лёгкий",
                              style: TextStyle(
                                color: Colors.greenAccent,
                              ),
                            ),

                            TextSpan(
                              text: "\n",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),

                            TextSpan(
                              text: " Средний",
                              style: TextStyle(
                                color: Colors.cyanAccent,
                              ),
                            ),

                            TextSpan(
                              text: "\n",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),

                            TextSpan(
                              text: "Тяжёлый",
                              style: TextStyle(
                                color: Colors.pinkAccent,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  ),
                  
                  _stat("Вместимость", "20"),
                  _stat("Слоты быстрого использования", "5"),
                  _stat("Потайных карманов", "1"),
                  _stat("Переработка в", " -"),

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

                  _stat("Вес", "5,0"),
                  _stat("Продажа", "5000"),

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