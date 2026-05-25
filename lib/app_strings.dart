import 'package:arc_raiders/screens/weapons/Aphelion.dart';

import 'app_language.dart';

class AppStrings {
  final bool isRussian;
  const AppStrings(this.isRussian);
  factory AppStrings.of(AppLanguage lang) => AppStrings(lang.isRussian);
  //Главное меню
  String get history       => isRussian ? 'ИСТОРИЯ' : 'HISTORY';
  String get speranza      => isRussian ? 'СПЕРАНЦА'           : 'SPERANZA';
  String get arc           => isRussian ? 'ARC'                : 'ARC';
  String get weapons       => isRussian ? 'ОРУЖИЕ / СНАРЯЖЕНИЕ': 'WEAPONS / GEAR';
  String get workshop      => isRussian ? 'МАСТЕРСКАЯ'         : 'WORKSHOP';
  String get maps          => isRussian ? 'КАРТЫ / СОБЫТИЯ'    : 'MAPS / EVENTS';
  String get settings      => isRussian ? 'НАСТРОЙКИ'          : 'SETTINGS';
  //Настройки
  String get settingsTitle => isRussian ? 'Настройки'          : 'Settings';
  String get language      => isRussian ? 'Язык'               : 'Language';
  String get russian       => isRussian ? 'Русский'            : 'Russian';
  String get english       => isRussian ? 'Английский'         : 'English';

  // ── Мастерская — UI ──────────────────────────
  String get workshopTitle  => isRussian ? 'Мастерская'        : 'Workshop';
  String get requirements   => isRussian ? 'Требования'        : 'Requirements';
  String get crafts         => isRussian ? 'Крафтится'         : 'Crafted here';
  String get level          => isRussian ? 'УРОВЕНЬ'           : 'LEVEL';

  // ── Мастерская — названия станций ────────────
  String get stationWorkbench  => isRussian ? 'Верстак'         : 'Workbench';
  String get stationGunsmith   => isRussian ? 'Оружейник'       : 'Gunsmith';
  String get stationGearBench  => isRussian ? 'Стол снаряжения' : 'Gear Bench';
  String get stationMedlab     => isRussian ? 'Медлаб'          : 'Medical Lab';
  String get stationExplosives => isRussian ? 'Взрывчатка'      : 'Explosives';
  String get stationUtility    => isRussian ? 'Утилиты'         : 'Utility';
  String get stationRefiner    => isRussian ? 'Рафинер'         : 'Refiner';

  // ── Мастерская — требования ───────────────────
  String get req1round      => isRussian ? '1 сыгранный раунд'           : '1 completed round';

  // Оружейник
  String get reqMetalParts  => isRussian ? '20× Металлические детали'    : '20× Metal Parts';
  String get reqRubberParts => isRussian ? '30× Резиновые детали'         : '30× Rubber Parts';
  String get reqRustedTools => isRussian ? '3× Ржавые инструменты'        : '3× Rusted Tools';
  String get reqMechComp    => isRussian ? '5× Механические компоненты'   : '5× Mechanical Components';
  String get reqWaspDriver  => isRussian ? '8× Wasp Driver'               : '8× Wasp Driver';
  String get reqRustedGear  => isRussian ? '3× Ржавые шестерни'           : '3× Rusted Gear';
  String get reqAdvMech     => isRussian ? '5× Продв. мех. компоненты'    : '5× Adv. Mechanical Components';
  String get reqSentinel    => isRussian ? '4× Sentinel Firing Core'      : '4× Sentinel Firing Core';

  // Стол снаряжения
  String get reqPlastic     => isRussian ? '25× Пластиковые детали'       : '25× Plastic Parts';
  String get reqFabric30    => isRussian ? '30× Ткань'                    : '30× Fabric';
  String get reqPowerCable  => isRussian ? '3× Силовой кабель'            : '3× Power Cable';
  String get reqElecComp    => isRussian ? '5× Электрические компоненты'  : '5× Electrical Components';
  String get reqHornet      => isRussian ? '5× Hornet Driver'             : '5× Hornet Driver';
  String get reqBattery     => isRussian ? '3× Промышленный аккумулятор'  : '3× Industrial Battery';
  String get reqAdvElec     => isRussian ? '5× Продв. эл. компоненты'     : '5× Adv. Electrical Components';
  String get reqBastion     => isRussian ? '6× Bastion Cell'              : '6× Bastion Cell';

  // Медлаб
  String get reqFabric50    => isRussian ? '50× Ткань'                    : '50× Fabric';
  String get reqArcAlloy    => isRussian ? '6× Сплав ARC'                 : '6× ARC Alloy';
  String get reqBioscanner  => isRussian ? '2× Треснутый биосканер'        : '2× Cracked Bioscanner';
  String get reqDurableCloth=> isRussian ? '5× Прочная ткань'             : '5× Durable Cloth';
  String get reqTickPod     => isRussian ? '8× Tick Pod'                  : '8× Tick Pod';
  String get reqMedKit      => isRussian ? '3× Ржавая аптечка'            : '3× Rusted Shut Medical Kit';
  String get reqAntiseptic  => isRussian ? '8× Антисептик'                : '8× Antiseptic';
  String get reqSurveyor    => isRussian ? '5× Surveyor Vault'            : '5× Surveyor Vault';

  // Взрывчатка
  String get reqChemicals   => isRussian ? '50× Химикаты'                 : '50× Chemicals';
  String get reqSynthFuel   => isRussian ? '3× Синтетическое топливо'      : '3× Synthesized Fuel';
  String get reqCrudeExp    => isRussian ? '5× Грубая взрывчатка'          : '5× Crude Explosives';
  String get reqPopTrigger  => isRussian ? '5× Pop Trigger'               : '5× Pop Trigger';
  String get reqLabReag     => isRussian ? '3× Лабораторные реагенты'      : '3× Laboratory Reagents';
  String get reqExpCompound => isRussian ? '5× Взрывное соединение'        : '5× Explosive Compound';
  String get reqRocketeer   => isRussian ? '3× Rocketeer Driver'          : '3× Rocketeer Driver';

  // Утилиты
  String get reqPlastic50   => isRussian ? '50× Пластиковые детали'        : '50× Plastic Parts';
  String get reqHeatSink    => isRussian ? '2× Повреждённый теплоотвод'    : '2× Damaged Heat Sink';
  String get reqSnitchScan  => isRussian ? '6× Snitch Scanner'            : '6× Snitch Scanner';
  String get reqMotherboard => isRussian ? '3× Сгоревшая материнская плата': '3× Fried Motherboard';
  String get reqLeaper      => isRussian ? '4× Leaper Pulse Unit'         : '4× Leaper Pulse Unit';

  // Рафинер
  String get reqMetal60     => isRussian ? '60× Металлические детали'      : '60× Metal Parts';
  String get reqArcPower    => isRussian ? '5× Элемент питания ARC'        : '5× ARC Powercell';
  String get reqToaster     => isRussian ? '3× Тостер'                    : '3× Toaster';
  String get reqArcMotion   => isRussian ? '5× Двигательное ядро ARC'      : '5× ARC Motion Core';
  String get reqFireball    => isRussian ? '8× Fireball Burner'           : '8× Fireball Burner';
  String get reqMotor       => isRussian ? '3× Мотор'                     : '3× Motor';
  String get reqArcCircuit  => isRussian ? '10× Схемы ARC'                : '10× ARC Circuitry';
  String get reqBombardier  => isRussian ? '6× Bombardier Cell'           : '6× Bombardier Cell';

  // ── Мастерская — предметы крафта ─────────────

  // Верстак
  String get itLootingMk1   => isRussian ? 'Мародёрство Mk. 1'            : 'Looting Mk. 1';
  String get itLightShield  => isRussian ? 'Лёгкий щит'                   : 'Light Shield';
  String get itLauncherAmmo => isRussian ? 'Патроны для пусковой'         : 'Launcher Ammo';
  String get itHeavyAmmo    => isRussian ? 'Тяжёлые патроны'              : 'Heavy Ammo';
  String get itLightAmmo    => isRussian ? 'Лёгкие патроны'               : 'Light Ammo';
  String get itMedAmmo      => isRussian ? 'Средние патроны'              : 'Medium Ammo';
  String get itShotgunAmmo  => isRussian ? 'Дробовые патроны'             : 'Shotgun Ammo';
  String get itShieldRech   => isRussian ? 'Зарядник щита'                : 'Shield Recharger';
  String get itBandage      => isRussian ? 'Бинт'                         : 'Bandage';
  String get itLightImpact  => isRussian ? 'Лёгкая ударная граната'       : 'Light Impact Grenade';

  // Оружейник — моды
  String get itAngledGrip   => isRussian ? 'Угловая рукоять I'            : 'Angled Grip I';
  String get itCompensator  => isRussian ? 'Компенсатор I'                : 'Compensator I';
  String get itExtLightMag  => isRussian ? 'Удлинённый магазин (лёгк.) I' : 'Extended Light Mag I';
  String get itExtMedMag    => isRussian ? 'Удлинённый магазин (средн.) I': 'Extended Medium Mag I';
  String get itMuzzleBrake  => isRussian ? 'Дульный тормоз I'             : 'Muzzle Brake I';
  String get itStableStock  => isRussian ? 'Устойчивый приклад I'         : 'Stable Stock I';
  String get itVertGrip     => isRussian ? 'Вертикальная рукоять I'       : 'Vertical Grip I';

  // Стол снаряжения
  String get itMedShield    => isRussian ? 'Средний щит'                  : 'Medium Shield';
  String get itHeavyShield  => isRussian ? 'Тяжёлый щит'                  : 'Heavy Shield';
  String get itCombatMk1    => isRussian ? 'Боевой Mk. 1'                 : 'Combat Mk. 1';
  String get itTactMk1      => isRussian ? 'Тактический Mk. 1'            : 'Tactical Mk. 1';
  String get itCombatMk2    => isRussian ? 'Боевой Mk. 2'                 : 'Combat Mk. 2';
  String get itLootMk2      => isRussian ? 'Мародёрство Mk. 2'            : 'Looting Mk. 2';
  String get itTactMk2      => isRussian ? 'Тактический Mk. 2'            : 'Tactical Mk. 2';
  String get itCombatAggr   => isRussian ? 'Боевой Mk. 3 (Агрессивный)'   : 'Combat Mk. 3 (Aggressive)';
  String get itCombatFlank  => isRussian ? 'Боевой Mk. 3 (Фланговый)'     : 'Combat Mk. 3 (Flanking)';
  String get itLootCautious => isRussian ? 'Мародёрство Mk. 3 (Осторожный)': 'Looting Mk. 3 (Cautious)';
  String get itLootSurvivor => isRussian ? 'Мародёрство Mk. 3 (Выживший)' : 'Looting Mk. 3 (Survivor)';
  String get itTactDefensive=> isRussian ? 'Тактический Mk. 3 (Защитный)' : 'Tactical Mk. 3 (Defensive)';
  String get itTactHealing  => isRussian ? 'Тактический Mk. 3 (Лечебный)' : 'Tactical Mk. 3 (Healing)';

  // Медлаб
  String get itHerbalBandage=> isRussian ? 'Травяной бинт'                : 'Herbal Bandage';
  String get itAdrenaline   => isRussian ? 'Укол адреналина'              : 'Adrenaline Shot';
  String get itSterileBandg => isRussian ? 'Стерилизованный бинт'         : 'Sterilized Bandage';
  String get itSurgeShield  => isRussian ? 'Быстрый зарядник щита'        : 'Surge Shield Recharger';
  String get itVitaSpray    => isRussian ? 'Спрей Vita'                   : 'Vita Spray';
  String get itVitaShot     => isRussian ? 'Укол Vita'                    : 'Vita Shot';

  // Взрывчатка
  String get itGasGrenade   => isRussian ? 'Газовая граната'              : 'Gas Grenade';
  String get itBlazeGrenade => isRussian ? 'Огненная граната'             : 'Blaze Grenade';
  String get itShrapnel     => isRussian ? 'Осколочная граnade'           : 'Shrapnel Grenade';
  String get itSnapBlast    => isRussian ? 'Граната Snap Blast'           : 'Snap Blast Grenade';
  String get itHeavyFuze    => isRussian ? 'Тяжёлая граната Fuze'         : 'Heavy Fuze Grenade';
  String get itExpMine      => isRussian ? 'Взрывная мина'                : 'Explosive Mine';

  // Утилиты
  String get itBarricade    => isRussian ? 'Комплект баррикады'           : 'Barricade Kit';
  String get itBinoculars   => isRussian ? 'Бинокль'                      : 'Binoculars';
  String get itDoorBlocker  => isRussian ? 'Блокиратор дверей'            : 'Door Blocker';
  String get itFirecracker  => isRussian ? 'Фейерверкер'                  : 'Firecracker';
  String get itLilSmoke     => isRussian ? 'Малая дымовая граната'         : "Li'l Smoke Grenade";
  String get itRaiderFlare  => isRussian ? 'Сигнальная ракета рейдера'    : 'Remote Raider Flare';
  String get itSmokeGrenade => isRussian ? 'Дымовая граната'              : 'Smoke Grenade';
  String get itLureGrenade  => isRussian ? 'Приманочная граната'          : 'Lure Grenade';
  String get itHatchKey     => isRussian ? 'Ключ от люка рейдера'         : 'Raider Hatch Key';
  String get itZipline      => isRussian ? 'Трос'                         : 'Zipline';
  String get itCloak        => isRussian ? 'Фотоэлектрический плащ'       : 'Photoelectric Cloak';
  String get itTagGrenade   => isRussian ? 'Маркировочная граната'         : 'Tagging Grenade';

  // Рафинер
  String get itCrudeExp     => isRussian ? 'Грубая взрывчатка'            : 'Crude Explosives';
  String get itDurableCloth => isRussian ? 'Прочная ткань'                : 'Durable Cloth';
  String get itElecComp     => isRussian ? 'Электрические компоненты'     : 'Electrical Components';
  String get itMechComp     => isRussian ? 'Механические компоненты'      : 'Mechanical Components';
  String get itAdvElec      => isRussian ? 'Продв. электрические компоненты': 'Adv. Electrical Components';
  String get itAdvMech      => isRussian ? 'Продв. механические компоненты': 'Adv. Mechanical Components';
  String get itAntiseptic   => isRussian ? 'Антисептик'                   : 'Antiseptic';
  String get itArcCircuit   => isRussian ? 'Схемы ARC'                    : 'ARC Circuitry';
  String get itExpCompound  => isRussian ? 'Взрывное соединение'           : 'Explosive Compound';
  String get itGunParts     => isRussian ? 'Запчасти для оружия (тяж./лёгк./средн.)': 'Heavy/Light/Medium Gun Parts';
  String get itModComp      => isRussian ? 'Компоненты модификаций'       : 'Mod Components';
  String get itMagAccel     => isRussian ? 'Магнитный ускоритель'          : 'Magnetic Accelerator';
  String get itPowerRod     => isRussian ? 'Силовой стержень'             : 'Power Rod';
  String get itComplexParts => isRussian ? 'Сложные запчасти для оружия'  : 'Complex Gun Parts';

//Экран ARC
String get arcTitle      => isRussian ? 'История'            : 'ARC';
String get arcHeader     => isRussian ? 'ARC'                : 'ARC';
String get arcCatSec     => isRussian ? 'СЛУЖБА БЕЗОПАСНОСТИ': 'SECURITY';
String get arcCatInd     => isRussian ? 'ПРОМЫШЛЕННЫЕ'       : 'INDUSTRIAL';

//Названия врагов
String get arcWasp       => isRussian ? 'Оса'                : 'Wasp';
String get arcHornet     => isRussian ? 'Шершень'            : 'Hornet';
String get arcSnitch     => isRussian ? 'Стукач'             : 'Snitch';
String get arcPop        => isRussian ? 'Взрывобот'          : 'Pop';
String get arcFireball   => isRussian ? 'Огнешар'            : 'Fireball';
String get arcTick       => isRussian ? 'Клещ'               : 'Tick';
String get arcTurret     => isRussian ? 'Турель'             : 'Turret';
String get arcRocketeer  => isRussian ? 'Ракетчик'           : 'Rocketeer';
String get arcLeaper     => isRussian ? 'Прыгун'             : 'Leaper';
String get arcBastion    => isRussian ? 'Бастион'            : 'Bastion';
String get arcBombardier => isRussian ? 'Бомбардир'          : 'Bombardier';
String get arcSpotter    => isRussian ? 'Наводчик'           : 'Spotter';
String get arcSentinel   => isRussian ? 'Часовой'            : 'Sentinel';
String get arcShredder   => isRussian ? 'Шредер'             : 'Shredder';
String get arcMatriarch  => isRussian ? 'Матриарх'           : 'Matriarch';
String get arcQueen      => isRussian ? 'Королева'           : 'The Queen';
String get arcProbe      => isRussian ? 'Зонд ARC'           : 'ARC Probe';
String get arcCourier    => isRussian ? 'Доставщик ARC'      : 'ARC Courier';
String get arcSurveyor   => isRussian ? 'Наблюдатель'        : 'Surveyor';
String get arcHarvester  => isRussian ? 'Сборщик ARC'        : 'ARC Harvester';

String get arcLore => isRussian
  ? 'Всё время, пока машины падали с небес, жители Поверхности называли их только одним именем: ARC. '
    'Это название они получили в самом начале Первой волны, когда машины ARC, прибывшие на планету, '
    'чтобы положить внезапный и разрушительный конец обнадеживающей эпохе Рассвета, оставляли на экранах '
    'радаров изогнутые следы, напоминающие арки.\n\n'
    'Рейдеры могут лишь предполагать, что нужно ARC, однако одно известно точно: машины в огромном количестве зондируют '
    'почву, а затем чудовищно эффективно добывают природные ресурсы планеты. Именно поэтому резкая смена деятельности '
    'ARC вызывает у рейдеров огромные опасения.\n\n'
    'Были приняты меры, но по Сперанце всё равно поползли слухи.\n\n'
    'Позже этот же сигнал слышали возле убежища у красной вышки в Погребенном городе.\n\n'
    'Считается, что силы безопасности ARC постоянно обновляют свои конструкции и тактику, адаптируясь под новые угрозы. '
    'Это особенно заметно, если сравнить примитивные машины Первой волны и сложные механизмы Второй.\n\n'
    'Рейдеры ведут непрекращающуюся гонку вооружений со своими орбитальными врагами и постоянно пытаются перехитрить их '
    'с помощью продвинутого оружия и переработанной тактики.\n\n'
    'Изобретатели со всего Толедо пытаются использовать технологии ARC, чтобы вырваться вперед, и уже добились некоторых '
    'успехов: так появился энергетический щит и различные самодельные гаджеты и гранаты.'
  : 'Ever since the machines began falling from the sky, the Surface dwellers have known them by one name: ARC. '
    'The name dates back to the very beginning of the First Wave, when the ARC machines — arriving to bring a sudden '
    'and devastating end to the hopeful Dawn era — left curved traces on radar screens that looked like arcs.\n\n'
    'Raiders can only guess at what ARC wants, but one thing is certain: the machines probe the ground in vast numbers, '
    'then extract the planet\'s natural resources with terrifying efficiency. That\'s why a sudden change in ARC behaviour '
    'causes enormous concern among raiders.\n\n'
    'Measures were taken, but rumours spread through Speranza regardless.\n\n'
    'The same signal was later heard near a shelter by the red tower in the Buried City.\n\n'
    'ARC security forces are believed to constantly update their designs and tactics to adapt to new threats. '
    'This is especially clear when comparing the primitive machines of the First Wave to the complex mechanisms of the Second.\n\n'
    'Raiders are locked in an arms race with their orbital enemies, constantly trying to outsmart them '
    'with advanced weapons and revised tactics.\n\n'
    'Inventors from across Toledo attempt to harness ARC technology to gain an edge, and have achieved some success: '
    'the energy shield and various homemade gadgets and grenades are the result.';

String get historyLore => isRussian
  ? 'ARC Raiders — это онлайн PvPvE-шутер, действие которого происходит в постапокалиптическом мире. '
    'Человечество было вынуждено покинуть поверхность Земли из-за угрозы со стороны машин ARC.\n\n'
    'Люди укрылись под землёй и выживают, собирая ресурсы и сражаясь с врагами. '
    'Игроки выступают в роли рейдеров, которые выходят на поверхность, чтобы добывать ценные материалы.\n\n'
    'Мир игры наполнен опасностями, но также и возможностями. '
    'Каждая вылазка — это риск и шанс найти что-то ценное.\n\n'
    'Со временем игрок узнаёт больше о происхождении ARC и судьбе человечества.'
  : 'ARC Raiders is an online PvPvE shooter set in a post-apocalyptic world. '
    'Humanity has been forced to leave the surface of the Earth due to the threat posed by the ARC machines.\n\n'
    'People have taken refuge underground and are surviving by gathering resources and fighting enemies. '
    'Players take on the role of raiders who venture above ground to gather valuable materials.\n\n'
    'The game world is filled with danger, but also with opportunities. '
    'Each outing is a risk and a chance to find something valuable.\n\n'
    'Over time, the player learns more about the origin of the ARC and the fate of humanity.';
String get people => isRussian ? 'ЛЮДИ' : 'PEOPLE';
String get toledo => isRussian ? 'ТОЛЕДО' : 'TOLEDO';
String get surface => isRussian ? 'НА ПОВЕРХНОСТИ' : 'SURFACE';
String get collapse => isRussian ? 'КАТАСТРОФА' : 'THE COLLAPSE';
String get exodus => isRussian ? 'ИСХОД' : 'THE EXODUS';
String get sunrise => isRussian ? 'РАССВЕТ' : 'SUNRISE';
String get thecollapse => isRussian ? 'Крах' : 'Collapse';
String get projectheartwood => isRussian ? 'Проект HEARTWOOD' : 'Project HEARTWOOD';
String get theexodus => isRussian ? 'Исход' : 'Exodus';
String get towerstart => isRussian ? 'Башня запуска' : 'Launch Towers';
String get thesunrise => isRussian ? 'Рассвет' : 'Sunrise';
String get settlers => isRussian ? 'Поселенцы' : 'Settlers';
String get collapseStory => isRussian ? "Это история, рассказанная в основном через затопленные пустоши и заросшие руины, Коллапс произошёл много поколений назад, когда разрушительные наводнения, палящие пожары и землетрясения сговорились избавить Землю от её обитателей.\n\n"
                      "Говорят, что остались только разрозненные общества, хотя после поколений тьмы и разложения их истории слились с легендами и ложью.\n\n"
                      "Хотя большинство свидетельств жизни до Коллапса было утрачено в разрушениях, небольшие очаги сохранения всё ещё дают представление о прошлом мире.\n\n"
                      "Здесь, в Ржавом поясе, подвижные песчаные дюны долгое время покрывали портовый город Марано, создавая естественную капсулу времени, которая известна тем, что одновременно удивляет и сбивает с толку Рейдеров." : "This is a story told mostly through flooded wastelands and overgrown ruins. The Collapse occurred many generations ago, when devastating floods, scorching fires, and earthquakes conspired to rid the Earth of its inhabitants.\n\n"
                      "It is said that only scattered societies remained, although after generations of darkness and decay, their stories have become intertwined with legends and lies.\n\n"
                      "Although most evidence of life before the Collapse has been lost in the destruction, small pockets of preservation still provide insight into the past world.\n\n"
                      "Here in the Rusty Belt, shifting sand dunes have long covered the port city of Marano, creating a natural time capsule that is known for both surprising and confusing Raiders.";
String get heartwoodStory => isRussian ? "Проект Heartwood был масштабной исследовательской инициативой, направленной на замедление, адаптацию или переживание уже начавшегося экологического кризиса. Вокруг Ржавого пояса сохранилось несколько следов; в частности, в заброшенном жилом комплексе The Blue Gate, который оказался новаторским исследованием в области сейсмоустойчивого жилья.\n\n"
                      "Исследования аккумуляторов с высокой ёмкостью на основе рассола проводились в рамках проекта Heartwood. Хотя примитивные прототипы были успешно созданы, они, похоже, так и не были введены в полноценное производство.\n\n"
                      "Большая часть исследований, проведённых в рамках проекта Heartwood, по-видимому, была строго засекречена, хотя документы показывают, что они финансировались за счёт государственных средств. Тянь Вэнь подозревает, что в хранилищах и сейфах Стеллы Монтис забыто бесчисленное количество исследовательских проектов.\n\n"
                      "Хотя проект дал ощутимые результаты, в итоге его признали недостаточным и в итоге прекратили. Текущие проекты были внезапно отменены группой MANTIKOR, а средства и ресурсы были перенаправлены на Инициативу Исхода.\n\n"
                      "Примечательно, что это привело к перенаправлению электроэнергии с плотины Алкантара для поддержки строительства космопорта, оставив большую часть Buried City подверженной периодическим отключениям электричества." : "The Heartwood Project was a large-scale research initiative aimed at slowing down, adapting to, or surviving an already-occurring environmental crisis. Several traces remain around the Rust Belt; notably, the abandoned Blue Gate housing development, which proved to be a pioneering study in earthquake-resistant housing.\n\n"
                      "Research into brine-based high-capacity batteries was conducted as part of the Heartwood Project. Although primitive prototypes were successfully created, they do not appear to have been put into full-scale production.\n\n"
                      "Most of the research conducted as part of the Heartwood project appears to have been strictly classified, although documents show that it was funded by government funds. Tian Wen suspects that countless research projects have been forgotten in Stella Montis's vaults and safes.\n\n"
                      "Although the project has yielded tangible results, the outcome of stoped.";
String get exodusStory => isRussian ? "Говорят, что когда мир рухнул, горстка доблестных выживших сумела спастись от разрушения в космос; Посадка на чудеса технологий, давно утраченных в разрушениях.\n\n"
                      "О том, как им удалось добиться таких достижений, известно немного, и те немногие сохранившиеся технологии высоко ценятся в Толедо." : "It is said that when the world collapsed, a handful of valiant survivors managed to escape destruction into space landing on the wonders of technology long lost in the ruins.\n\n"
                      "Little is known about how they achieved such feats, and the few remaining technologies are highly valued in Toledo.";
String get towersStory => isRussian ? "Высокие башни, видимые издалека, являются колоссальной историей Исхода. Они знаменуют конец эпохи, которая должна была быть немыслимым технологическим прогрессом; эпоху, которую почти невозможно представить тем, кто сегодня смотрит на башни." : "The towering towers, visible from afar, are a colossal story of Exodus. They mark the end of an era that was supposed to be an unimaginable technological advancement an era that is almost impossible to imagine for those who look at the towers today.";
String get sunriseStory => isRussian ? "Живой в воспоминаниях немногих очень старых ещё живых, эпоха Рассвета кажется невероятной для тех, кто родился под землёй. После поколений тьмы после Коллапса эпоха Восхода была отмечена признаками восстановления экологии планеты, а также повторным открытием старых технологий и даже некоторой степени организованного общества.\n\n"
                      "Здесь, в Ржавом поясе, поселенцы начали собираться вокруг спящей плотины Алькантара, где они построили первые гидропонные купола. Эти купола позволяли им стабильно производить пищу и даже использовать старые солнечные панели для получения энергии.\n\n"
                      "Во время растущего оптимизма некоторые осмелились заявить, что худшее уже позади — пока машины не начали спускаться с небес." : "Alive in the memories of the few very old still alive, the Dawn Age seems incredible to those who were born underground. After generations of darkness following the Collapse, the Rise Age was marked by signs of the planet's ecological recovery, as well as the rediscovery of old technologies and even a degree of organized society.\n\n"
                      "Here in the Rust Belt, settlers began to gather around the dormant Alcantara Dam, where they built the first hydroponic domes. These domes allowed them to produce food consistently and even use old solar panels for energy.\n\n"
                      "During the growing optimism, some dared to say that the worst was over - until the cars started coming down from the sky.";
 String get settlersStory => isRussian ? "В эпоху восхода солнца сообщество выживших, поселившееся вокруг плотины Алкантара, сумело создать некоторое подобие организованного общества. Путём проб, ошибок и обнаружения старых документов им удалось добиться определённого прогресса в таких областях, как выращивание пищи, методы строительства и создание примитивного оружия.\n\n"
                      "Когда машины ARC начали падать с небес во время Первой волны, поселенцы вокруг плотины объединились, чтобы создать первых рейдеров и победили ARC, хотя ценой многих жизней. Когда большая часть технологического прогресса была уничтожена, когда наступила Вторая волна, они решили уйти под землю для собственной защиты; обосновавшись в том, что впоследствии стало огромным городом Толедо." : "In the Age of the Rising Sun, the community of survivors who settled around the Alcantara Dam managed to create a semblance of an organized society. Through trial and error and the discovery of old documents, they made some progress in areas such as food cultivation, construction techniques, and the creation of primitive weapons.\n\n"
                      "When the ARC machines began falling from the sky during the First Wave, the settlers around the dam united to create the first Raiders and defeated the ARC, albeit at the cost of many lives. When most of the technological progress was destroyed during the Second Wave, they decided to go underground for their own protection, settling in what would later become the vast city of Toledo.";
String get traders => isRussian ? 'ТОРГОВЦЫ' : 'TRADERS';
String get groupsAndOrhanization => isRussian ? 'ГРУППЫ И ОРГАНИЗАЦИИ' : 'GROUPS AND ORGANIZATIONS';
String get selesta => isRussian ? 'Селеста' : 'Celeste';
String get shani => isRussian ? 'Шани' : 'Shani';
String get tyanVen => isRussian ? 'Тянь Вэнь' : 'Tian Wen';
String get lens => isRussian ? 'Лэнс' : 'Lance';
String get appolon => isRussian ? 'Аполлон' : 'Apollo';
String get raiders => isRussian ? 'Рейдеры' : 'Raiders';
String get kochevnikiBlueGate => isRussian ? 'Кочевники Голубых Ворот' : 'Blue Gate Nomads';
String get ottm => isRussian ? 'ОТТМ' : 'OTTM';
String get searchingsStellaMontis => isRussian ? 'Исследователи Стеллы Монтис' : 'Stella Montis Researchers';
String get selestaStory => isRussian ? "Селеста была частью небольшой группы, которая первой переехала в то, что впоследствии стало Сперансой. Стабильная и надёжная, люди всё чаще обращались к ней за советом и посредничеством, превращая её в опору быстрорастущего сообщества.\n\n"
                      "Перенаселение, политические конфликты и нехватка ресурсов вскоре стали её повседневной реальностью. Хуже всего, в отсутствие ARC её товарищи по Рейдерам начали сражаться друг с другом.\n\n"
                      "В наши дни она часто сталкивается с лидерами из других районов Толедо и сталкивается с сопротивлением со стороны нескольких гражданских петиционеров, у которых свои взгляды на управление Сперансой.\n\n"
                      "Несмотря ни на что, Селеста всё ещё надеется, что Рейдеры снова смогут объединиться под единым знаменем в борьбе с ARC, хотя осталось немного, разделяющих её мечту." : "Celeste was part of a small group that was the first to move to what would become Speranza. Stable and reliable, people increasingly turned to her for advice and mediation, making her a pillar of the rapidly growing community.\n\n"
                      "Overpopulation, political conflicts, and resource scarcity soon became her daily reality. Worst of all, in the absence of the ARC, her fellow Raiders began fighting each other.\n\n"
                      "These days, she often clashes with leaders from other areas of Toledo and faces resistance from several civilian petitioners who have their own views on the management of Speranza.\n\n"
                      "Despite everything, Celeste still hopes that the Raiders will be able to unite under a single banner once again in their fight against the ARC, although there are few who share her dream.";
String get shaniStory => isRussian ? "Бдительная, осторожная и добросовестная, Шани почти постоянно следит за экранами в своей комнате. Официально ей поручено следить за угрозами с Верхнего города, а также за управлением Трубами и всеми люками Рейдеров. На самом деле в Сперанзе мало что ускользает от её пристального взгляда.\n\n"
                      "Шани полагается на множество радаров, сканеров и самодельного оборудования для картирования поведения ARC. Однако склонность машин к самооптимизации делает это крутой борьбой, оставляя ей очень мало времени на отдых, сон или редкие глубокие вдохи.\n\n"
                      "Помимо снаряжения, Шани также полагается на сеть разведчиков для получения непосредственной информации о активности на поверхности. В отличие от многих рейдеров, эта избранная группа редко вступает в открытый бой, больше полагаясь на скрытность." : "Vigilant, cautious, and conscientious, Shani is almost constantly monitoring the screens in her room. Officially, she is tasked with monitoring threats from the Upper City, as well as managing the Pipes and all the Rader hatches. In reality, little in Speranza escapes her scrutiny.\n\n"
                      "Shani relies on a variety of radars, scanners, and homemade equipment to map ARC behavior. However, the machines' penchant for self-optimization makes this a tough fight, leaving her with very little time to rest, sleep, or take deep breaths.\n\n"
                      "In addition to her equipment, Shani also relies on a network of scouts to gather firsthand information about surface activity. Unlike many raiders, this select group rarely engages in open combat, preferring to rely on stealth.";
String get tyanVenStory => isRussian ? "Технический гений с жестоким характером, Тянь Вэнь ведёт большую часть своих дел за пуленепробиваемой дверью, спрятанной в тёмном переулке возле площади.\n\n"
                      "Её мастерство в создании высококачественного огнестрельного оружия принесло ей славу в Сперансе и за его пределами. Ходят слухи, что она не слишком высоко ценит рейдеров, но её профессия делает отношения с ними неизбежной реальностью.\n\n"
                      "Помимо управления своим магазином в Сперансе, Тянь Вэнь сохраняет тихое влияние на чёрный рынок Толедо, куда любопытным образом попадает многие её экспериментальные виды оружия.\n\n"
                      "Учитывая, сколько Рейдеров зависят от её припасов для своей безопасности, возможно, Шани решит закрыть глаза на эти более сомнительные сделки, по крайней мере пока." : "A technical genius with a violent temper, Tian Wen conducts most of her business behind a bulletproof door hidden in a dark alley near the square.\n\n"
                      "Her skill in creating high-quality firearms has earned her fame in and around Speranza. It is rumored that she does not hold the Raiders in high regard, but her profession makes dealing with them an inevitable reality.\n\n"
                      "In addition to running her shop in Speranza, Tian Wen maintains a quiet influence on the black market in Toledo, where many of her experimental weapons find their way.\n\n"
                      "Given how many Raiders rely on her supplies for their safety, it's possible that Shani will choose to overlook these more questionable transactions, at least for now.";
String get lensStory => isRussian ? "Загадка для общества Сперанзана - и в какой-то степени для самого себя. Поскольку он не помнит своего происхождения - андроид Ланс управляет своей знаменитой медицинской клиникой недалеко от площади. Говорят, что единственное, что он не может вылечить - это простуда, хотя это никогда не говорят в пределах его слышимости.\n\n"
                      "В медицинских вопросах Лэнс - настоящий профессионал; одинаково сосредоточен на перевязке бинтов, как и при выборе пуль пинцетом. Однако, когда дело доходит до выбора названия для своей клиники, его самообладание быстро рушится.\n\n"
                      "В последнее время Лэнс стремится развивать гармоничный фэн-шуй в своей клинике, надеясь, что это успокоит пациентов, пока он удаляет осколки и другие посторонние предметы из их тел. Пока что его стратегически расположенные подушки не дали желаемого эффекта." : "A mystery to the people of Speranzana - and, to some extent, to himself. Since he doesn't remember his origins, the android Lance runs his famous medical clinic near the square. It's said that the only thing he can't cure is a cold, although this is never mentioned within his hearing.\n\n"
                      "Lance is a true professional when it comes to medical matters, just as focused on applying bandages as he is on selecting bullets with tweezers. However, when it comes to choosing a name for his clinic, his composure quickly crumbles.\n\n"
                      "Lately, Lance has been striving to develop a harmonious feng shui in his clinic, hoping that it will calm his patients while he removes shards and other foreign objects from their bodies. So far, his strategically placed pillows have not had the desired effect.";
String get appolonStory => isRussian ? "Аполлон держит магазин на площади Сперанцы, где в основном продаёт самодельные гранаты и гаджеты. Большинство его товаров — его собственной разработки, и хотя они могут показаться примитивными для неподготовленного глаза, они тщательно протестированы самыми смелыми Рейдерами.\n\n"
                      "Когда начинаются крупные проекты расширения, такие как освобождение новых жилых помещений или расширение тоннельной сети, его часто назначают одним из бригадиров; особенно если требуется беспорядочный снос.\n\n"
                      "Заядлый читатель, Аполлон любит жёсткий детективный роман. Говорят, он постоянно подвергает себя сотрясению мозга, чтобы забыть о грандиозных откровениях." : "Apollo keeps a shop on Speranza Square, where he mainly sells homemade grenades and gadgets. Most of his products are his own designs, and while they may seem primitive to the untrained eye, they have been thoroughly tested by the most daring Raiders.\n\n"
                      "When major expansion projects begin, such as the liberation of new living quarters or the expansion of the tunnel network, he is often appointed as one of the foremen; especially if there is a need for indiscriminate demolition.\n\n"
                      "An avid reader, Apollo loves a good detective novel. They say he constantly subjects himself to brain injuries to forget about the grand revelations.";
String get raidersStory => isRussian ? "Когда смертоносные машины ARC доминируют на поверхности, лишь горстка выживших осмеливается выйти на поверхность. Благодаря сочетанию непоколебимой смелости и быстрой реакции, они являются единственным источником редких товаров для большинства жителей Толедо.\n\n"
                      "По мере того как Толедо превратился в уединённые, изолированные районы, рейдеры становились всё более собственническими и враждебными друг к другу. Хотя они находятся вне досягаемости безопасности Толедо, многие известны тем, что решают острые соперничества силой." : "When the deadly ARC machines dominate the surface, only a handful of survivors dare to venture above ground. With a combination of unwavering courage and quick reflexes, they are the only source of rare goods for most of Toledo's inhabitants.\n\n"
                      "As Toledo became secluded, isolated areas, the raiders became increasingly possessive and hostile towards each other. Although they are beyond the reach of Toledo's security, many are known for resolving heated rivalries through force.";
String get kochevnikiBlueGateStory => isRussian ? "Следы неизвестной группы выживших были замечены вокруг Голубых Ворот; их узнавались по флагам и импровизированным украшениям. Выяснилось, что они причастны к уничтожению ARC Deforester, хотя их методы, по-видимому, оставили оболочки в удивительно чистом состоянии." : "Traces of an unknown group of survivors were spotted around the Blue Gate, recognizable by their flags and makeshift decorations. It was revealed that they were involved in the destruction of the ARC Deforester, although their methods seemed to have left the shells in remarkably clean condition.";
String get ottmStory => isRussian ? "Официальное управление трубами Толедо, или OTTM, — это жестокая организация, контролирующая несколько критически важных узлов в сети метро, проходящих через Толедо и простирающихся по всему миру.\n\n"
                      "Город Толедо не обладает центральным правительством для официальных санкций, а OTTM обладает достаточным влиянием и людскими ресурсами, чтобы отбивать любых претендентов на свою власть. Рогатки Сперансы проходят через развязку, контролируемую OTTM, и Селесте часто приходится платить дань, чтобы поддерживать доступ рейдеров к Трубам в Сперансе.\n\n"
                      "В попытке избежать постоянных вымогательств со стороны OTTM, Селеста привлекла Рейдеров к помощи в поиске тайника, предназначенного для высокопоставленного члена организации.\n\n"
                      "Из его содержимого она обнаружила, что несмотря на угрозы и предполагаемую силу, хватка OTTM над Трубами была гораздо слабее, чем они показывали. Тайник намекал на осязаемые доказательства, которые могли бы раскрыть их уязвимость. Если их обнаружат, этого может хватить, чтобы сплотить хотя бы один район для успешного сопротивления и свержения контроля OTTM.\n\n"
                      "Получив доказательства в космопорте, Селеста созвала напряжённую встречу с OTTM. Представители прибыли с самодовольной улыбкой, ожидая очередного трибута за продолжение использования «их» Труб. Однако они ушли с влажными руками и обеспокоенными лицами.\n\n"
                      "Жители Сперансы не совсем уверены, как Селеста получила свободный проход для рогатки Сперанзы, но среди местных кантин ходит множество диких историй. Некоторые говорят об эпических перестрелках, другие - о романтических соблазнениях, а некоторые - о проникновении и саботаже. Одно можно сказать точно: Селеста - решительный лидер. Она сделает всё, чтобы её Рейдеры могли выполнять свою работу без вмешательства." : "The Official Toledo Tubes Management, or OTTM, is a brutal organization that controls several critical nodes in the subway network that run through Toledo and extend all over the world.\n\n"
                      "The city of Toledo does not have a central government for official sanctions, and the OTTM has enough influence and manpower to fight off any challengers to its authority. Speranza's slingshots pass through an OTTM-controlled interchange, and Celeste often has to pay tribute to maintain the Raiders' access to the Pipes in Speranza.\n\n"
                      "In an attempt to avoid constant extortion by the OTTM, Celeste enlisted the Raiders' help in finding a cache intended for a high-ranking member of the organization.\n\n"
                      "From its contents, she discovered that despite the threats and perceived power, the OTTM's grip on the Pipes was much weaker than they portrayed. The cache hinted at tangible evidence that could reveal their vulnerability. If discovered, it could be enough to rally at least one district for successful resistance and overthrow of OTTM control.\n\n"
                      "After receiving the evidence at the spaceport, Celeste called a tense meeting with the OTTM. The representatives arrived with smug smiles, expecting another tribute for continuing to use their Tubes. However, they left with wet hands and worried faces.\n\n"
                      "The people of Speranza aren't entirely sure how Celeste got Speranza's slingshot free passage, but there are plenty of wild stories circulating among the local cantinas. Some talk of epic gunfights, others of romantic seductions, and still others of infiltration and sabotage. One thing is for sure: Celeste is a determined leader. She will do whatever it takes to ensure her Raiders can do their job without interference.";
String get searchingsStellaMontisStory => isRussian ? "(Отрывок из внутренних сообщений, найденных у Стеллы Монтис.)\n\n"
                      "RE: обед?\n"
                      "От: Мишеля Вольпи [Робототехника и сборка]\n"
                      "Кому: Энрико Марино [Медицина], Патриция Сильвертри [Архивы]\n"
                      "столовая подают куриный дижон. Кстати, ты видел людей из Мантикора в холле? Кажется, это слишком много, не правда ли? Мы далеко в горах, так что нам не нужна вся эта охрана?\n"
                      "RE:Re: обед?\n"
                      "От: Энрико Марино [Медицина]\n"
                      "Кому: Мишелю Вольпи [Робототехника и сборка], Патриция Сильвестри [Архив]\n"
                      "Рутинная проверка, официально. Не удивляйся, если они зайдут в твой отдел позже.\n"
                      "Давай пообедаем вдали от столовой. Приходи к медпункту, когда сможешь. Обычное место.\n"
                      "Андреа предпочитает, чтобы мы поговорили лично.\n"
                      "RE:RE:RE: обед?\n"
                      "От: Патриция Сильверстри [Архивы]\n"
                      "Кому: Мишелю Вольпи [Робототехника и сборка], Энрико Марино [Медицина]\n"
                      "Также принесите курицу." : "(An excerpt from the internal messages found on Stella Montis.)\n"
                      "RE: lunch?\n"
                      "From: Michel Volpi [Robotics & Assembly]\n"
                      "To: Enrico Marino [Medical], Patrizia Silvertri [Archives]\n"
                      "cafeteria's serving chicken dijon. btw, did you see the mantikor people down in the lobby? feels like a bit much, doesn't it? we're all the way up in the mountains, so it's not like we should need all this security?\n"
                      "RE:RE: lunch?\n"
                      "From: Enrico Marino [Medical]\n"
                      "To: Michel Volpi [Robotics & Assembly], Patrizia Silvestri [Archives]\n"
                      "Routine check, officially. Don't be surprised if they stop by your section later.\n"
                      "Let's do lunch away from the cafeteria. Come by medical when you can. Usual spot.\n"
                      "Andrea prefers we speak in person.\n"
                      "RE:RE:RE: lunch?\n"
                      "From: Patrizia Silverstri [Archives]\n"
                      "To: Michel Volpi [Robotics & Assembly], Enrico Marino [Medical]\n"
                      "Also, bring the chicken.";
String get infrostructura => isRussian ? 'ИНФРАСТРУКТУРА' : 'INFRASTRUCTURE';
String get society => isRussian ? 'ОБЩЕСТВО' : 'SOCIETY';
String get hatches => isRussian ? 'Люки Рейдеров' : 'Raider Hatches';
String get depots => isRussian ? 'Полевые депо' : 'Field Depots';
String get tubes => isRussian ? 'Трубы' : 'The Tubes';
String get electricity => isRussian ? 'Электричество' : 'Electricity';
String get waterworks => isRussian ? 'Водосооружения' : 'Waterworks';
String get food => isRussian ? 'Выращивание пищи' : 'Food Cultivation';
String get security => isRussian ? 'Безопасность' : 'Security';
String get backyard => isRussian ? 'Задний двор' : 'The Backyard';
String get blackMarket => isRussian ? 'Черные рынки' : 'Black Markets';
String get banquet => isRussian ? 'Банкет Кэндлберри' : 'Candleberry Banquet';
String get hatchesStory => isRussian ? "Разбросанные по Верхнему району, люки Рейдеров обеспечивают быстрые и бесшумные пути обратно в Сперанцу. Построенные самими Рейдерами, эти скрытые входы расположены на старых люках, щелях и туннелях, обеспечивая надёжный путь домой.\n\n"
                      "В отличие от грузовых лифтов или туннелей метро, эти люки работают автономно, требуя одноразовых ключей доступа для доступа. Простая автономная система управляет каждым люком, проверяя пользователей и обеспечивая безопасность перед разрешением входа.\n\n"
                      "Люки остаются жизненно важными для операций рейдеров, их местоположение известно только тем, кто в них нуждается. В мире, где выживание зависит от скорости и секретности, эти безмолвные двери часто стоят между жизнью и смертью." : "Scattered throughout the Upper District, the Raider hatches provide quick and silent paths back to Speranza. Built by the Raiders themselves, these hidden entrances are located on old hatches, crevices, and tunnels, providing a reliable way home.\n\n"
                      "Unlike cargo elevators or subway tunnels, these hatches operate independently, requiring one-time access keys for entry. A simple autonomous system controls each hatch, verifying users and ensuring security before allowing entry.\n\n"
                      "The hatches remain vital to raider operations, their locations known only to those who need them. In a world where survival depends on speed and secrecy, these silent doors often stand between life and death.";
String get depotsStory => isRussian ? "Полевые депо были созданы по всему Топсайду, в первую очередь для пневматических механизмов доставки, расположенных внутри. Общеизвестно, что размещение ARC-поля внутри механизма отправит его в Толедо для дальнейшего изучения, а Рейдер получает ценные ресурсы взамен.\n\n"
                      "Сами полевые ящики — своего рода загадка. Их можно найти по всему Верхнему городу, и, как говорят, их сбрасывали неисправные зонды и курьеры.\n\n"
                      "Изучение пневматических механизмов доставки в Полевых Депо привело к предположениям, что они были построены во время Исхода для транспортировки материалов в Трубы и обратно.\n\n"
                      "Шани неоднократно подслушивали выступления за продолжение использования Полевых депо, так как это позволяет ей и другим сотрудникам службы безопасности узнать больше о ARC в целом." : "Field depots have been established throughout Topside, primarily for the pneumatic delivery mechanisms located inside. It is well known that placing an ARC field inside a mechanism will send it to Toledo for further study, and the Raider receives valuable resources in return.\n\n"
                      "The field boxes themselves are a bit of a mystery. They can be found throughout the Upper City, and it is said that they were dropped by malfunctioning probes and couriers.\n\n"
                      "The study of the pneumatic delivery mechanisms in the Field Depots has led to speculation that they were built during the Exodus to transport materials to and from the Pipes.\n\n"
                      "Shani has repeatedly overheard speeches advocating for the continued use of the Field Depots, as it allows her and other security personnel to learn more about the ARC as a whole.";
String get tubesStory => isRussian ? "Сеть туннелей, пересекающих Ржавый пояс и дальше, известна как Трубы. Рейдеры используют эти туннели, чтобы добраться до поверхности, садясь в транспортные капсулы, которые запускаются со станций, которые местные называют «рогатками».\n\n"
                      "В каждом районе Толедо есть собственная станция Slingshot, которой управляют местные службы безопасности и операции. Несколько развязок проходят вдоль труб до того, как они достигнут поверхностных точек доступа.\n\n"
                      "Трубы изначально были построены во время строительных работ Exodus для обеспечения быстрой транспортировки материалов между крупными объектами, напрямую соединяясь с сетью грузовых лифтов. С тех пор инженеры Толедо интегрировали их с другими видами инфраструктуры, включая гражданские линии метро и вентиляционные вентиляционные шахты." : "The network of tunnels that cross the Rust Belt and beyond is known as the Tubes. Raiders use these tunnels to reach the surface by boarding transport pods that launch from stations known as slingshots.\n\n"
                      "Each area of Toledo has its own Slingshot station, which is managed by local security and operations services. Several interchanges run along the tubes before they reach the surface access points.\n\n"
                      "The pipes were originally built during the construction of Exodus to provide fast transportation of materials between large facilities, directly connecting to the network of freight elevators. Since then, Toledo's engineers have integrated them with other types of infrastructure, including civilian subway lines and ventilation shafts.";
String get electricityStory => isRussian ? "Основным источником электроэнергии в Толедо является солнечная энергия. Комплекс линий электропередач соединяет город с частично отремонтированной солнечной сетью в западных районах Ржавого пояса. Кроме того, несколько солнечных панелей на крышах в городской электросети интегрированы в электросеть города.\n\n"
                      "Для обеспечения электричеством ночью или в отключения электроэнергии районы Толедо поддерживают запасы крупных аккумуляторов. Поскольку энергосеть сегментирована, разные районы и секторы Толедо испытывают разный уровень стабильности.\n\n"
                      "Недавний рост отключений электроэнергии вызвал слухи о саботаже по всему Сперанзе. Пока никто не нашёл существенных доказательств, хотя некоторые заметили, что Тянь Вэнь выглядит необычно довольной собой." : "The main source of electricity in Toledo is solar energy. A complex of power lines connects the city to a partially renovated solar network in the western areas of the Rust Belt. In addition, several solar panels on the roofs of the city's power grid are integrated into the city's electricity supply.\n\n"
                      "To provide electricity at night or during power outages, the neighborhoods of Toledo maintain large battery reserves. Since the power grid is segmented, different neighborhoods and sectors of Toledo experience varying levels of stability.\n\n"
                      "The recent increase in power outages has sparked rumors of sabotage throughout Speranza. So far, no one has found any significant evidence, although some have noticed that Tian Wen appears unusually pleased with herself.";
String get waterworksStory => isRussian ? "Каждый район в Толедо отвечает за обеспечение собственного источника воды. Несколько водозаборов на поверхности забирают грунтовые и дождевые воды, направляя их через насосы и трубы в подземные резервуары.\n\n"
                      "Качество воды всегда было плохим и колеблястым, требуя активной фильтрации для безопасного употребления воды. Однако недавний резкий запах и подозрительный оттенок заставили некоторых предположить, что вода загрязнена сверх обычного уровня.\n\n"
                      "Большинство водозаборов Толедо расположены вокруг плотины, используя старую инфраструктуру, связанную с когда-то внушительными водохранилищами. Основной водоприем района Сперанса расположен рядом с туннелем для наводнения; Точное место, где случайно оказались несколько бочек с резкими жидкостями.\n\n"
                      "В какой-то момент было обнаружено преднамеренное загрязнение водоснабжения Сперансы. Она подчеркнула необходимость альтернативных источников питьевой воды. Разведчики Селесты обнаружили подземный цистерна под космопортом; соединён с водохранилищем плотины сложной сетью труб.\n\n"
                      "Подключение цистерны к водоснабжению Сперанцы обеспечило временное облегчение, позволяя рейдерам пить, готовить и мыться, пока Шани искал виновных в загрязнении воды." : "Each neighborhood in Toledo is responsible for providing its own water source. Several surface water intakes collect groundwater and rainwater, which are pumped and piped into underground reservoirs.\n\n"
                      "The water quality has always been poor and fluctuating, requiring active filtration to ensure safe drinking water. However, a recent strong odor and suspicious tint have led some to suspect that the water is contaminated beyond normal levels.\n\n"
                      "Most of Toledo's water intakes are located around the dam, using the old infrastructure associated with the once-impressive reservoirs. The main water intake for the Speranza area is located near the flood tunnel, where several barrels of harsh liquids were accidentally left.\n\n"
                      "At some point, the intentional contamination of Speranza's water supply was discovered. It highlighted the need for alternative sources of drinking water. Celeste's scouts discovered an underground cistern beneath the spaceport; connected to the dam's reservoir by a complex network of pipes.\n\n"
                      "Connecting the cistern to Speranza's water supply provided temporary relief, allowing the raiders to drink, cook, and wash while Shani sought out those responsible for the water contamination.";
String get foodStory => isRussian ? "Большая часть еды Сперанцы выращивается в импровизированных теплицах, где используются лампы для выращивания и те немногие места, которые ещё находятся под воздействием света с поверхности. Хотя Селеста давно стремится увеличить производство продуктов питания, постоянная угроза даже одного неудачного урожая заставляет её соблюдать тщательное нормирование семян и тщательное сохранение всей производимой пищи.\n\n"
                      "Сельскохозяйственные исследования, найденные вокруг плотины, показали, что в эпоху Рассвета группа изобретательных фермеров стремилась выращивать более устойчивый сорт пшеницы. Их тщательные исследования охватывали несколько вегетационных сезонов и включали посадку разнообразных диких семян в местах с разной засухой, солёностью, кислотностью и воздействием суровых погодных условий.\n\n"
                      "После нескольких сезонов селекции эти исследователи попытались посадить самые перспективные семенные сорта в гидропонных куполах, тщательно документируя их прогресс в цифровых архивах. Согласно их ранним результатам, они действительно надеялись создать крупномасштабный, надёжный источник питания, потенциально преобразующий общество в Ржавом поясе и за его пределами." : "Most of Speranza's food is grown in makeshift greenhouses, which use grow lights and the few areas that are still exposed to light from the surface. Although Celeste has long sought to increase food production, the constant threat of even a single failed harvest has led her to strictly regulate seed distribution and carefully preserve all food produced.\n\n"
                      "Agricultural research found around the dam suggests that during the Dawn Era, a group of innovative farmers sought to cultivate a more resilient wheat variety. Their thorough research covered several growing seasons and included planting a variety of wild seeds in areas with different levels of drought, salinity, acidity, and exposure to harsh weather conditions.\n\n"
                      "After several seasons of breeding, these researchers attempted to plant the most promising seed varieties in hydroponic domes, carefully documenting their progress in digital archives. According to their early results, they truly hoped to create a large-scale, reliable source of food that could potentially transform society in the Rust Belt and beyond.";
String get securityStory => isRussian ? "Служба безопасности Сперанцы в долгосрочной перспективе следит за рисками внутри и вокруг сообщества. Они планируют на неизвестность, внедряют меры по смягчению и справляются с непосредственными угрозами и опасностями. Они также следят за тем, чтобы все входы и выходы были защищены.\n\n"
                      "Безопасность полагается на рейдеров для патрулирования и разведки на поверхности, собирая или подтверждая разведданные. Им дают общий кошелек за сохранение независимости, хотя некоторые всё ещё сомневаются в достоверности их отчётов." : "Speranza's security team monitors long-term risks within and around the community. They plan for the unknown, implement mitigation measures, and handle immediate threats and hazards. They also ensure that all entrances and exits are secure.\n\n"
                      "Security relies on raiders for surface patrols and reconnaissance, gathering or confirming intelligence. They are given a shared purse to maintain their independence, although some still question the accuracy of their reports.";
String get backyardStory => isRussian ? "Спрятанный в уединённой горной лощине, эхо выстрелов из Заднего двора, кажется, сбивают с толку ориентацию ARC, создавая редкий очаг безопасности на открытом воздухе. Рейдеры используют этот тренировочный диапазон, чтобы отточить свои навыки и наверстать давно назревшее наблюдение за звёздами.\n\n"
                      "Стрельбище позволяет игрокам тренироваться на фиктивных версиях ARC и даже на импровизированных человеческих мишенях. Тянь Вэнь даже нашёл способ перепрофилировать некоторые найденные Турели, чтобы получить более оживлённый опыт." : "Hidden in a secluded mountain hollow, the echoes of Backyard gunfire seem to confuse the ARC's orientation, creating a rare haven of safety in the open air. Raiders use this training range to hone their skills and catch up on long-overdue stargazing.\n\n"
                      "The shooting range allows players to practice on mock versions of the ARC and even on improvised human targets. Tian Wen has even found a way to repurpose some of the found Turrets to create a more lively experience.";
String get speranzaStory => isRussian ? "Яркий и живой, Сперанса — самый старый район подземного города Толедо.\n\n"
                      "Изначально он был основан как независимое поселение в начале Второй волны, когда возвращение ARC вынудило поселенцев уйти под землю. Встроенный в подземную инфраструктуру и здания, поглощённые провалами, он предлагает в основном безопасное убежище от многочисленных опасностей Верхнего города.\n\n"
                      "Со временем, когда всё больше выживших прибывали из Ржавого пояса и за его пределами, первоначальное поселение расширилось до зарытых остатков древнего города, образуя уединённые, лоскутные районы Толедо." : "Bright and lively, Speranza is the oldest district of the underground city of Toledo.\n\n"
 "It was originally founded as an independent settlement at the beginning of the Second Wave, when the return of the ARC forced the settlers to go underground. Built into the underground infrastructure and buildings that were swallowed by the sinkholes, it offers a mostly safe refuge from the many dangers of the Upper City.\n\n"
 "Over time, as more survivors arrived from the Rust Belt and beyond, the original settlement expanded into the buried remnants of the ancient city, forming the secluded, patchwork neighborhoods of Toledo.";
String get toledoStory => isRussian ? "Глубоко под Ржавым поясом подземный город Толедо состоит из лоскутного комплекса уединённых районов, известных местным жителям как контрада.\n\n"
                      "Хотя часть инфраструктуры используется общей инфраструктурой, большинство контрад Толедо разделены расстоянием и обломками; Формирование изолированных сообществ, заботящихся о своих.\n\n"
                      "Хотя уединённые районы во многом являются аналогичными обществами, они известны тем, что нехотя сотрудничают, когда это абсолютно необходимо. Особенно примечательно, что обширная сеть метро управляется разрозненными операторами Slingshot, разбросанными по разным районам, а техническое обслуживание осуществляется смешанными инженерными бригадами со всего Толедо." : "Deep beneath the Rusty Belt, the underground city of Toledo consists of a patchwork of secluded districts, known locally as contrada.\n\n"
                      "While some infrastructure is shared, most contradas of Toledo are separated by distance and debris; the formation of isolated communities that take care of their own.\n\n"
                      "While the secluded districts are largely similar societies, they are known for reluctantly cooperating when absolutely necessary. It is particularly noteworthy that the extensive subway network is operated by disparate Slingshot operators scattered throughout the city, while maintenance is carried out by mixed engineering teams from across Toledo.";
String get blackMarketStory => isRussian ? "Чёрные рынки расположены в сомнительных уголках Толедо, где можно приобрести редкие товары сомнительного происхождения. Эти рынки никогда не задерживаются на одном месте и временно встречаются в тёмных переулках, пыльных ломбардах и уединённых дворах по всему Толедо.\n\n"
                      "Хотя в Сперанце нет чёрного рынка, многие жители регулярно отправляются дальше в Толедо, чтобы посетить рынки в других районах." : "Black markets are located in shady corners of Toledo, where rare goods of dubious origin can be purchased. These markets never stay in one place and are temporarily found in dark alleys, dusty pawnshops, and secluded courtyards throughout Toledo.\n\n"
                      "Although there is no black market in Speranza, many residents regularly travel further into Toledo to visit markets in other areas.";
String get banquetStory => isRussian ? "Во время зим Первой волны свечники использовались для создания импровизированных сигнальных фонарей, пищи и медицинских средств. Стало местной традицией собираться вместе во время ягодного сезона, чтобы делиться пайками и прикрывать друг друга при свете ягодных свечей.\n\n"
                      "Традиция продолжалась в виде банкета Кэндлберри, который ежегодно отмечали большинство сперанзанцев. Некоторые до сих пор воспринимают это как старые времена; настоящее празднование того, чего Raiders добились вместе. Но многие видят это иначе. Некоторые Рейдеры держатся дружелюбно и соревнуются, кто привёз лучшую добычу или рассказывает самые невероятные истории. Другие используют многолюдный пир как прикрытие, чтобы украсть подарки для соперников или даже свести счёты." : "During the winters of the First Wave, candle makers were used to create makeshift signal lights, food, and medical supplies. It became a local tradition to gather together during the berry season to share rations and provide cover for each other by the light of berry candles.\n\n"
                      "The tradition continued in the form of the Candleberry Banquet, which was celebrated annually by most Speranza residents. Some still view it as a throwback to the old days, a true celebration of what the Raiders achieved together. However, many see it differently. Some Raiders are friendly and compete to see who can bring the best loot or tell the most incredible stories. Others use the crowded feast as a cover to steal gifts for their rivals or even settle scores.";
String get arcStory => isRussian ? "Всё время, пока машины падали с небес, жители Поверхности называли их только одним именем: ARC. "
                      "Это название они получили в самом начале Первой волны, когда машины ARC, прибывшие на планету, "
                      "чтобы положить внезапный и разрушительный конец обнадеживающей эпохе Рассвета, оставляли на экранах "
                      "радаров изогнутые следы, напоминающие арки.\n\n"
                      "Рейдеры могут лишь предполагать, что нужно ARC, однако одно известно точно: машины в огромном количестве зондируют "
                      "почву, а затем чудовищно эффективно добывают природные ресурсы планеты. Именно поэтому резкая смена деятельности "
                      "ARC вызывает у рейдеров огромные опасения.\n\n"
                      "Были приняты меры, но по Сперанце всё равно поползли слухи.\n\n"
                      "Позже этот же сигнал слышали возле убежища у красной вышки в Погребенном городе.\n\n"
                      "Считается, что силы безопасности ARC постоянно обновляют свои конструкции и тактику, адаптируясь под новые угрозы. "
                      "Это особенно заметно, если сравнить примитивные машины Первой волны и сложные механизмы Второй.\n\n"
                      "Рейдеры ведут непрекращающуюся гонку вооружений со своими орбитальными врагами и постоянно пытаются перехитрить их "
                      "с помощью продвинутого оружия и переработанной тактики.\n\n"
                      "Изобретатели со всего Толедо пытаются использовать технологии ARC, чтобы вырваться вперед, и уже добились некоторых "
                      "успехов: так появился энергетический щит и различные самодельные гаджеты и гранаты.\n\n" : "All the while the machines were falling from the sky, the people of the Surface called them by only one name: ARC. "
                      "This name was given to them at the very beginning of the First Wave, when the ARC machines, which arrived on the planet "
                      "to bring a sudden and devastating end to the hopeful era of the Dawn, left curved traces resembling arches on the radar screens.\n\n"
                      "The Raiders can only speculate about what the ARC is doing, but they know that the machines are probing the ground in large numbers and then extracting the planet's natural resources with great efficiency. This is why the Raiders are concerned about the sudden change in the ARC's activities.\n\n"
                      "Measures have been taken, but rumors are still spreading in Speranza.\n\n"
                      "Later, the same signal was heard near the red tower shelter in the Buried City.\n\n"
                      "It is believed that the ARC security forces are constantly updating their designs and tactics to adapt to new threats. "
                      "This is especially noticeable when comparing the primitive machines of the First Wave to the sophisticated mechanisms of the Second Wave.\n\n"
                      "The Raiders are engaged in an ongoing arms race with their orbital enemies, constantly trying to outsmart them "
                      "with advanced weapons and revised tactics.\n\n"
                      "Inventors from all over Toledo are trying to use ARC technology to get ahead, and they've already made some"
                      "progress: the energy shield and various homemade gadgets and grenades.\n\n";                     
String get probe => isRussian ? 'Зонд ARC' : 'ARC Probe';
String get probe1 => isRussian ? 'Тип добычи' : 'Loot Type';
String get probe2 => isRussian ? 'Должно быть взломано' : 'Must Be Breached';
String get probeYes => isRussian ? 'Да' : 'Yes';
String get probe4 => isRussian ? 'Раздел(ы)' : 'Section(s)';
String get probe5 => isRussian ? 'Только для событий' : 'Event Only';
String get probeNo => isRussian ? 'Нет' : 'No';
String get probe7 => isRussian ? 'Присутствие в событиях' : 'Event Affected';

String get bastion => isRussian ? 'Бастион' : 'Bastion';
String get bastion1 => isRussian ? 'Уровень угрозы' : 'Threat level';
String get bastion2 => isRussian ? 'Критический' : 'Critical';
String get bastion3 => isRussian ? 'Броня' : 'Armor';
String get bastion4 => isRussian ? 'Тяжёлый' : 'Heavy';
String get bastion5 => isRussian ? 'Основная атака' : 'Primary Attack';
String get bastion6 => isRussian ? 'Залп снарядов' : 'Projectile volley';
String get bastion7 => isRussian ? 'Способности' : 'Abilities';
String get bastion8 => isRussian ? 'Слабость' : 'Weakness';
String get bastion9 => isRussian ? 'Задние пластины\nШарницы ножек' : 'Rear plate\nLeg joints';
String get bastion10 => isRussian ? 'Полученный опыт' : 'XP Gained';
String get bastion11 => isRussian ? 'Уничтожение: +500 XP\nЯдро: +250 XP\nПанцирь: +250 XP\nНога +250 XP' : 'Destroy: +500 XP\nScavenging Core: +50 XP\nScavenging Shell: +250 XP\nScavenging Leg: +250 XP';
String get bastion12 => isRussian ? 'Здоровье' : 'Health';

String get bombardier => isRussian ? 'Бомбардир' : 'Bombardier';
String get bombardier1 => isRussian ? 'Миномётный огонь' : 'Mortar Fire';
String get bombardier2 => isRussian ? 'Электрическая волна' : 'Shockwave';

String get courier => isRussian ? 'Доставщик ARC' : 'ARC Courier';

String get fireball => isRussian ? 'Огнешар' : 'Fireball';
String get fireball1 => isRussian ? 'Умеренный' : 'Moderate';
String get fireball2 => isRussian ? 'Огнемёт' : 'flamethrower';
String get fireball3 => isRussian ? 'Ядро' : 'Core';
String get fireball4 => isRussian ? 'Уничтожение: +100\nЯдро: +200 XP' : 'Destroy: +100 XP\nScavenging Core: +200 XP';

String get harvester => isRussian ? 'Да (Сборщик)' : 'Yes (Harvester)';
String get harvester1 => isRussian ? 'Сборщик ARC' : 'ARC Harvester';

String get hornet => isRussian ? 'Шершень' : 'Hornet';
String get hornet1 => isRussian ? 'Высокий' : 'high';
String get hornet2 => isRussian ? 'Средний' : 'Medium';
String get hornet3 => isRussian ? 'Электричество' : 'Electricity';
String get hornet4 => isRussian ? 'Задние двигатели' : 'Rear thrusters';
String get hornet5 => isRussian ? 'Уничтожение: +150 Опыта\nПоиск +250 XP' : 'Destruction: +150 XP\nSearch +250 XP';

String get leaper => isRussian ? 'Прыгун' : 'Leaper';
String get leaper1 => isRussian ? 'Прыжки' : 'Jumping';
String get leaper2 => isRussian ? 'Суставы ног, Колленные чашечки' : 'Leg joints, kneecaps';
String get leaper3 => isRussian ? 'Уничтожение: +500 Опыта\nПоиск +500 XP' : 'Destruction: +500 XP\nSearch +500 XP';

String get matriarch => isRussian ? 'Матриарх' : 'Matriarch';
String get matriarch1 => isRussian ? 'Экстремальный' : 'Extreme';
String get matriarch2 => isRussian ? 'Ракетный бой' : 'Missile Swarm';
String get matriarch3 => isRussian ? 'Газовые гранаты,  светошумовые\nгранаты,\nэнергетический щит,призыв ARC' : 'Gas Grenades\nFlashbangs\nEnergy Shield\nSummons ARC';
String get matriarch4 => isRussian ? 'Суставы ног, Ядро' : 'Core\nLeg Joints';
String get matriarch5 => isRussian ? 'Уничтожение: +1000 Опыта\nПоиск +500 XP' : 'Destruction: +1000 XP\nSearch +500 XP';

String get pop => isRussian ? 'Взрывобот' : 'Pop';
String get pop1 => isRussian ? 'Умеренный' : 'Moderate';
String get pop2 => isRussian ? 'Взрыв' : 'Explosion';
String get pop3 => isRussian ? 'Уничтожение: +50 Опыта\nПоиск +100 XP' : 'Destruction: +50 XP\nSearch +100 XP';

String get rocketeer => isRussian ? 'Ракетчик' : 'Rocketeer';
String get rocketeer1 => isRussian ? 'Ракеты' : 'Rockets';
String get rocketeer2 => isRussian ? 'Двигатели' : 'Engines';
String get rocketeer3 => isRussian ? 'Уничтожение: +600 Опыта\nПоиск +500 XP' : 'Destruction: +600 XP\nSearch +500 XP';

String get sentinel => isRussian ? 'Часовой' : 'Sentinel';
String get sentinel1 => isRussian ? 'Снайперский выстрел' : 'Sniper shot';
String get sentinel2 => isRussian ? 'Уничтожение: +200 XP\nПоиск +300 XP' : 'Destruction: +200 XP\nSearch: +300 XP';

String get shredder => isRussian ? 'Шредер' : 'Shredder';
String get shredder1 => isRussian ? 'Атака по радиусу' : 'Attack by radius';
String get shredder2 => isRussian ? 'Уничтожение: +200 XP\nПоиск +250 XP' : 'Destruction: +200 XP\nSearch: +250 XP';

String get snitch => isRussian ? 'Стукач' : 'Snitch';
String get snitch1 => isRussian ? 'Призыв ARC' : 'ARC Appeal';
String get snitch2 => isRussian ? 'Уничтожение: +100 XP\nЯдро: +200 XP' : 'Destruction: +100 XP\nCore: +200 XP';

String get spotter => isRussian ? 'Наводчик' : 'Spotter';
String get spotter1 => isRussian ? 'Раскрывает Рейдеров' : 'Reveals the Raiders';
String get spotter2 => isRussian ? 'Уничтожение: +200 XP\nПоиск +250 XP' : 'Destruction: +200 XP\nSearch: +250 XP';

String get surveyor => isRussian ? 'Наблюдатель' : 'Surveyor';
String get surveyor1 => isRussian ? 'Таран' : 'Ramming';
String get surveyor2 => isRussian ? 'Ядро' : 'Core';
String get surveyor3 => isRussian ? 'Низкий' : 'Low';
String get surveyor4 => isRussian ? 'Уничтожение: +200 XP\nПоиск +300 XP' : 'Destruction: +200 XP\nSearch: +300 XP';

String get queen => isRussian ? 'Королева' : 'Queen';
String get queen1 => isRussian ? 'Лазеры из глаз\nУдар о землю\nЭлектромагнитный импульс' : 'Lasers from the eyes\nImpact on the ground\nElectromagnetic pulse';

String get tick => isRussian ? 'Клещ' : 'Tick';
String get tick1 => isRussian ? 'Передвижение по любой поверхности' : 'Movement on any surface';

String get turret => isRussian ? 'Турель' : 'Turret';
String get turret1 => isRussian ? 'Уничтожение: +100 XP\nПоиск +200 XP' : 'Destruction: +100 XP\nSearch: +200 XP';

String get wasp => isRussian ? 'Оса' : 'Wasp';
String get wasp1 => isRussian ? 'Уничтожение: +100 XP\nПоиск +200 XP' : 'Destruction: +100 XP\nSearch: +200 XP';

String get speranz => isRussian ? 'Сперанца' : 'Speranza';
String get speranzStory => isRussian ? 'Сперанса - самый старый район Толедо, и это ваш новый дом. Это обзор различных действий, активностей и людей, которых вы можете встретить в Сперансе.\n' : 'Speranza is the oldest neighborhood in Toledo, and it is your new home. This is an overview of the various activities and people you may encounter in Speranza.\n';
String get hub => isRussian ? 'Главный хаб' : 'The main Hub';
String get hubStory => isRussian ? 'Главный Хаб - это место, где вы можете выбрать, какую карту развернуть на Верхней части и где можно набрать других рейдеров, чтобы быть вместе во время рейдов.\n' : 'The Main Hub is where you can choose which map to deploy on the Upper Part and where you can recruit other raiders to be together during raids.\n';

String get mapss => isRussian ? 'Карты' : 'Maps';
String get mapss1 => isRussian ? 'Играйте в одиночку или в группах до трёх человек, собирайте материалы из тайников по всей карте, охотитесь на ARC и пытайтесь пройти через точку эвакуации до того, как придёт другой рейдер за вашей добычей. Динамичная погода, время суток и события поддерживают свежесть.' : 'Play solo or in groups of up to three, collect materials from caches across the map, hunt the ARC and try to get through the evac point before another raider comes for your loot. Dynamic weather, time of day and events keep things fresh.';
String get battleDamb => isRussian ? 'Поле битвы у дамбы' : 'Dam Battlegrounds';
String get buriedCity => isRussian ? 'Погребенный город' : 'Buried City';
String get spaceport => isRussian ? 'Космопорт' : 'Spaceport';
String get bluegate => isRussian ? 'Синие ворота' : 'The Blue Gate';
String get riventides => isRussian ? 'Затонувшее побережье' : 'Riven Tides';
String get stellamontis => isRussian ? 'Стелла Монтис' : 'Stella Montis';
String get event => isRussian ? 'Событие:' : 'Event:';
String get difficulty => isRussian ? 'Сложность' : 'Difficult';
String get inevent => isRussian ? 'Без событий' : 'Without event';

String get lushblooms => isRussian ? 'Пышные цветы' : 'Lush Blooms';
String get uncoveredcaches => isRussian ? 'Обнаруженные тайники' : 'Uncovered Caches';
String get harvesteR => isRussian ? 'Сборщик ARC' : 'Harvester';
String get huskgraveyard => isRussian ? 'Кладбище Хаск' : 'Husk Graveyard';
String get matriarcH => isRussian ? 'Матриарх' : 'Matriarch';
String get nightraid => isRussian ? 'Ночной рейд' : 'Night Raid';
String get coldsnap => isRussian ? 'Cold Snap' : 'Cold Snap';
String get hurricane => isRussian ? 'Ураган' : 'Hurricane';
String get closescrutiny => isRussian ? 'Тщательный анализ' : 'Close Scrutiny';
String get searchProbe => isRussian ? 'Разведка зондов' : 'Prospecting Probes';
String get electromagneticstorm => isRussian ? 'Электромагнитная буря' : 'Electromagnetic Storm';

String get closeSecurityStory => isRussian ? ' Тщательный анализ - это условие карты, при\n котором появляются Геодезисты, защищённые\n Вапорайзерами, которые вызывают ARC-\n Оценщиков после того, как они заканчивают\n поиск ценных материалов. Рейдеры могут\n взломать ARC-оценщиков, чтобы получить \nдоступ к добыче.' : 'Thorough analysis is a map condition that\n spawns Surveyors protected by Vaporizers, who\n summon ARC-Assessors after they finish\n searching for valuable materials. Raiders can\n hack ARC-Assessors to gain access to the loot.';
String get closeSecurityDiff => isRussian ? ' * Нет активных запертых дверей\n * Уменьшение общей стоимости лута\n * Увеличение количества ARC лута' : '* No active locked doors\n * Decreased total loot value\n * Increased ARC loot';

String get coldSnapStory => isRussian ? ' Морозная погода убьёт вашего Рейдера за\n считанные минуты, если только вы не зайдёте\n внутрь или не восстановитесь быстро.\n Имейте это в виду, когда вступаете в бой с\n другими рейдерами - быть прижатым на\n открытом месте - это смертный приговор\n зимой в Ржавом поясе.\n\n' : 'Frosty weather will kill your Raider in\n a matter of minutes, unless you go\n inside or recover quickly.\n Keep this in mind when you engage\n other Raiders - being pinned down in\n an open area is a death sentence\n in the winter in the Rust Belt.\n\n';
String get coldSnapDiff => isRussian ? ' * Урожай Кэндлберри\n * Повышенная стоимость добычи\n * Разрушительный холод' : '* Candleberry Harvest\n * Increased Mining Cost\n * Destructive Cold';

String get electromagneticstormStory => isRussian ? ' Электромагнитная буря - это условие карты,\n которое покрывает поражённую карту в\n интенсивном шторме, поражающем поверхность\n молнией. Любые ARC и Рейдеры, поражённые\n молнией, получают повреждения и оглушают на\n короткое время. Разбившихся зондов и курьеров\n можно встретить в большем количестве.\n\n' : 'An electromagnetic storm is a map condition that covers the affected map in an intense storm that strikes the surface with lightning. Any ARC and Raiders that are struck by lightning take damage and are stunned for a short time. Broken probes and couriers can be found in greater numbers.\n\n';
String get electromagneticstormDiff => isRussian ? ' * Меньше активных точек возврата\n * Нет активных Рейдерских люков\n * Повышенная стоимость добычи\n * Удары молнии' : '* Less active return points\n * No active Raider hatches\n * Increased mining cost\n * Lightning strikes';

String get harvesterStory => isRussian ? ' Сборщик ARC - это условие карты, при котором\n на каждой карте появляется сооружение Жнеца,\n защищённое королевой. Рейдеры могут\n завершить последовательность активации ядра\n внутри комбайна, чтобы обнаружить\n специальные контейнеры с добычей, что даёт\n легендарные чертежи Эквалайзера и Юпитера.\n\n' : 'The ARC Collector is a map condition that causes a Reaper structure to appear on each map, protected by a Queen. Raiders can complete the core activation sequence inside the harvester to discover special loot containers, which yield legendary blueprints for the Equalizer and Jupiter.\n\n';
String get harvesterDiff => isRussian ? ' * Появление Королевы' : '* The appearance of the Queen';

String get hurricaneStory => isRussian ? ' Сильные ветры проносятся по поверхности,\n затрагивая значительные части района.\n Видимость и слух могут быть снижены, так что\n будьте начеку.\n\n' : 'Strong winds are blowing across the surface,\n affecting large parts of the area.\n Visibility and hearing may be reduced, so\n stay alert.\n\n';
String get hurricaneDiff => isRussian ? ' * Повышенная стоимость добычи\n * Обломки ломают на щиты\n * ARC с повышенной угрозой' : '* Increased mining cost\n * Debris breaks into shields\n * ARC with increased threat';

String get husk => isRussian ? ' Кладбище Хаска - это условие карты, которое\n значительно увеличивает количество\n разбросанных ARC-оболочек. Кроме того,\n оболочки могут электрифицироваться при\n прорыве, нанося шокирующее урона любому\n ничего не подозревающему рейдеру.\n\n' : 'Husk Graveyard is a map condition that\n significantly increases the number of\n scattered ARC shells. Additionally,\n the shells can become electrified upon\n breaking through, dealing shocking damage to any\n unsuspecting raider.\n\n';
String get husk1 => isRussian ? ' * Электрифицированные оболочки первой волны' : '* Electrified shells of the first wave';

String get lush => isRussian ? ' Погода в последнее время была необычайно\n приятной, и жизненно важные растения и\n плоды процветали. Выходите и собирайте еду,\n пока она не закончилась.\n\n' : 'The weather has been unusually pleasant lately, and vital plants and fruits have been flourishing. Go out and gather food before it runs out.';
String get lush1 => isRussian ? ' * Увеличение количества добычи природы' : '* Increasing the amount of nature mining';

String get matri => isRussian ? ' Матриарх - это условие на карте, которое\n порождает - смертоносного Матриарха - на этой\n карте.\n\n Матриарх - одна из крупнейших и самых опасных\n машин ARC, обнаруженных на сегодняшний день.\n Её можно найти только в условиях карты\n Матриарха.' : 'The Matriarch is a condition on the map that\n spawns the deadly Matriarch on this\n map.\n\n The Matriarch is one of the largest and most dangerous\n ARC machines discovered to date.\n It can only be found on the Matriarch map.';

String get night => isRussian ? ' Ночной рейд — это условие карты, которое\n увеличивает вероятность того, что Рейдеры\n найдут более ценную добычу, особенно за\n запертыми дверями, где ключи появляются\n чаще.\n\n * Меньше активных точек возврата\n * Нет активных Рейдерских люков\n * Повышенная стоимость добычи' : 'Night Raid is a map condition that\n increases the likelihood that Raiders\n will find more valuable loot, especially behind\n locked doors where keys appear more often.\n\n * Fewer active return points\n * No active Raider hatches\n * Increased loot value';

String get probeSpecting => isRussian ? ' Разведка зондов - это условие карты,\n которое значительно увеличивает количество\n зондов, разбросанных на карте. Зонды также\n могут быть лучше защищены летающими ARC-\n аппаратами, такими как Оса.\n\n * Увеличение количества зондов' : 'Probe Exploration is a map condition that significantly increases the number of probes scattered on the map. Probes can also be better protected by flying ARC vehicles such as the Wasp.\n\n * Increase the number of probes';

String get caches => isRussian ? ' Штормы обнаружили несколько старых\n тайников Рейдеров, но они настроены на взрыв,\n если будут слишком долго открыты. Поторопись\n и найди их всех.\n\n * Взрывающиеся тайники' : 'Storms has discovered several old Raider caches, but they are set to explode if they are left open for too long. Hurry up and find them all.\n\n * Exploding caches';

String get weapon => isRussian ? 'Оружие' : 'Weapon';
String get weaponStory => isRussian ? 'Оружие - стреляющее боеприпасами, основанными на снарядах или энергии. Рейдеры используют оружие для атаки и защиты от ARC и друг друга.' : 'Weapons - firing ammunition based on projectiles or energy. Raiders use weapons to attack and defend against ARC and each other.';
String get granades => isRussian ? 'Гранаты' : 'Granades';
String get gears => isRussian ? 'Снаряжение' : 'Gear';

String get obich => isRussian ? 'ОБЫЧНОЕ' : 'USUAL';
String get neobich => isRussian ? 'НЕОБЫЧНОЕ' : 'UNUSUAL';
String get redkoe => isRussian ? 'РЕДКОЕ' : 'RARE';
String get epic => isRussian ? 'ЭПИЧЕСКОЕ' : 'EPIC';
String get legendary => isRussian ? 'ЛЕГЕНДАРНОЕ' : 'LEGENDARY';

String get stitcher => isRussian ? 'Сшиватель' : 'Stitcher';
String get rattler => isRussian ? 'Трещотка' : 'Rattler';
String get ferro => isRussian ? 'Ферро' : 'Ferro';
String get kettle => isRussian ? 'Чайник' : 'Kettle';

String get brulleta => isRussian ? 'Бурлетта' : 'Burlleta';
String get anvil => isRussian ? 'Наковальня' : 'Anvil';
String get arped => isRussian ? 'Арпеджио' : 'Arpedgio';
String get iltoro => isRussian ? 'Эль-Торо' : 'Il_toro';

String get buntar => isRussian ? 'Бунтарь' : 'Renegade';
String get venator => isRussian ? 'Охотник' : 'Venator';
String get torrente => isRussian ? 'Торренте' : 'Torrente';
String get ospray => isRussian ? 'Ястреб' : 'Osprey';
String get canto => isRussian ? 'Канто' : 'Canto';

String get bettina => isRussian ? 'Бетина' : 'Bettina';
String get tempest => isRussian ? 'Буря' : 'Tempest';
String get vulcan => isRussian ? 'Вулкан' : 'Vulcano';
String get bobcat => isRussian ? 'Рысь' : 'Bobcat';
String get hullcracker => isRussian ? 'Взломщик корпусов' : 'Hullcracker';

String get afeliy => isRussian ? 'Афелий' : 'Aphelion';
String get dolabra => isRussian ? 'Долабра' : 'Dolabra';
String get jupiter => isRussian ? 'Юпитер' : 'Jupiter';
String get equa => isRussian ? 'Эквалайзер' : 'Equalizer';

String get boevaya => isRussian ? 'Боевая винтовка' : 'Combat rifle';
String get shturmovaya => isRussian ? 'Штурмовая винтовка' : 'Assault rifle';
String get sniperskaya => isRussian ? 'Снайперская винтовка' : 'Sniper Rifle';
String get pistolet => isRussian ? 'Пистолет' : 'pistol';
String get ruchnaya => isRussian ? 'Ручная пушка' : 'Hand cannon';
String get drobovik => isRussian ? 'Дробовик' : 'The shotgun';
String get special => isRussian ? 'Специальное' : 'Bobcat';

//<<<<<<< HEAD
String get granade => isRussian ? 'ОБЫЧНОЕ' : 'USUAL';
String get granade1 => isRussian ? 'НЕОБЫЧНОЕ' : 'UNUSUAL';
String get granade2 => isRussian ? 'РЕДКОЕ' : 'RARE';
String get granade3 => isRussian ? 'ЭПИЧЕСКОЕ' : 'EPIC';
//=======
String get anvilStory => isRussian ? 'Высокий урон в тело и от выстрелов в голову, но неудобное управление.' : 'High body and head damage, but awkward controls.';
String get typ => isRussian ? 'Тип боеприпасов' : 'Ammo Type';
String get magazine => isRussian ? 'Размер магазина' : 'Magazine Size';
String get dolgo => isRussian ? 'Долговечность' : 'Durability';
String get rejim => isRussian ? 'Режим стрельбы' : 'Firing Mode';
String get bronyaArc => isRussian ? 'Пробитие брони ARC' : 'ARC Armor Penetration';
String get pov => isRussian ? 'Повреждения' : 'Damage';
String get skorostrel => isRussian ? 'Скорострельность' : 'Fire Rate';
String get head => isRussian ? 'Множитель в голову' : 'Headshot Multiplier';
String get range => isRussian ? 'Дальность' : 'Range';
String get stab => isRussian ? 'Стабильность' : 'Stability';
String get skor => isRussian ? 'Скорость' : 'Agility';
String get skrit => isRussian ? 'Скрытность' : 'Stealth';
String get strelba => isRussian ? 'Одиночный' : 'Single';
String get bronyaArcSil => isRussian ? 'Сильное' : 'Strong';
String get bronyaArcSlab => isRussian ? 'Слабое' : 'Very Weak';
String get bronyaArcSred => isRussian ? 'Умеренное' : 'Moderate';
String get shots1130 => isRussian ? '1130 выстрелов' : '1130 Shots fired';

String get obshie => isRussian ? 'Общие данные' : 'General Data';
String get ves => isRussian ? 'Вес' : 'Weight';
String get prodaja => isRussian ? 'Цена продажи' : 'Sell Price';
String get pokupka => isRussian ? 'Цена покупки' : 'Buy Price';

String get heavyBoep => isRussian ? 'Тяжёлые боеприпасы' : 'Heavy Ammo';
String get sredBoep => isRussian ? 'Средние боеприпасы' : 'Medium Ammo';
String get lightBoep => isRussian ? 'Легкие боеприпасы' : 'Light Ammo';
String get enerBoep => isRussian ? 'Энергетический заряд' : 'Energy Clip';

String get aphelionStory => isRussian ? 'Стреляет высокоскоростными энергетическими снарядами.' : 'It fires high-velocity energy projectiles.';





//>>>>>>> 38a312ca544b7a30406bfc0d359ffe0f2c2a456a

String get granade4 => isRussian ? 'Легкая ударная граната' : 'Light attack granade';
String get granade5 => isRussian ? 'Фейерверкер' : 'Firework';
String get granade6 => isRussian ? 'Газовая граната' : 'Gas granade';

String get granade7 => isRussian ? 'Приманочная граната' : 'Lure granade';
String get granade8 => isRussian ? 'Граната Seeker' : 'Seeker Granade';
String get granade9 => isRussian ? 'Гранатомета Snap Blast' : 'Granade Snap Blast';

String get granade10 => isRussian ? 'Пламенная Граната' : 'Blaze granade';
String get granade11 => isRussian ? 'Тяжелая взрывательная граната' : 'Heavy granade';
String get granade12 => isRussian ? 'Электрическая граната' : 'Stuned granade';
String get granade13 => isRussian ? 'Дымовая граната' : 'Smoke granade';
String get granade14 => isRussian ? 'Маркировочная граната' : 'Mark granade';
String get granade15 => isRussian ? 'Первопроходец' : 'Trailblazer granade';
String get granade16 => isRussian ? 'Триггер граната' : 'Trigger Granade';

String get granade17 => isRussian ? 'Дедлайн' : 'Deadline';
String get granade18 => isRussian ? 'Волчья стая' : 'Wolf pack';

String get fastslots => isRussian ? 'Быстрое использование' : 'Faster slots';
String get etopizda => isRussian ? 'Граната, которая взрывается при ударе, покрывая огонь и наносящая урон со временем."' : 'A grenade that explodes on impact, covering the fire and dealing damage over time.';
String get etopizda1 => isRussian ? 'Мина, которая наносит урон всему, что находится в её радиусе, когда таймер истекает."' : 'A mine that deals damage to everything within its radius when the timer expires.';
String get stat1 => isRussian ? 'Повреждения' : 'Damage';
String get stat2 => isRussian ? 'Продолжительность' : 'Duration';
String get stat3 => isRussian ? 'Радиус' : 'Radius';
String get stat4 => isRussian ? 'Вес' : 'Weight';
String get stat5 => isRussian ? 'Стоимость' : 'Cost'; 
String get stat6 => isRussian ? 'Размер стопки' : 'stack size'; 
String get stat7 => isRussian ? 'Продажа' : 'Sell cost';

String get etopizda2 => isRussian ? 'Устройство, которое приятно искрится и щёлкает.' : 'A device that sparkles and clicks pleasantly.'; 
String get etopizda3 => isRussian ? 'Общие данные' : 'General data'; 
String get etopizda4 => isRussian ? 'Граната, которая при попадании создаёт затяжное токсичное облако, истощая выносливость любого рейдера в зоне поражения.' : 'A grenade that creates a lingering toxic cloud upon impact, draining the stamina of any raider within its range.'; 
String get etopizda5 => isRussian ? 'Граната, которая взрывается при ударе, нанося взрывной урон в небольшом радиусе.' : 'A grenade that explodes on impact, dealing explosive damage in a small radius.'; 
String get etopizda6 => isRussian ? 'Граната, которая взрывается с задержкой, нанося взрывной урон в радиусе действия.' : 'A grenade that detonates after a delay, dealing explosive damage within its range.'; 
String get etopizda7 => isRussian ? 'Шумное устройство, которое прилипает к поверхностям, отвлекая ближайшие ARC-машины и привлекая их огонь.' : 'A noisy device that sticks to surfaces, distracting nearby ARC vehicles and attracting their fire.'; 
String get etopizda8 => isRussian ? 'Самонаводящаяся граната, поражающая один ближайший ARC, наносящая взрывной урон при попадании.' : 'A homing grenade that targets one nearby ARC, dealing explosive damage on impact.'; 
String get etopizda9 => isRussian ? 'Граната, которая взрывается после задержки, оглушая врагов в радиусе своего действия.' : 'A grenade that explodes after a delay, stunning enemies within its range.'; 
String get etopizda10 => isRussian ? 'Граната, которая при попадании создаёт затяжное облако дыма, блокирующее обзор для ARC и других рейдеров.' : 'A grenade that creates a long-lasting cloud of smoke upon impact, blocking the view for ARC and other raiders.'; 
String get etopizda11 => isRussian ? 'Граната, которая цепляется за поверхности и наносит взрывной урон после короткой задержки.' : 'A grenade that clings to surfaces and deals explosive damage after a short delay.'; 
String get etopizda12 => isRussian ? 'Граната, которая взрывается после задержки, помечая Рейдеров и ARC в определённой зоне, позволяя кратковременно отслеживать их местоположение.' : 'A grenade that explodes after a delay, marking Raiders and ARC in a specific area, allowing you to briefly track their location.'; 
String get etopizda13 => isRussian ? 'Граната, которая выбрасывает след горючих газов вдоль своего пути, вызывая взрывную цепную реакцию при воспламенении.' : 'A grenade that emits a trail of combustible gases along its path, causing an explosive chain reaction upon ignition.'; 
String get etopizda14 => isRussian ? 'Граната, детонируемая дистанционно, которая может прилипать к поверхностям и ARC, нанося взрывной урон при срабатывании.' : 'A remotely detonated grenade that can stick to surfaces and ARC, dealing explosive damage when triggered.'; 
String get etopizda15 => isRussian ? 'Граната, которая разлетается на несколько самонаводящихся ракет, каждая из которых нацеливается на ARC и наносит взрывной урон при попадании.' : 'A grenade that splits into several homing missiles, each of which targets an ARC and deals explosive damage on impact.';

String get stunned => isRussian ? 'Время ошеломления' : 'The time of stupefaction';

String get metri => isRussian ? '2,5 м' : '2,5 m';
String get metri1 => isRussian ? '7,5 м' : '7,5 m';
String get metri2 => isRussian ? '50 м' : '50 m';
String get metri3 => isRussian ? '20 м' : '20 m';
String get metri4 => isRussian ? '7,5 м' : '7,5 m';
String get metri5 => isRussian ? '10 м' : '10 m';
String get metri6 => isRussian ? '6 м' : '6 m';
String get metri7 => isRussian ? '2 м' : '2 m';
String get metri8 => isRussian ? '100 м' : '100 m';

String get secundi => isRussian ? '7,5с' : '7,5 s';
String get secundi1 => isRussian ? '20 с' : '20 s';
String get secundi2 => isRussian ? '25/с' : '25/s';
String get secundi3 => isRussian ? '15 с' : '15 s';
String get secundi4 => isRussian ? '3 с' : '3 s';
String get secundi5 => isRussian ? '10 с' : '10 s';
String get secundi5_1 => isRussian ? '5/с' : '5/s';
String get secundi6 => isRussian ? '7 с' : '7 s';
String get secundi6_1 => isRussian ? '2 с' : '2 s';
String get secundi7 => isRussian ? '30 с' : '30 s';
String get secundi8 => isRussian ? '1,5 с' : '1,5 s';
String get secundi9 => isRussian ? '6 с' : '6 s';
String get secundi10 => isRussian ? '3,5 с' : '3,5 s';

String get osobayaCherta => isRussian ? 'Особая черта' : 'A special feature';
String get experiment => isRussian ? 'Экспериментальные' : 'Experimental';
String get reload => isRussian ? 'Время перезарядки' : 'Recharge time';
String get da => isRussian ? '2-ой выстрел' : '2nd shot';
String get arpedStory => isRussian ? 'У него хороший урон и точность.' : 'He has good damage and accuracy.';
String get da1 => isRussian ? '3-ой выстрел' : '3nd shot';
String get bettinaStory => isRussian ? 'Низкая скорострельность и высокий урон.' : 'Low rate of fire and high damage.';
String get avtomaticheskiy => isRussian ? 'Полностью автоматический' : 'Fully automatic';
String get bobcatStory => isRussian ? 'Высокая скорострельность, но низкая точность.' : 'High rate of fire, but low accuracy.';
String get poluAvtomaticheskiy => isRussian ? 'Полуавтоматический' : 'Semi-automatic';
String get cantoStory => isRussian ? 'Полностью автоматический пистолет-пулемёт с большим калибром.' : 'A fully automatic submachine gun with a large caliber.';
String get dolabraStory => isRussian ? 'Экспериментальное оружие, способное либо стрелять на короткую дальность, либо быть сфокусированным для стрельбы узким лучом тепла средней дальности.' : 'An experimental weapon that can either fire at short range or be focused to fire a narrow beam of medium-range heat.';
String get shots125 => isRussian ? '125 выстрелов' : '125 shots fired';



}