import 'package:flutter/material.dart';
import 'package:arc_raiders/screens/history_history_screen.dart';
import 'package:provider/provider.dart';
import 'package:arc_raiders/app_language.dart';
import 'package:arc_raiders/app_strings.dart';

class PeopleScreen extends StatefulWidget {
  const PeopleScreen({super.key});

  @override
  State<PeopleScreen> createState() => _PeopleScreenState();
}

class _PeopleScreenState extends State<PeopleScreen> {
  int selectedIndex = 0;


  @override
  Widget build(BuildContext context) {
    final s = AppStrings.of(context.watch<AppLanguage>());
    final categories = [
    s.traders,
    s.groupsAndOrhanization,
  ];
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 4, 17, 43),
      appBar: AppBar(
        title: Text(s.people),
        backgroundColor: const Color.fromARGB(255, 234, 247, 60),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 20),
              SizedBox(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    final isSelected = selectedIndex == index;

                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 12),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: isSelected
                                ? Colors.white
                                : Colors.white24,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            categories[index],
                            style: TextStyle(
                              color: isSelected
                                  ? Colors.white
                                  : Colors.white54,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 20),

              if (selectedIndex == 0) ...[
                 ExpandableInfoCard(
                  title: s.selesta,
                  imagePath: "assets/images/Celeste_Codex_1.png",
                  content:
                      s.selestaStory,
                ),
                const SizedBox(height: 12),

                 ExpandableInfoCard(
                  title: s.shani,
                  imagePath: "assets/images/Shani_Codex.png",
                  content:
                      s.shaniStory,
                ),
                const SizedBox(height: 12),

                 ExpandableInfoCard(
                  title: s.tyanVen,
                  imagePath: "assets/images/Tian_Wen_Codex.png",
                  content:
                  s.tyanVenStory,
                ),
                const SizedBox(height: 12),

                 ExpandableInfoCard(
                  title: s.lens,
                  imagePath: "assets/images/Lance_Codex.png",
                  content:
                  s.lensStory,
                ),
                const SizedBox(height: 12),

                  ExpandableInfoCard(
                  title: s.appolon,
                  imagePath: "assets/images/Apollo_Codex.png",
                  content:
                  s.appolonStory,
                 ),

              ],

              if (selectedIndex == 1) ...[
                 ExpandableInfoCard(
                  title: s.raiders,
                  imagePath: "assets/images/Raiders_Codex.png",
                  content:
                      s.raidersStory,
                ),
                const SizedBox(height: 12),

                 ExpandableInfoCard(
                  title: s.kochevnikiBlueGate,
                  imagePath: "assets/images/Blue_Gate_Nomads_Codex.png",
                  content:
                      s.kochevnikiBlueGateStory,
                ),
                const SizedBox(height: 12),

                 ExpandableInfoCard(
                  title: s.ottm,
                  imagePath: "assets/images/OTTM_Codex.png",
                  content:
                      s.ottmStory,
                ),
                const SizedBox(height: 12),

                 ExpandableInfoCard(
                  title: s.searchingsStellaMontis,
                  imagePath: "assets/images/Stella_Montis_Researchers_Codex.png",
                  content:
                  s.searchingsStellaMontisStory,
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}