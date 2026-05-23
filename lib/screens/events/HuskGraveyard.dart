import 'package:flutter/material.dart';
import 'package:arc_raiders/screens/events/LushBlooms.dart';

class HuskgraveyardScreen extends StatelessWidget {
  const HuskgraveyardScreen({super.key});

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
                    "assets/images/348px-Husk_Graveyard_map_condition.png.WEBP",
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 20),
                const Center(
                  child: Text(
                    "Кладбище Хаск",
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
                    " Кладбище Хаска — это условие карты, которое\n значительно увеличивает количество\n разбросанных ARC-оболочек. Кроме того,\n оболочки могут электрифицироваться при\n прорыве, нанося шокирующее урона любому\n ничего не подозревающему рейдеру.\n\n"
                    " * Электрифицированные оболочки первой волны",
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
                  value: "3/5",
                  valueColor: Colors.green,
                ),
                const EveStatRow(
                  title: "Погребенный город",
                  value: "4/5",
                  valueColor: Colors.blue,
                ),
                const EveStatRow(
                  title: "Космопорт",
                  value: "4/5",
                  valueColor: Colors.blue,
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