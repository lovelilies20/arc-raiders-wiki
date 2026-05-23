import 'package:flutter/material.dart';
import 'package:arc_raiders/screens/history_history_screen.dart';
import 'package:provider/provider.dart';
import 'package:arc_raiders/app_language.dart';
import 'package:arc_raiders/app_strings.dart';

class ToledoScreen extends StatefulWidget {
  const ToledoScreen({super.key});

  @override
  State<ToledoScreen> createState() => _ToledoScreenState();
}

class _ToledoScreenState extends State<ToledoScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final s = AppStrings.of(context.watch<AppLanguage>());
    final categories = [
    s.infrostructura,
    s.society,
  ];
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 4, 17, 43),
      appBar: AppBar(
        title: Text(s.toledo),
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
                  title: s.hatches,
                  imagePath: "assets/images/Raider_Hatches_Codex.png",
                  content:
                     s.hatchesStory,
                ),
                const SizedBox(height: 12),

                ExpandableInfoCard(
                  title: s.depots,
                  imagePath: "assets/images/Field_Depot_Codex.png",
                  content:
                      s.depotsStory,
                ),
                const SizedBox(height: 12),

                ExpandableInfoCard(
                  title: s.tubes,
                  imagePath: "assets/images/The_Tubes_Codex.png",
                  content:
                  s.tubesStory,
                ),
                const SizedBox(height: 12),

                ExpandableInfoCard(
                  title: s.electricity,
                  imagePath: "assets/images/Electricity_Codex.png",
                  content:
                  s.electricityStory,
                ),
                const SizedBox(height: 12),

                 ExpandableInfoCard(
                  title: s.waterworks,
                  imagePath: "assets/images/Waterworks_Codex.png",
                  content:
                  s.waterworksStory,
                 ),
                 const SizedBox(height: 12),

                 ExpandableInfoCard(
                  title: s.food,
                  imagePath: "assets/images/Food_Cultivation_Codex.png",
                  content:
                  s.foodStory,
                 ),
                 const SizedBox(height: 12),

                 ExpandableInfoCard(
                  title: s.security,
                  imagePath: "assets/images/Security_Codex.png",
                  content:
                  s.securityStory,
                 ),
                 const SizedBox(height: 12),

                 ExpandableInfoCard(
                  title: s.backyard,
                  imagePath: "assets/images/The_Backyard_Codex.png",
                  content:
                  s.backyardStory,
                 ),
              ],

              if (selectedIndex == 1) ...[
                ExpandableInfoCard(
                  title: s.speranza,
                  imagePath: "assets/images/Speranza_Codex.png",
                  content:
                     s.speranzaStory,
                ),
                const SizedBox(height: 12),

                ExpandableInfoCard(
                  title: s.toledo,
                  imagePath: "assets/images/Toledo_Codex.png",
                  content:
                       s.toledoStory,
                ),
                const SizedBox(height: 12),

                ExpandableInfoCard(
                  title: s.blackMarket,
                  imagePath: "assets/images/Black_Market_Codex.png",
                  content:
                      s.blackMarketStory,
                ),
                const SizedBox(height: 12),

                ExpandableInfoCard(
                  title: s.banquet,
                  imagePath: "assets/images/Candleberry_Banquet_codex.png",
                  content:
                  s.banquetStory,
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}