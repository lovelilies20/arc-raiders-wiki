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

class LoadoutScreen extends StatefulWidget {
  const LoadoutScreen({super.key});

  @override
  State<LoadoutScreen> createState() => _LoadoutScreenState();
}

class _LoadoutScreenState extends State<LoadoutScreen> {
  int selectedIndex = 0;

  final rarities = [
    "АУГМЕНТ",
    "ЩИТЫ",
    "ЛЕЧЕНИЕ",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 4, 17, 43),
      appBar: AppBar(
        title: const Text("Снаряжение"),
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
                  title: "Combat Mk. 3 (Агрессивный)",
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
                  title: "Combat Mk. 3 (фланг)",
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
                  title: "Looting Mk. 3 (Осторожно)",
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
                  title: "Looting Mk. 3 (Безопасноть)",
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
                  title: "Looting Mk. 3 (Выживший)",
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
                  title: "Tactical Mk. 3 (Защитный)",
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
                  title: "Tactical Mk. 3 (Лечение)",
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
                  title: "Tactical Mk. 3 (Возрождение)",
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
                  title: "Легкий щит",
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
                  title: "Средний щит",
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
                  title: "Тяжелый щит",
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
                  title: "Бинт",
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
                  title: "Адреналин",
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
                  title: "Травяной бинт",
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
                  title: "Перезарядка щита",
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
                  title: "Стерилизованный бинт",
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
                  title: "Дефибриллятор",
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
                  title: "Быстрая перезарядка щита",
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
                  title: "Медицинский шприц",
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
                  title: "Спрей Vita",
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