import 'package:arc_raiders/screens/events/CloseScrutiny.dart';
import 'package:arc_raiders/screens/events/ColdSnap.dart';
import 'package:arc_raiders/screens/events/ElectromagneticStorm.dart';
import 'package:arc_raiders/screens/events/Harvester.dart';
import 'package:arc_raiders/screens/events/Hurricane.dart';
import 'package:arc_raiders/screens/events/HuskGraveyard.dart';
import 'package:arc_raiders/screens/events/LushBlooms.dart';
import 'package:arc_raiders/screens/events/Matriarch.dart';
import 'package:arc_raiders/screens/events/NightRaid.dart';
import 'package:arc_raiders/screens/events/ProspectingProbes.dart';
import 'package:arc_raiders/screens/events/UncoveredCaches.dart';
import 'package:flutter/material.dart';

class DamBattlegroundsScreen extends StatelessWidget {
  const DamBattlegroundsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B1C3D),
      appBar: AppBar(
        title: const Text("Поле битвы у дамбы"),
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
                    "assets/images/Dam_Battlegrounds.png",
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 20),
                const Center(
                  child: Text(
                    "Поле битвы у дамбы",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const SizedBox(height: 20),

                const MapsStatRow(
                  title: "Событие:",
                  value: "Сложность",
                  valueColor: Colors.grey,
                ),

                // const Center(
                //   child: Text(
                //     "Сложность",
                //     style: TextStyle(
                //       color: Colors.yellow,
                //       fontSize: 20,
                //       fontWeight: FontWeight.bold,
                //     ),
                //   ),
                // ),
                // const SizedBox(height: 20),

                const MapsStatRow(
                  title: "Без событий",
                  value: "2/5",
                  valueColor: Colors.green,
                ),

                Column(
                  children: [
                    _buildDifficultyLink(
                      context,
                      "Пышные цветы",
                      const LushbloomsScreen(),
                      "2/5",
                    Colors.green,
                    ),
                    _buildDifficultyLink(
                      context,
                      "Обнаруженные тайники",
                      const UncoveredcachesScreen(),
                      "2/5",
                    Colors.green,
                    ),
                    _buildDifficultyLink(
                      context,
                      "Разведка зондов",
                      const ProspectingprobesScreen(),
                      "3/5",
                    Colors.white,
                    ),
                    _buildDifficultyLink(
                      context,
                      "Сборщик ARC",
                      const HarvesteRScreen(),
                      "3/5",
                    Colors.white,
                    ),
                    _buildDifficultyLink(
                      context,
                      "Кладбище Хаск",
                      const HuskgraveyardScreen(),
                      "3/5",
                    Colors.white,
                    ),
                    _buildDifficultyLink(
                      context,
                      "Матриарх",
                      const MatriarcHScreen(),
                      "4/5",
                    Colors.white,
                    ),
                    _buildDifficultyLink(
                      context,
                      "Электромагнитная буря",
                      const ElectromagneticstormScreen(),
                      "4/5",
                    Colors.white,
                    ),
                    _buildDifficultyLink(
                      context,
                      "Ночной рейд",
                      const NightraidScreen(),
                      "4/5",
                    Colors.white,
                    ),
                    _buildDifficultyLink(
                      context,
                      "Cold Snap",
                      const ColdsnapScreen(),
                      "4/5",
                    Colors.white,
                    ),
                    _buildDifficultyLink(
                      context,
                      "Ураган",
                      const HurricaneScreen(),
                      "5/5",
                    Colors.pink,
                    ),
                    _buildDifficultyLink(
                      context,
                      "Тщательный анализ",
                      const ClosescrutinyScreen(),
                      "5/5",
                    Colors.pink,
                    ),
                  ],
                ),
                const SizedBox(height: 25),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (_) {
                          return Dialog(
                            backgroundColor: Colors.transparent,
                            insetPadding: const EdgeInsets.all(10),
                            child: InteractiveViewer(
                              minScale: 0.5,
                              maxScale: 4,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  "assets/images/Dam_Battlegrounds_Map.jpg",
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },

                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        "assets/images/Dam_Battlegrounds_Map.jpg",
                        width: double.infinity,
                        height: 220,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

 class MapsStatRow extends StatelessWidget {
   final String title;
   final String value;
   final Color valueColor;

   const MapsStatRow({
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
Widget _buildDifficultyLink(
  BuildContext context,
  String title,
  Widget page,
  String level,
  Color color,
) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 14,vertical: 10,),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => page,
              ),
            );
          },
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.blue,
              fontSize: 20,
            ),
          ),
        ),

        Text(
          level,
          style: TextStyle(
            color: color,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}