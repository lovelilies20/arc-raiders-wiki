import 'package:arc_raiders/screens/granades/Blaze_Grenade.dart';
import 'package:arc_raiders/screens/granades/Heavy_Fuze_Grenade.dart';
import 'package:arc_raiders/screens/granades/Showstopper.dart';
import 'package:arc_raiders/screens/granades/Smoke_Grenade.dart';
import 'package:arc_raiders/screens/granades/Tagging_Grenade.dart';
import 'package:arc_raiders/screens/granades/Trailblazer.dart';
import 'package:arc_raiders/screens/granades/Trigger_Nade.dart';
import 'package:arc_raiders/screens/loadout/Combat_Mk._1.dart';
import 'package:arc_raiders/screens/loadout/Combat_Mk._2.dart';
import 'package:arc_raiders/screens/loadout/Combat_Mk._3_(Aggressive).dart';
import 'package:arc_raiders/screens/loadout/Combat_Mk._3_(Flanking).dart';
import 'package:arc_raiders/screens/loadout/Heavy_Shield.dart';
import 'package:arc_raiders/screens/loadout/Light_Shield.dart';
import 'package:arc_raiders/screens/loadout/Looting_Mk._1.dart';
import 'package:arc_raiders/screens/loadout/Looting_Mk._2.dart';
import 'package:arc_raiders/screens/loadout/Looting_Mk._3_(Cautious).dart';
import 'package:arc_raiders/screens/loadout/Looting_Mk._3_(Safekeeper).dart';
import 'package:arc_raiders/screens/loadout/Looting_Mk._3_(Survivor).dart';
import 'package:arc_raiders/screens/loadout/Medium_Shield.dart';
import 'package:arc_raiders/screens/loadout/Tactical_Mk._1.dart';
import 'package:arc_raiders/screens/loadout/Tactical_Mk._2.dart';
import 'package:arc_raiders/screens/loadout/Tactical_Mk._3_(Defensive).dart';
import 'package:arc_raiders/screens/loadout/Tactical_Mk._3_(Healing).dart';
import 'package:arc_raiders/screens/loadout/Tactical_Mk._3_(Revival).dart';
import 'package:arc_raiders/screens/medkits/Adrenaline_Shot.dart';
import 'package:arc_raiders/screens/medkits/Bandage.dart';
import 'package:arc_raiders/screens/medkits/Defibrillator.dart';
import 'package:arc_raiders/screens/medkits/Herbal_Bandage.dart';
import 'package:arc_raiders/screens/medkits/Shield_Recharger.dart';
import 'package:arc_raiders/screens/medkits/Sterilized_Bandage.dart';
import 'package:arc_raiders/screens/medkits/Surge_Shield_Recharger.dart';
import 'package:arc_raiders/screens/medkits/Vita_Shot.dart';
import 'package:arc_raiders/screens/medkits/Vita_Spray.dart';
import 'package:flutter/material.dart';
import 'package:arc_raiders/main.dart';
import 'package:arc_raiders/widgets/granade_button.dart';
import 'package:provider/provider.dart';
import 'package:arc_raiders/app_language.dart';
import 'package:arc_raiders/app_strings.dart';

class LoadoutScreen extends StatefulWidget {
  const LoadoutScreen({super.key});

  @override
  State<LoadoutScreen> createState() => _LoadoutScreenState();
}

class _LoadoutScreenState extends State<LoadoutScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final s = AppStrings.of(context.watch<AppLanguage>());
    final rarities = [
    s.dud,
    s.dud1,
    s.dud2,
  ];
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 4, 17, 43),
      appBar: AppBar(
        title: Text(s.gears),
        backgroundColor: Colors.yellow,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
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
                  title: "Combat Mk. 1",
                  imagePath: "assets/images/Combat_Mk._1.png",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const CombatMk1Screen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                GranadeButton(
                  title: "Looting Mk. 1",
                  imagePath: "assets/images/Looting_Mk._1.png",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const LootingMk1Screen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                GranadeButton(
                  title: "Tactical Mk. 1",
                  imagePath: "assets/images/Tactical_Mk._1.png",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const TacticalMk1Screen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                GranadeButton(
                  title: "Combat Mk. 2",
                  imagePath: "assets/images/Combat_Mk._2.png",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const CombatMk2Screen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                GranadeButton(
                  title: "Looting Mk. 2",
                  imagePath: "assets/images/Looting_Mk._2.png",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const LootingMk2Screen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                GranadeButton(
                  title: "Tactical Mk. 2",
                  imagePath: "assets/images/Tactical_Mk._2.png",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const TacticalMk2Screen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                GranadeButton(
                  title: "Combat Mk. 3 (Aggressive)",
                  imagePath: "assets/images/Combat_Mk._3_(Aggressive) copy.png",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const CombatMk3AScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                GranadeButton(
                  title: "Combat Mk. 3 (Flanking)",
                  imagePath: "assets/images/Combat_Mk._3_(Flanking) copy.png",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const CombatMk3FScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                GranadeButton(
                  title: "Looting Mk. 3 (Cautious)",
                  imagePath: "assets/images/Looting_Mk._3_(Cautious) copy.png",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const LootingMk3CScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                GranadeButton(
                  title: "Looting Mk. 3 (Safekeeper)",
                  imagePath: "assets/images/Looting_Mk._3_(Safekeeper) copy.png",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const LootingMk3SScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                GranadeButton(
                  title: "Looting Mk. 3 (Survivor)",
                  imagePath: "assets/images/Looting_Mk._3_(Survivor) copy.png",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const LootingMk3SuScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                GranadeButton(
                  title: "Tactical Mk. 3 (Defensive)",
                  imagePath: "assets/images/Tactical_Mk._3_(Defensive) copy.png",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const TacticalMk3DScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                GranadeButton(
                  title: "Tactical Mk. 3 (Healing)",
                  imagePath: "assets/images/Tactical_Mk._3_(Healing) copy.png",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const TacticalMk3HScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                GranadeButton(
                  title: "Tactical Mk. 3 (Revival)",
                  imagePath: "assets/images/Tactical_Mk._3_(Revival) copy.png",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const TacticalMk3RScreen(),
                      ),
                    );
                  },
                ),
              ],
              if (selectedIndex == 1) ...[
                const SizedBox(height: 12),
                GranadeButton(
                  title: s.lightShield1,
                  imagePath: "assets/images/Light_Shield.png",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const LightShieldScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                GranadeButton(
                  title: s.mediumShield1,
                  imagePath: "assets/images/Medium_Shield.png",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const MediumShieldScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                GranadeButton(
                  title: s.heavyShield1,
                  imagePath: "assets/images/Heavy_Shield.png",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const HeavyShieldScreen(),
                      ),
                    );
                  },
                ),
              ],
              if (selectedIndex == 2) ...[
                GranadeButton(
                  title: s.band,
                  imagePath: "assets/images/Bandage copy.png",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const BandageScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                GranadeButton(
                  title: s.adrentt,
                  imagePath: "assets/images/Adrenaline_Shot copy.png",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const AdrenalineShotScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                GranadeButton(
                  title: s.herbal,
                  imagePath: "assets/images/Herbal_Bandage copy.png",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const HerbalBandageScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                GranadeButton(
                  title: s.rechar,
                  imagePath: "assets/images/Shield_Recharger copy.png",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const ShieldRechargerScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                GranadeButton(
                  title: s.steril,
                  imagePath: "assets/images/Sterilized_Bandage copy.png",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const SterilizedBandageScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                GranadeButton(
                  title: s.defib,
                  imagePath: "assets/images/Defibrillator copy.png",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const DefibrillatorScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                GranadeButton(
                  title: s.surge,
                  imagePath: "assets/images/Surge_Shield_Recharger copy.png",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const SurgeShieldRechargerScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                GranadeButton(
                  title: s.vitaShot,
                  imagePath: "assets/images/Vita_Shot copy.png",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const VitaShotScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                GranadeButton(
                  title: s.vitaSpray,
                  imagePath: "assets/images/Vita_Spray copy.png",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const VitaSprayScreen(),
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