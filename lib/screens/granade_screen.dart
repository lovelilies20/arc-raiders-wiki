import 'package:arc_raiders/screens/granades/Blaze_Grenade.dart';
import 'package:arc_raiders/screens/granades/Deadline.dart';
import 'package:arc_raiders/screens/granades/GasGranade.dart';
import 'package:arc_raiders/screens/granades/Heavy_Fuze_Grenade.dart';
import 'package:arc_raiders/screens/granades/Lure_Grenade.dart';
import 'package:arc_raiders/screens/granades/Seeker_Grenade.dart';
import 'package:arc_raiders/screens/granades/Showstopper.dart';
import 'package:arc_raiders/screens/granades/Smoke_Grenade.dart';
import 'package:arc_raiders/screens/granades/Snap_Blast_Grenade.dart';
import 'package:arc_raiders/screens/granades/Tagging_Grenade.dart';
import 'package:arc_raiders/screens/granades/Trailblazer.dart';
import 'package:arc_raiders/screens/granades/Trigger_Nade.dart';
import 'package:arc_raiders/screens/granades/Wolfpack.dart';
import 'package:arc_raiders/screens/granades/firecracker.dart';
import 'package:arc_raiders/screens/granades/granadede.dart';
import 'package:flutter/material.dart';
import 'package:arc_raiders/main.dart';
import 'package:arc_raiders/widgets/weapon_button.dart';
import 'package:arc_raiders/widgets/granade_button.dart';
import 'package:provider/provider.dart';
import 'package:arc_raiders/app_language.dart';
import 'package:arc_raiders/app_strings.dart';

class GranadeScreen extends StatefulWidget {
  const GranadeScreen({super.key});

  @override
  State<GranadeScreen> createState() => _GranadeScreenState();
}

class _GranadeScreenState extends State<GranadeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final s = AppStrings.of(context.watch<AppLanguage>());
    final rarities = [
    s.granade,
    s.granade1,
    s.granade2,
    s.granade3,
  ];
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 4, 17, 43),
      appBar: AppBar(
        title: Text(s.granades),
        backgroundColor: Colors.yellow,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [

              /// КНОПКИ РЕДКОСТИ
              SizedBox(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: rarities.length,
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
                                ? Colors.yellow
                                : Colors.white24,
                          ),
                          color: isSelected
                              ? Colors.yellow.withOpacity(0.15)
                              : Colors.transparent,
                        ),
                        child: Center(
                          child: Text(
                            rarities[index],
                            style: TextStyle(
                              color: isSelected
                                  ? Colors.yellow
                                  : Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 25),

              if (selectedIndex == 0) ...[
                GranadeButton(
                  title: s.granade4,
                  imagePath: "assets/images/granade.png",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const LeleScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                GranadeButton(
                  title: s.granade5,
                  imagePath: "assets/images/firecracker.png",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const FirecrackerScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                GranadeButton(
                  title: s.granade6,
                  imagePath: "assets/images/GasGranade.png",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const GasgranadeScreen(),
                      ),
                    );
                  },
                ),
              ],
              if (selectedIndex == 1) ...[
                GranadeButton(
                  title: s.granade7,
                  imagePath: "assets/images/Lure_Grenade.png",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const LureGrenadeScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                GranadeButton(
                  title: s.granade8,
                  imagePath: "assets/images/Seeker_Grenade.png",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const SeekerGrenadeScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                GranadeButton(
                  title: s.granade9,
                  imagePath: "assets/images/Snap_Blast_Grenade.png",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const SnapBlastGrenadeScreen(),
                      ),
                    );
                  },
                ),
              ],

              // РЕДКОЕ
              if (selectedIndex == 2) ...[
                GranadeButton(
                  title: s.granade10,
                  imagePath: "assets/images/Blaze_Grenade.png",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const BlazeGrenadeScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                GranadeButton(
                  title: s.granade11,
                  imagePath: "assets/images/Heavy_Fuze_Grenade.png",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const HeavyFuzeGrenadeScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                GranadeButton(
                  title: s.granade12,
                  imagePath: "assets/images/Showstopper.png",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const ShowstopperScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                GranadeButton(
                  title: s.granade13,
                  imagePath: "assets/images/Smoke_Grenade.png",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const SmokeGrenadeScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                GranadeButton(
                  title: s.granade14,
                  imagePath: "assets/images/Tagging_Grenade.png",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const TaggingGrenadeScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                GranadeButton(
                  title: s.granade15,
                  imagePath: "assets/images/Trailblazer.png",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const TrailblazerScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                GranadeButton(
                  title: s.granade16,
                  imagePath: "assets/images/TriggerNade.png",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const TriggernadeScreen(),
                      ),
                    );
                  },
                ),
              ],
              // ЭПИЧЕСКОЕ
              if (selectedIndex == 3) ...[
                GranadeButton(
                  title: s.granade17,
                  imagePath: "assets/images/Deadline.png",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const DeadlineScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                GranadeButton(
                  title: s.granade18,
                  imagePath: "assets/images/Wolfpack.png",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const WolfpackScreen(),
                      ),
                    );
                  },
                ),
            ],
          ],
          ),
        ),
      ),
    );
  }
}