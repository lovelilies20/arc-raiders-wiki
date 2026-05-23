import 'package:flutter/material.dart';
import 'package:arc_raiders/screens/events/LushBlooms.dart';

class ColdsnapScreen extends StatelessWidget {
  const ColdsnapScreen({super.key});

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
                    "assets/images/348px-Cold_Snap_map_condition.png.WEBP",
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 20),
                const Center(
                  child: Text(
                    "Cold Snap",
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
                    " Морозная погода убьёт вашего Рейдера за\n считанные минуты, если только вы не зайдёте\n внутрь или не восстановитесь быстро.\n Имейте это в виду, когда вступаете в бой с\n другими рейдерами - быть прижатым на\n открытом месте - это смертный приговор\n зимой в Ржавом поясе.\n\n"
                    " * Урожай Кэндлберри\n"
                    " * Повышенная стоимость добычи\n"
                    " * Разрушительный холод",
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
                  value: "4/5",
                  valueColor: Colors.blue,
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