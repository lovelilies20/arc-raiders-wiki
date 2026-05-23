import 'package:flutter/material.dart';

class LushbloomsScreen extends StatelessWidget {
  const LushbloomsScreen({super.key});

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
                    "assets/images/Lush_Blooms_map_condition.png",
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 20),
                const Center(
                  child: Text(
                    "Пышные цветы",
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
                    " Погода в последнее время была необычайно\n приятной, и жизненно важные растения и\n плоды процветали. Выходите и собирайте еду,\n пока она не закончилась.\n\n"
                    " * Увеличение количества добычи природы",
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
                  value: "2/5",
                  valueColor: Colors.green,
                ),
                const EveStatRow(
                  title: "Погребенный город",
                  value: "3/5",
                  valueColor: Colors.blue,
                ),
                const EveStatRow(
                  title: "Космопорт",
                  value: "3/5",
                  valueColor: Colors.blue,
                ),
                const EveStatRow(
                  title: "Синие ворота",
                  value: "4/5",
                  valueColor: Colors.blue,
                ),
                const EveStatRow(
                  title: "Затонувшее побережье",
                  value: "2/5",
                ),
            ],),
          )
        )
      ),
    );
  }
}
class EveStatRow extends StatelessWidget {
   final String title;
   final String value;
   final Color valueColor;

   const EveStatRow({
     super.key,
     required this.title,
     required this.value,
     this.valueColor = Colors.white,
   });

   @override
   Widget build(BuildContext context) {
     return Padding(
       padding: const EdgeInsets.symmetric(
        horizontal: 16,
         vertical: 10,
       ),
       child: Column(
         children: [
           Row(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Expanded(
                 child: Text(
                   title,
                   style: const TextStyle(
                     color: Colors.white70,
                     fontSize: 18,
                     fontWeight: FontWeight.w600,
                   ),
                 ),
               ),

               Expanded(
                 child: Text(
                   value,
                   textAlign: TextAlign.right,
                   style: TextStyle(
                     color: valueColor,
                      fontSize: 20,
                     fontWeight: FontWeight.bold,
                   ),
                 ),
               ),
             ],
           ),


         ],
       ),
     );
   }
 }