import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:arc_raiders/app_language.dart';
import 'package:arc_raiders/app_strings.dart';

class DolabraScreen extends StatelessWidget {
  const DolabraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final s = AppStrings.of(context.watch<AppLanguage>());
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 4, 17, 43),
      appBar: AppBar(
        title: Text(s.weapon),
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
                "assets/images/dolabra.jpg",
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
                      _tag(s.drobovik),
                      const SizedBox(width: 8),
                      _tag(s.legendary),
                    ],
                  ),

                  const SizedBox(height: 12),

                  Text(
                    s.dolabra,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    s.dolabraStory,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),

                  const SizedBox(height: 20),
                  _stat(s.typ, s.enerBoep),
                  _stat(s.magazine, "8"),
                  _stat(s.dolgo, s.shots125),
                  _stat(s.rejim, s.poluAvtomaticheskiy),
                  _stat(s.bronyaArc, s.bronyaArcSil),
                  _stat(s.osobayaCherta, s.experiment),
                  _stat(s.pov, "25"),
                  _stat(s.skorostrel, "50"),
                  _stat(s.reload,"3.3"),
                  _stat(s.head, "1.5x"),
                  _stat(s.range, "76"),
                  _stat(s.stab, "88"),
                  _stat(s.skor, "39"),
                  _stat(s.skrit, "1"),

                  const SizedBox(height: 20),

                  Center(
                    child: Text(
                    s.obshie,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  _stat(s.ves, "8.0"),
                  _stat(s.prodaja, "27,500"),

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