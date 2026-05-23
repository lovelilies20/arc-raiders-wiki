import 'package:flutter/material.dart';
import 'people_screen.dart';
import 'surface_screen.dart';
import 'toledo_screen.dart';
import 'arc_screen.dart';
import 'history_history_screen.dart';
import 'package:arc_raiders/main.dart';
import 'package:arc_raiders/widgets/animated_border.dart';
import 'package:provider/provider.dart';
import 'package:arc_raiders/app_language.dart';
import 'package:arc_raiders/app_strings.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final s = AppStrings.of(context.watch<AppLanguage>());
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 4, 17, 43),
      appBar: AppBar(
        title: Text(s.history),
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
                "ARC Raiders",
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 16),

           Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                s.historyLore,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  height: 1.5,
                ),
              ),
            ),
            const SizedBox(height: 20),

            MenuButton(title: s.history, imagePath:"assets/images/history.jpg",onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => const HistoryHistoryScreen(),),);},),
            const SizedBox(height: 12),
            MenuButton(title: s.people, imagePath: "assets/images/people.jpg",onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => const PeopleScreen(),),);},),
            const SizedBox(height: 12),
            MenuButton(title: s.toledo, imagePath: "assets/images/toledo.jpg",onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const ToledoScreen(),),);},),
            const SizedBox(height: 12),
            MenuButton(title: "ARC", imagePath: "assets/images/ARC.jpg",onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const ArcScreen(),),);},),
            const SizedBox(height: 12),
            MenuButton(title: s.surface ,imagePath: "assets/images/surface.jpg",onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const SurfaceScreen(),),);},),

            const SizedBox(height: 30),

            const SizedBox(height: 30),
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