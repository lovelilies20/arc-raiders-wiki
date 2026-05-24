import 'package:arc_raiders/screens/weapons/Anvil.dart';
import 'package:arc_raiders/screens/weapons/Aphelion.dart';
import 'package:arc_raiders/screens/weapons/Arpeggio.dart';
import 'package:arc_raiders/screens/weapons/Bettina.dart';
import 'package:arc_raiders/screens/weapons/Bobcat.dart';
import 'package:arc_raiders/screens/weapons/Burletta.dart';
import 'package:arc_raiders/screens/weapons/Canto.dart';
import 'package:arc_raiders/screens/weapons/Dolabra.dart';
import 'package:arc_raiders/screens/weapons/Equalizer.dart';
import 'package:arc_raiders/screens/weapons/Ferro.dart';
import 'package:arc_raiders/screens/weapons/Hullcracker.dart';
import 'package:arc_raiders/screens/weapons/Il_Toro.dart';
import 'package:arc_raiders/screens/weapons/Jupiter.dart';
import 'package:arc_raiders/screens/weapons/Kettle.dart';
import 'package:arc_raiders/screens/weapons/Osprey.dart';
import 'package:arc_raiders/screens/weapons/Rattler.dart';
import 'package:arc_raiders/screens/weapons/Renegade.dart';
import 'package:arc_raiders/screens/weapons/Tempest.dart';
import 'package:arc_raiders/screens/weapons/Torrente.dart';
import 'package:arc_raiders/screens/weapons/Venator.dart';
import 'package:arc_raiders/screens/weapons/Vulcano.dart';
import 'package:flutter/material.dart';
import 'package:arc_raiders/main.dart';
import 'package:arc_raiders/screens/weapons/Stitcher.dart';
import 'package:arc_raiders/widgets/weapon_button.dart';
import 'package:provider/provider.dart';
import 'package:arc_raiders/app_language.dart';
import 'package:arc_raiders/app_strings.dart';

class WeaponsScreen extends StatefulWidget {
  const WeaponsScreen({super.key});

  @override
  State<WeaponsScreen> createState() => _WeaponsScreenState();
}

class _WeaponsScreenState extends State<WeaponsScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final s = AppStrings.of(context.watch<AppLanguage>());
    final rarities = [
    s.obich,
    s.neobich,
    s.redkoe,
    s.epic,
    s.legendary,
  ];
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 4, 17, 43),
      appBar: AppBar(
        title: Text(s.weapon),
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
                WeaponButton(
                  title: s.stitcher,
                  imagePath: "assets/images/stitcher.jpg",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => StitcherScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                  WeaponButton(
                  title: s.rattler,
                  imagePath: "assets/images/rattler.jpg",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const RattlerScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                WeaponButton(
                  title: s.ferro,
                  imagePath: "assets/images/ferro.jpg",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const FerroScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                WeaponButton(
                  title: s.kettle,
                  imagePath: "assets/images/Kettle.jpg",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const KettleScreen(),
                      ),
                    );
                  },
                ),
              ],
              if (selectedIndex == 1) ...[
                WeaponButton(
                  title: s.brulleta,
                  imagePath: "assets/images/brulleta.jpg",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const BurlettaScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                WeaponButton(
                  title: s.anvil,
                  imagePath: "assets/images/anvil.jpg",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const AnvilScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                WeaponButton(
                  title: s.arped,
                  imagePath: "assets/images/arpedgio.jpg",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const ArpeggioScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                WeaponButton(
                  title: s.iltoro,
                  imagePath: "assets/images/il_toro.jpg",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const IlToroScreen(),
                      ),
                    );
                  },
                ),
              ],

              // РЕДКОЕ
              if (selectedIndex == 2) ...[
                WeaponButton(
                  title: s.buntar,
                  imagePath: "assets/images/renegade.jpg",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const RenegadeScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                WeaponButton(
                  title: s.venator,
                  imagePath: "assets/images/venator.jpg",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const VenatorScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                WeaponButton(
                  title: s.torrente,
                  imagePath: "assets/images/torrente.jpg",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const TorrenteScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                WeaponButton(
                  title: s.ospray,
                  imagePath: "assets/images/osprey.jpg",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const OspreyScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                WeaponButton(
                  title: s.canto,
                  imagePath: "assets/images/canto.jpg",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const CantoScreen(),
                      ),
                    );
                  },
                ),
              ],
              // ЭПИЧЕСКОЕ
              if (selectedIndex == 3) ...[
                WeaponButton(
                  title: s.bettina,
                  imagePath: "assets/images/bettina.jpg",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const BettinaScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                WeaponButton(
                  title: s.tempest,
                  imagePath: "assets/images/tempest.jpg",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const TempestScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                WeaponButton(
                  title: s.vulcan,
                  imagePath: "assets/images/vulcano.jpg",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const VulcanoScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                WeaponButton(
                  title: s.bobcat,
                  imagePath: "assets/images/bobcat.jpg",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const BobcatScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                WeaponButton(
                  title: s.hullcracker,
                  imagePath: "assets/images/hullcracker.jpg",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const HullcrackerScreen(),
                      ),
                    );
                  },
                ),
              ],

              /// ЛЕГЕНДАРНОЕ
              if (selectedIndex == 4) ...[
                WeaponButton(
                  title: s.afeliy,
                  imagePath: "assets/images/aphelion.jpg",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const AphelionScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                WeaponButton(
                  title: s.dolabra,
                  imagePath: "assets/images/dolabra.jpg",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const DolabraScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                WeaponButton(
                  title: s.jupiter,
                  imagePath: "assets/images/jupiter.jpg",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const JupiterScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
                WeaponButton(
                  title: s.equa,
                  imagePath: "assets/images/equa.jpg",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const EqualizerScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
              ],
            ],
          ),
        ),
      ),
    );
  }
}