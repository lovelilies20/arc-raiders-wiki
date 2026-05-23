import 'package:arc_raiders/screens/maps/Blue_Gate.dart';
import 'package:arc_raiders/screens/maps/Buried_City.dart';
import 'package:arc_raiders/screens/maps/Dam_Battlegrounds.dart';
import 'package:arc_raiders/screens/maps/Riven_Tides.dart';
import 'package:arc_raiders/screens/maps/Spaceport.dart';
import 'package:arc_raiders/screens/maps/Stella_Montis.dart';
import 'package:flutter/material.dart';
import 'package:arc_raiders/main.dart';
import 'package:arc_raiders/widgets/animated_border.dart';

class MapsScreen extends StatelessWidget {
  const MapsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 4, 17, 43),
      appBar: AppBar(
        title: const Text("КАРТЫ/СОБЫТИЯ"),
        backgroundColor: const Color.fromARGB(255, 235, 206, 43),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
            ),

            const SizedBox(height: 20),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Карты",
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 16),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Играйте в одиночку или в группах до трёх человек, собирайте материалы из тайников по всей карте, охотитесь на ARC и пытайтесь пройти через точку эвакуации до того, как придёт другой рейдер за вашей добычей. Динамичная погода, время суток и события поддерживают свежесть.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  height: 1.5,
                ),
              ),
            ),
            const SizedBox(height: 20),

            MenuButton(title: "Поле битвы у дамбы", imagePath:"assets/images/Dam_Battlegrounds.png",onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => const DamBattlegroundsScreen(),),);},),
            const SizedBox(height: 12),
            MenuButton(title: "Погребенный город",imagePath: "assets/images/Buried_City.png",onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => const BuriedCityScreen(),),);},),
            const SizedBox(height: 12),
            MenuButton(title: "Космопорт",imagePath: "assets/images/Spaceport.png",onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => const SpaceportScreen(),),);},),
            const SizedBox(height: 12),
            MenuButton(title: "Синие ворота",imagePath: "assets/images/Blue_Gate.png",onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => const BlueGateScreen(),),);},),
            const SizedBox(height: 12),
            MenuButton(title: "Затонувшее побережье",imagePath: "assets/images/Riven_Tides.png",onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => const RivenTidesScreen(),),);},),
            const SizedBox(height: 12),
            MenuButton(title: "Стелла Монтис",imagePath: "assets/images/Stella_Montis.png",onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => const StellaMontisScreen(),),);},),
          ],
        ),
      ),
      ),
    );
  }
}
// class HistoryButton extends StatelessWidget {
//   final String title;
//   final String imagePath;
//   final Widget screen;

//   const HistoryButton({
//     super.key,
//     required this.title,
//     required this.imagePath,
//     required this.screen,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => screen),
//         );
//       },
//       child: Container(
//         margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//         height: 80,
//         decoration: BoxDecoration(
//           color: const Color(0xFF0B1C3D),
//           borderRadius: BorderRadius.circular(16),
//           border: Border.all(color: Colors.yellow, width: 2),
//         ),
//         child: Row(
//           children: [
//             ClipRRect(
//               borderRadius: const BorderRadius.horizontal(
//                 left: Radius.circular(16),
//               ),
//               child: Image.asset(
//                 imagePath,
//                 width: 80,
//                 height: 80,
//                 fit: BoxFit.cover,
//               ),
//             ),

//             const SizedBox(width: 16),

//             Expanded(
//               child: Text(
//                 title,
//                 style: const TextStyle(
//                   color: Colors.yellow,
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),

//             const SizedBox(width: 16),
//           ],
//         ),
//       ),
//     );
//   }
// }