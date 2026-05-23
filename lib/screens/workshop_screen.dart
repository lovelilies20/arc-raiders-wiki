import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../app_language.dart';
import '../app_strings.dart';

class _Level {
  final int lvl;
  final List<String> Function(AppStrings s) req;
  final List<String> Function(AppStrings s) crafts;
  const _Level(this.lvl, this.req, this.crafts);
}

class _Station {
  final String Function(AppStrings s) name;
  final List<_Level> levels;
  const _Station(this.name, this.levels);
}

final _stations = [
  _Station((s) => s.stationWorkbench, [
    _Level(1, (s) => [s.req1round], (s) => [
      s.itLootingMk1, s.itLightShield, 'Ferro', 'Hairpin', 'Kettle',
      'Stitcher', s.itLauncherAmmo, s.itHeavyAmmo, s.itLightAmmo,
      s.itMedAmmo, s.itShotgunAmmo, s.itShieldRech, s.itBandage, s.itLightImpact,
    ]),
  ]),
  _Station((s) => s.stationGunsmith, [
    _Level(1, (s) => [s.reqMetalParts, s.reqRubberParts], (s) => [
      'Ferro', 'Hairpin', 'Kettle', 'Rattler', 'Stitcher',
      s.itAngledGrip, s.itCompensator, s.itExtLightMag,
      s.itExtMedMag, s.itMuzzleBrake, s.itStableStock, s.itVertGrip,
    ]),
    _Level(2, (s) => [s.reqRustedTools, s.reqMechComp, s.reqWaspDriver], (s) => ['Arpeggio']),
    _Level(3, (s) => [s.reqRustedGear, s.reqAdvMech, s.reqSentinel], (s) => ['Bettina', 'Renegade', 'Hullcracker']),
  ]),
  _Station((s) => s.stationGearBench, [
    _Level(1, (s) => [s.reqPlastic, s.reqFabric30], (s) => [
      s.itLightShield, s.itMedShield, s.itCombatMk1, s.itLootingMk1, s.itTactMk1,
    ]),
    _Level(2, (s) => [s.reqPowerCable, s.reqElecComp, s.reqHornet], (s) => [
      s.itHeavyShield, s.itCombatMk2, s.itLootMk2, s.itTactMk2,
    ]),
    _Level(3, (s) => [s.reqBattery, s.reqAdvElec, s.reqBastion], (s) => [
      s.itCombatAggr, s.itCombatFlank, s.itLootCautious, s.itLootSurvivor,
      s.itTactDefensive, s.itTactHealing,
    ]),
  ]),
  _Station((s) => s.stationMedlab, [
    _Level(1, (s) => [s.reqFabric50, s.reqArcAlloy], (s) => [
      s.itHerbalBandage, s.itShieldRech, s.itAdrenaline, s.itBandage,
    ]),
    _Level(2, (s) => [s.reqBioscanner, s.reqDurableCloth, s.reqTickPod], (s) => [
      s.itSterileBandg, s.itSurgeShield,
    ]),
    _Level(3, (s) => [s.reqMedKit, s.reqAntiseptic, s.reqSurveyor], (s) => [
      s.itVitaSpray, s.itVitaShot,
    ]),
  ]),
  _Station((s) => s.stationExplosives, [
    _Level(1, (s) => [s.reqChemicals, s.reqArcAlloy], (s) => [s.itGasGrenade, s.itLightImpact]),
    _Level(2, (s) => [s.reqSynthFuel, s.reqCrudeExp, s.reqPopTrigger], (s) => [
      s.itBlazeGrenade, s.itShrapnel, s.itSnapBlast,
    ]),
    _Level(3, (s) => [s.reqLabReag, s.reqExpCompound, s.reqRocketeer], (s) => [
      s.itHeavyFuze, s.itExpMine, 'Wolfpack',
    ]),
  ]),
  _Station((s) => s.stationUtility, [
    _Level(1, (s) => [s.reqPlastic50, s.reqArcAlloy], (s) => [
      s.itBarricade, s.itBinoculars, s.itDoorBlocker, s.itFirecracker,
      s.itLilSmoke, s.itRaiderFlare, s.itSmokeGrenade,
    ]),
    _Level(2, (s) => [s.reqHeatSink, s.reqElecComp, s.reqSnitchScan], (s) => [
      s.itLureGrenade, s.itHatchKey, s.itZipline,
    ]),
    _Level(3, (s) => [s.reqMotherboard, s.reqAdvElec, s.reqLeaper], (s) => [
      s.itCloak, 'Snap Hook', s.itTagGrenade,
    ]),
  ]),
  _Station((s) => s.stationRefiner, [
    _Level(1, (s) => [s.reqMetal60, s.reqArcPower], (s) => [
      s.itCrudeExp, s.itDurableCloth, s.itElecComp, s.itMechComp,
    ]),
    _Level(2, (s) => [s.reqToaster, s.reqArcMotion, s.reqFireball], (s) => [
      s.itAdvElec, s.itAdvMech, s.itAntiseptic, s.itArcCircuit,
      s.itExpCompound, s.itGunParts, s.itModComp,
    ]),
    _Level(3, (s) => [s.reqMotor, s.reqArcCircuit, s.reqBombardier], (s) => [
      s.itMagAccel, s.itPowerRod, s.itComplexParts,
    ]),
  ]),
];

class WorkshopScreen extends StatefulWidget {
  const WorkshopScreen({super.key});
  @override
  State<WorkshopScreen> createState() => _WorkshopScreenState();
}

class _WorkshopScreenState extends State<WorkshopScreen> {
  int _tab = 0;

  @override
  Widget build(BuildContext context) {
    final lang = context.watch<AppLanguage>();
    final s = AppStrings.of(lang);
    final station = _stations[_tab];

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 4, 17, 43),
      appBar: AppBar(
        title: Text(s.workshopTitle),
        backgroundColor: Colors.yellow,
        foregroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _stations.length,
                itemBuilder: (context, i) {
                  final sel = i == _tab;
                  return GestureDetector(
                    onTap: () => setState(() => _tab = i),
                    child: Container(
                      margin: const EdgeInsets.only(right: 12),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: sel ? Colors.yellow : Colors.white24),
                        color: sel ? Colors.yellow.withOpacity(0.15) : Colors.transparent,
                      ),
                      child: Center(
                        child: Text(
                          _stations[i].name(s),
                          style: TextStyle(
                            color: sel ? Colors.yellow : Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: station.levels.map((lvl) => _LevelBlock(
                  level: lvl,
                  strings: s,
                  isLast: lvl.lvl == station.levels.last.lvl,
                )).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _LevelBlock extends StatelessWidget {
  final _Level level;
  final AppStrings strings;
  final bool isLast;
  const _LevelBlock({required this.level, required this.strings, required this.isLast});

  @override
  Widget build(BuildContext context) {
    final s = strings;
    return Padding(
      padding: const EdgeInsets.only(bottom: 28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('${s.level} ${level.lvl}',
            style: const TextStyle(color: Colors.yellow, fontSize: 13,
              fontWeight: FontWeight.bold, letterSpacing: 1.5)),
          const SizedBox(height: 12),
          Text(s.requirements, style: const TextStyle(color: Colors.white54, fontSize: 12, letterSpacing: 0.5)),
          const SizedBox(height: 6),
          ...level.req(s).map((r) => Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: Row(children: [
              const SizedBox(width: 4),
              Container(width: 4, height: 4, decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.yellow)),
              const SizedBox(width: 10),
              Expanded(child: Text(r, style: const TextStyle(color: Colors.white, fontSize: 15))),
            ]),
          )),
          const SizedBox(height: 14),
          Text(s.crafts, style: const TextStyle(color: Colors.white54, fontSize: 12, letterSpacing: 0.5)),
          const SizedBox(height: 6),
          ...level.crafts(s).map((c) => Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: Row(children: [
              const SizedBox(width: 4),
              Container(width: 4, height: 4, decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white.withOpacity(0.3))),
              const SizedBox(width: 10),
              Expanded(child: Text(c, style: const TextStyle(color: Colors.white, fontSize: 15))),
            ]),
          )),
          if (!isLast) ...[
            const SizedBox(height: 12),
            const Divider(color: Colors.white12, thickness: 0.5),
          ],
        ],
      ),
    );
  }
}

/*import 'package:flutter/material.dart';

class _Level {
  final int lvl;
  final List<String> req;
  final List<String> crafts;
  const _Level(this.lvl, this.req, this.crafts);
}

class _Station {
  final String name;
  final List<_Level> levels;
  const _Station(this.name, this.levels);
}

final _stations = [
  _Station('Верстак', [
    _Level(1, ['1 сыгранный раунд'], [
      'Looting Mk. 1', 'Легкий щит', 'Ферро', 'Hairpin', 'Kettle',
      'Stitcher', 'Launcher Ammo', 'Heavy Ammo', 'Light Ammo',
      'Medium Ammo', 'Shotgun Ammo', 'Shield Recharger', 'Bandage',
      'Light Impact Grenade',
    ]),
  ]),
  _Station('Оружейник', [
    _Level(1, ['20× Metal Parts', '30× Rubber Parts'], [
      'Ferro', 'Hairpin', 'Kettle', 'Rattler', 'Stitcher',
      'Angled Grip I', 'Compensator I', 'Extended Light Mag I',
      'Extended Medium Mag I', 'Muzzle Brake I', 'Stable Stock I',
      'Vertical Grip I',
    ]),
    _Level(2, ['3× Rusted Tools', '5× Mechanical Components', '8× Wasp Driver'], [
      'Arpeggio',
    ]),
    _Level(3, ['3× Rusted Gear', '5× Adv. Mechanical Components', '4× Sentinel Firing Core'], [
      'Bettina', 'Renegade', 'Hullcracker',
    ]),
  ]),
  _Station('Gear Bench', [
    _Level(1, ['25× Plastic Parts', '30× Fabric'], [
      'Light Shield', 'Medium Shield',
      'Combat Mk. 1', 'Looting Mk. 1', 'Tactical Mk. 1',
    ]),
    _Level(2, ['3× Power Cable', '5× Electrical Components', '5× Hornet Driver'], [
      'Heavy Shield', 'Combat Mk. 2', 'Looting Mk. 2', 'Tactical Mk. 2',
    ]),
    _Level(3, ['3× Industrial Battery', '5× Adv. Electrical Components', '6× Bastion Cell'], [
      'Combat Mk. 3 (Aggressive)', 'Combat Mk. 3 (Flanking)',
      'Looting Mk. 3 (Cautious)', 'Looting Mk. 3 (Survivor)',
      'Tactical Mk. 3 (Defensive)', 'Tactical Mk. 3 (Healing)',
    ]),
  ]),
  _Station('Медлаб', [
    _Level(1, ['50× Fabric', '6× ARC Alloy'], [
      'Herbal Bandage', 'Shield Recharger', 'Adrenaline Shot', 'Bandage',
    ]),
    _Level(2, ['2× Cracked Bioscanner', '5× Durable Cloth', '8× Tick Pod'], [
      'Sterilized Bandage', 'Surge Shield Recharger',
    ]),
    _Level(3, ['3× Rusted Shut Medical Kit', '8× Antiseptic', '5× Surveyor Vault'], [
      'Vita Spray', 'Vita Shot',
    ]),
  ]),
  _Station('Взрывчатка', [
    _Level(1, ['50× Chemicals', '6× ARC Alloy'], [
      'Gas Grenade', 'Light Impact Grenade',
    ]),
    _Level(2, ['3× Synthesized Fuel', '5× Crude Explosives', '5× Pop Trigger'], [
      'Blaze Grenade', 'Shrapnel Grenade', 'Snap Blast Grenade',
    ]),
    _Level(3, ['3× Laboratory Reagents', '5× Explosive Compound', '3× Rocketeer Driver'], [
      'Heavy Fuze Grenade', 'Explosive Mine', 'Wolfpack',
    ]),
  ]),
  _Station('Утилиты', [
    _Level(1, ['50× Plastic Parts', '6× ARC Alloy'], [
      'Barricade Kit', 'Binoculars', 'Door Blocker', 'Firecracker',
      "Li'l Smoke Grenade", 'Remote Raider Flare', 'Smoke Grenade',
    ]),
    _Level(2, ['2× Damaged Heat Sink', '5× Electrical Components', '6× Snitch Scanner'], [
      'Lure Grenade', 'Raider Hatch Key', 'Zipline',
    ]),
    _Level(3, ['3× Fried Motherboard', '5× Adv. Electrical Components', '4× Leaper Pulse Unit'], [
      'Photoelectric Cloak', 'Snap Hook', 'Tagging Grenade',
    ]),
  ]),
  _Station('Рафинер', [
    _Level(1, ['60× Metal Parts', '5× ARC Powercell'], [
      'Crude Explosives', 'Durable Cloth',
      'Electrical Components', 'Mechanical Components',
    ]),
    _Level(2, ['3× Toaster', '5× ARC Motion Core', '8× Fireball Burner'], [
      'Adv. Electrical Components', 'Adv. Mechanical Components',
      'Antiseptic', 'ARC Circuitry', 'Explosive Compound',
      'Heavy/Light/Medium Gun Parts', 'Mod Components',
    ]),
    _Level(3, ['3× Motor', '10× ARC Circuitry', '6× Bombardier Cell'], [
      'Magnetic Accelerator', 'Power Rod', 'Complex Gun Parts',
    ]),
  ]),
];

class WorkshopScreen extends StatefulWidget {
  const WorkshopScreen({super.key});

  @override
  State<WorkshopScreen> createState() => _WorkshopScreenState();
}

class _WorkshopScreenState extends State<WorkshopScreen> {
  int _tab = 0;

  @override
  Widget build(BuildContext context) {
    final station = _stations[_tab];

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 4, 17, 43),
      appBar: AppBar(
        title: const Text('Мастерская'),
        backgroundColor: Colors.yellow,
        foregroundColor: Colors.black,
      ),
      body: Column(
        children: [
          // Вкладки — точно как в granade_screen.dart
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _stations.length,
                itemBuilder: (context, i) {
                  final sel = i == _tab;
                  return GestureDetector(
                    onTap: () => setState(() => _tab = i),
                    child: Container(
                      margin: const EdgeInsets.only(right: 12),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: sel ? Colors.yellow : Colors.white24,
                        ),
                        color: sel
                            ? Colors.yellow.withOpacity(0.15)
                            : Colors.transparent,
                      ),
                      child: Center(
                        child: Text(
                          _stations[i].name,
                          style: TextStyle(
                            color: sel ? Colors.yellow : Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),

          const SizedBox(height: 20),

          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: station.levels
                    .map((lvl) => _LevelBlock(
                          level: lvl,
                          isLast: lvl.lvl == station.levels.last.lvl,
                        ))
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _LevelBlock extends StatelessWidget {
  final _Level level;
  final bool isLast;
  const _LevelBlock({required this.level, required this.isLast});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Заголовок уровня
          Text(
            'УРОВЕНЬ ${level.lvl}',
            style: const TextStyle(
              color: Colors.yellow,
              fontSize: 13,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5,
            ),
          ),
          const SizedBox(height: 12),

          // Требования
          const Text(
            'Требования',
            style: TextStyle(
              color: Colors.white54,
              fontSize: 12,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 6),
          ...level.req.map(
            (r) => Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Row(
                children: [
                  const SizedBox(width: 4),
                  Container(
                    width: 4,
                    height: 4,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.yellow,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    r,
                    style: const TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 14),

          // Крафтится
          const Text(
            'Крафтится',
            style: TextStyle(
              color: Colors.white54,
              fontSize: 12,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 6),
          ...level.crafts.map(
            (c) => Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Row(
                children: [
                  const SizedBox(width: 4),
                  Container(
                    width: 4,
                    height: 4,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withOpacity(0.3),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    c,
                    style: const TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ],
              ),
            ),
          ),

          if (!isLast) ...[
            const SizedBox(height: 12),
            const Divider(color: Colors.white12, thickness: 0.5),
          ],
        ],
      ),
    );
  }
}*/