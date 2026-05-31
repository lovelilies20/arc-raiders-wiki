import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:arc_raiders/app_language.dart';
import 'package:arc_raiders/app_strings.dart';

// ─────────────────────────────────────────────
//  МОДЕЛЬ ГРАНАТЫ
// ─────────────────────────────────────────────

class GrenadeData {
  final String imagePath;
  final List<GrenadeTag> tags;
  final String Function(AppStrings s) name;
  final String Function(AppStrings s) description;
  final List<GrenadeStat> Function(AppStrings s) stats;
  final List<GrenadeStat> Function(AppStrings s) craftStats;

  const GrenadeData({
    required this.imagePath,
    required this.tags,
    required this.name,
    required this.description,
    required this.stats,
    required this.craftStats,
  });
}

class GrenadeTag {
  final String Function(AppStrings s) label;
  final Color color;
  const GrenadeTag(this.label, this.color);
}

class GrenadeStat {
  final String Function(AppStrings s) title;
  final String value;
  const GrenadeStat(this.title, this.value);
}
final List<GrenadeData> kGrenades = [
  GrenadeData(
    imagePath: "assets/images/Blaze_Grenade.png", //0
    tags: [
      GrenadeTag((s) => s.fastslots, Colors.blue),
      GrenadeTag((s) => s.granade2, Colors.blue),
    ],
    name: (s) => s.granade10,
    description: (s) => s.etopizda,
    stats: (s) => [
      GrenadeStat((s) => s.stat1, s.secundi5_1),
      GrenadeStat((s) => s.stat2, s.secundi5),
      GrenadeStat((s) => s.stat3, s.metri5),
    ],
    craftStats: (s) => [
      GrenadeStat((s) => s.stat4, "0.2"),
      GrenadeStat((s) => s.stat5, "1,600"),
      GrenadeStat((s) => s.stat6, "5"),
    ],
  ),
  GrenadeData(
    imagePath: "assets/images/Wolfpack.png",  //1
    tags: [
      GrenadeTag((s) => s.fastslots, Colors.pink),
      GrenadeTag((s) => s.granade3, Colors.pink),
    ],
    name: (s) => s.granade18,
    description: (s) => s.etopizda15,
    stats: (s) => [
      GrenadeStat((s) => s.stat1, "166 x12"),
      GrenadeStat((s) => s.stat3, s.metri8),
    ],
    craftStats: (s) => [
      GrenadeStat((s) => s.ves, "1.0"),
      GrenadeStat((s) => s.stat5, "6,000"),
      GrenadeStat((s) => s.stat6, "1"),
    ],
  ),
  GrenadeData(
    imagePath: "assets/images/Deadline.png", //2
    tags: [
      GrenadeTag((s) => s.fastslots, Colors.pink),
      GrenadeTag((s) => s.granade3, Colors.pink),
    ],
    name: (s) => s.granade17,
    description: (s) => s.etopizda1,
    stats: (s) => [
      GrenadeStat((s) => s.stat1, "1,000"),
      GrenadeStat((s) => s.stat3, s.metri5),
      GrenadeStat((s) => s.stat2, s.secundi9),
    ],
    craftStats: (s) => [
      GrenadeStat((s) => s.stat4, "1.0"),
      GrenadeStat((s) => s.stat5, "18,000"),
      GrenadeStat((s) => s.stat7, "6,000"),
      GrenadeStat((s) => s.stat6, "1"),
    ],
  ),
  GrenadeData(
  imagePath: "assets/images/GasGranade.png", //3
  tags: [
    GrenadeTag((s) => s.fastslots, Colors.grey),
    GrenadeTag((s) => s.obich, Colors.grey),
  ],
  name: (s) => s.granade11,
  description: (s) => s.etopizda4,
  stats: (s) => [
    GrenadeStat((s) => s.stat2, s.secundi1),
    GrenadeStat((s) => s.stat3, s.metri1),
    GrenadeStat((s) => s.stat1, s.secundi2),
  ],
  craftStats: (s) => [
    GrenadeStat((s) => s.stat4, "0.5"),
    GrenadeStat((s) => s.stat5, "800"),
    GrenadeStat((s) => s.stat6, "3"),
  ],
),
GrenadeData(
  imagePath: "assets/images/firecracker.png", //4
  tags: [
    GrenadeTag((s) => s.fastslots, Colors.grey),
    GrenadeTag((s) => s.obich, Colors.grey),
  ],
  name: (s) => s.granade5,
  description: (s) => s.etopizda2,
  stats: (s) => [
    GrenadeStat((s) => s.stat2, s.secundi),
  ],
  craftStats: (s) => [
    GrenadeStat((s) => s.stat4, "0.5"),
    GrenadeStat((s) => s.stat5, "800"),
    GrenadeStat((s) => s.stat6, "3"),
  ],
),
GrenadeData(
  imagePath: "assets/images/granade.png", //5
  tags: [
    GrenadeTag((s) => s.fastslots, Colors.grey),
    GrenadeTag((s) => s.obich, Colors.grey),
  ],
  name: (s) => s.granade4,
  description: (s) => s.etopizda5,
  stats: (s) => [
    GrenadeStat((s) => s.stat1, "30"),
    GrenadeStat((s) => s.stat3, s.metri),
  ],
  craftStats: (s) => [
    GrenadeStat((s) => s.stat4, "0.5"),
    GrenadeStat((s) => s.stat5, "800"),
    GrenadeStat((s) => s.stat6, "3"),
  ],
),
GrenadeData(
    imagePath: "assets/images/Heavy_Fuze_Grenade.png", //6
    tags: [
      GrenadeTag((s) => s.fastslots, Colors.blue),
      GrenadeTag((s) => s.granade2, Colors.blue),
    ],
    name: (s) => s.granade11,
    description: (s) => s.etopizda6,
    stats: (s) => [
      GrenadeStat((s) => s.stat1, "80"),
      GrenadeStat((s) => s.stat3, s.metri1),
      GrenadeStat((s) => s.stat2, s.secundi4),
    ],
    craftStats: (s) => [
      GrenadeStat((s) => s.stat4, "0.2"),
      GrenadeStat((s) => s.stat5, "1,600"),
      GrenadeStat((s) => s.stat6, "5"),
    ],
  ),
  GrenadeData(
    imagePath: "assets/images/Lure_Grenade.png", //7
    tags: [
      GrenadeTag((s) => s.fastslots, Colors.green),
      GrenadeTag((s) => s.neobich, Colors.green),
    ],
    name: (s) => s.granade7,
    description: (s) => s.etopizda7,
    stats: (s) => [
      GrenadeStat((s) => s.stat2, s.secundi3),
      GrenadeStat((s) => s.stat3, s.metri2),
    ],
    craftStats: (s) => [
      GrenadeStat((s) => s.stat4, "0.2"),
      GrenadeStat((s) => s.stat5, "1,600"),
      GrenadeStat((s) => s.stat6, "5"),
    ],
  ),
  GrenadeData(
    imagePath: "assets/images/Seeker_Grenade.png", //8
    tags: [
      GrenadeTag((s) => s.fastslots, Colors.green),
      GrenadeTag((s) => s.neobich, Colors.green),
    ],
    name: (s) => s.granade8,
    description: (s) => s.etopizda8,
    stats: (s) => [
      GrenadeStat((s) => s.stat1, "50"),
      GrenadeStat((s) => s.stat3, s.metri3),
    ],
    craftStats: (s) => [
      GrenadeStat((s) => s.stat4, "0.2"),
      GrenadeStat((s) => s.stat5, "1,600"),
      GrenadeStat((s) => s.stat6, "5"),
    ],
  ),
  GrenadeData(
    imagePath: "assets/images/Showstopper.png", //9
    tags: [
      GrenadeTag((s) => s.fastslots, Colors.blue),
      GrenadeTag((s) => s.granade2, Colors.blue),
    ],
    name: (s) => s.granade12,
    description: (s) => s.etopizda9,
    stats: (s) => [
      GrenadeStat((s) => s.stunned, s.secundi6),
      GrenadeStat((s) => s.stunned, s.secundi6_1),
      GrenadeStat((s) => s.stat3, s.metri6),
    ],
    craftStats: (s) => [
      GrenadeStat((s) => s.ves, "0.4"),
      GrenadeStat((s) => s.stat5, "2,100"),
      GrenadeStat((s) => s.stat6, "5"),
    ],
  ),
  GrenadeData(
    imagePath: "assets/images/Smoke_Grenade.png", //10
    tags: [
      GrenadeTag((s) => s.fastslots, Colors.blue),
      GrenadeTag((s) => s.granade2, Colors.blue),
    ],
    name: (s) => s.granade13,
    description: (s) => s.etopizda10,
    stats: (s) => [
      GrenadeStat((s) => s.stat2, s.secundi1),
      GrenadeStat((s) => s.stat3, s.metri1),
    ],
    craftStats: (s) => [
      GrenadeStat((s) => s.ves, "0.4"),
      GrenadeStat((s) => s.stat5, "2,100"),
      GrenadeStat((s) => s.stat6, "5"),
    ],
  ),
  GrenadeData(
    imagePath: "assets/images/Snap_Blast_Grenade.png", //11
    tags: [
      GrenadeTag((s) => s.fastslots, Colors.green),
      GrenadeTag((s) => s.neobich, Colors.green),
    ],
    name: (s) => s.granade9,
    description: (s) => s.etopizda11,
    stats: (s) => [
      GrenadeStat((s) => s.stat1, "70"),
      GrenadeStat((s) => s.stat3, s.metri4),
      GrenadeStat((s) => s.stat2, s.secundi4),
    ],
    craftStats: (s) => [
      GrenadeStat((s) => s.stat4, "0.2"),
      GrenadeStat((s) => s.stat5, "1,600"),
      GrenadeStat((s) => s.stat6, "5"),
    ],
  ),
  GrenadeData(
    imagePath: "assets/images/Tagging_Grenade.png", //12
    tags: [
      GrenadeTag((s) => s.fastslots, Colors.blue),
      GrenadeTag((s) => s.granade2, Colors.blue),
    ],
    name: (s) => s.granade14,
    description: (s) => s.etopizda12,
    stats: (s) => [
      GrenadeStat((s) => s.stat2, s.secundi7),
      GrenadeStat((s) => s.stat3, s.metri6),
    ],
    craftStats: (s) => [
      GrenadeStat((s) => s.stat4, "0.2"),
      GrenadeStat((s) => s.stat5, "1,600"),
      GrenadeStat((s) => s.stat6, "5"),
    ],
  ),
  GrenadeData(
    imagePath: "assets/images/Trailblazer.png", //13
    tags: [
      GrenadeTag((s) => s.fastslots, Colors.blue),
      GrenadeTag((s) => s.granade2, Colors.blue),
    ],
    name: (s) => s.granade15,
    description: (s) => s.etopizda13,
    stats: (s) => [
      GrenadeStat((s) => s.stat1, "20"),
      GrenadeStat((s) => s.stat3, s.metri7),
    ],
    craftStats: (s) => [
      GrenadeStat((s) => s.ves, "1.0"),
      GrenadeStat((s) => s.stat5, "2,200"),
      GrenadeStat((s) => s.stat6, "3"),
    ],
  ),
  GrenadeData(
    imagePath: "assets/images/TriggerNade.png", //14
    tags: [
      GrenadeTag((s) => s.fastslots, Colors.blue),
      GrenadeTag((s) => s.granade2, Colors.blue),
    ],
    name: (s) =>  s.granade16,
    description: (s) => s.etopizda14,
    stats: (s) => [
      GrenadeStat((s) => s.stat1, "90"),
      GrenadeStat((s) => s.stat3, s.metri1),
      GrenadeStat((s) => s.stat2, s.secundi8),
    ],
    craftStats: (s) => [
      GrenadeStat((s) => s.ves, "1.0"),
      GrenadeStat((s) => s.stat5, "2,200"),
      GrenadeStat((s) => s.stat6, "3"),
    ],
  ),
];
class GrenadeDetailScreen extends StatelessWidget {
  final GrenadeData grenade;

  const GrenadeDetailScreen({super.key, required this.grenade});

  @override
  Widget build(BuildContext context) {
    final s = AppStrings.of(context.watch<AppLanguage>());

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 4, 17, 43),
      appBar: AppBar(
        title: Text(s.granades),
        backgroundColor: Colors.yellow,
        foregroundColor: Colors.black,
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
                grenade.imagePath,
                width: double.infinity,
                height: 400,
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
                    children: grenade.tags.expand((tag) => [
                      _tag(tag.label(s), tag.color),
                      const SizedBox(width: 8),
                    ]).toList(),
                  ),

                  const SizedBox(height: 12),

                  Text(
                    grenade.name(s),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    grenade.description(s),
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),

                  const SizedBox(height: 20),

                  ...grenade.stats(s).map((stat) =>
                    _stat(stat.title(s), stat.value)),

                  const SizedBox(height: 20),

                  Center(
                    child: Text(
                      s.etopizda3,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  ...grenade.craftStats(s).map((stat) =>
                    _stat(stat.title(s), stat.value)),

                  const SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
Widget _tag(String text, Color color) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
    decoration: BoxDecoration(
      color: color,
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
        Text(title, style: const TextStyle(color: Colors.white70)),
        Text(value, style: const TextStyle(color: Colors.white)),
      ],
    ),
  );
}