import 'package:flutter/material.dart';
import 'package:arc_raiders/screens/history_history_screen.dart';

class SurfaceScreen extends StatefulWidget {
  const SurfaceScreen({super.key});

  @override
  State<SurfaceScreen> createState() => _SurfaceScreenState();
}

class _SurfaceScreenState extends State<SurfaceScreen> {
  int selectedIndex = 0;

  final categories = [
    "ЛОКАЦИИ",
    "ПРИРОДА",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 4, 17, 43),
      appBar: AppBar(
        title: const Text("НА ПОВЕРХНОСТИ"),
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
                const ExpandableInfoCard(
                  title: "Плотина",
                  imagePath: "assets/images/Alcantara_Dam_Codex.png",
                  content:
                      "Электростанция Алькантара, или Плотина, стоит молчаливым стражем среди затоплённых земель. Когда-то редкая спасательная линия для поселенцев в эпоху Восхода Солнца, она превратилась в поле боя, покрытое шрамами снарядов, во время заключительных сражений Первой волны.\n\n"
                      "Даже сейчас эти токсичные, заболоченные водой земли остаются горячей точкой стычек ARC. Между исследовательскими зданиями, различными плотинами и ветхими гидропонными куполами, рейдеры знают, что это надёжный источник ценной добычи.\n\n"
                      "Во время Первой волны плотина Алькантара стала местом многих самых тяжёлых сражений конфликта, а шрамы и сооружения до сих пор остаются на этом месте.",
                ),
                const SizedBox(height: 12),

                const ExpandableInfoCard(
                  title: "Погребённый город",
                  imagePath: "assets/images/Buried_City_Codex.png",
                  content:
                      "Долгое время покрытый песчаными дюнами, Похороненный город предлагает редкие взгляды на жизнь до Краха. Сильные ветры теперь выявили часть его остатков, хотя постоянно меняющиеся дюны могут быть опасными и нестабильными.\n\n"
                      "Таблички по всему городу показывают, что изначально его жители называли Марано, хотя это название давно ушло в забвение.",
                ),
                const SizedBox(height: 12),

                const ExpandableInfoCard(
                  title: "Космопорт",
                  imagePath: "assets/images/Acerra_Spaceport_Codex.png",
                  content:
                  "Космодром Асерра - величественное свидетельство прошлых амбиций человечества. Именно здесь когда-то взмыли шаттлы Исхода - сосуды надежды и отчаяния, оставляя после себя измучённую Землю.",
                ),
                const SizedBox(height: 12),

                const ExpandableInfoCard(
                  title: "Синие Ворота",
                  imagePath: "assets/images/The_Blue_Gate_Codex.png",
                  content:
                  "Когда-то неизменный символ стойкой связи, Голубые Ворота теперь служат грозным входом в опасные горные хребты. Окружающая долина несёт шрамы - как новые, так и старые.\n\n"
                  "Сеть Tubes была расширена только недавно до ворот, что потребовало строительства совершенно новых сооружений рейдеров для их присутствия.",
                ),
                const SizedBox(height: 12),

                 const ExpandableInfoCard(
                  title: "Стелла Монтис",
                  imagePath: "assets/images/Stella_Montis_Codex.png",
                  content:
                  "Глубоко вырезанная в горном склоне, Стелла Монтис бесшумно возвышается над долиной внизу. Её огромные масштабы намекают на какое-то великое намерение, но последние обитатели, казалось, запечатали его от мира, оставив то, что внутри скрывается, в значительной степени неизвестным.",
                 ),
                 const SizedBox(height: 12),

                 const ExpandableInfoCard(
                  title: "Бурные потоки",
                  imagePath: "assets/images/Riven_Tides_Codex.png",
                  content:
                  "Когда-то роскошный курорт эпохи Исхода, набережная Ривен Тайдс известна немногим ветеранам Рейдеров как первое место, где они увидели, как ARC спускается с небес.\n\n"
                  "В первые дни Первой волны эта территория была заброшена из-за отсутствия укрытия, но теперь эта же открытая береговая линия имеет решающее значение для обнаружения новых угроз, движущихся в Ржавый пояс.",
                 ),
              ],

              if (selectedIndex == 1) ...[
                const ExpandableInfoCard(
                  title: "Буря",
                  imagePath: "assets/images/The_Storm_Codex.png",
                  content:
                      "Особенно сильная песчаная буря несколько дней обрушилась на Ржавый пояс, вынудив новый приток беженцев искать убежище в Толедо.\n\n"
                      "Самые разумные Рейдеры знали, что нужно укрываться, хотя другие видели окно для безнаказанного управления Верхним городом.\n\n"
                      "Шторм утих несколько дней и повредил значительную часть инфраструктуры верхнего района Толедо. В это время ARC казалась такой же дезориентированной, как и большинство Рейдеров, многие из самых угрожающих машин временно отступали.",
                ),
                const SizedBox(height: 12),

                const ExpandableInfoCard(
                  title: "Дрожь",
                  imagePath: "assets/images/The_Tremors_Codex.png",
                  content:
                      "Редкие толчки наблюдаются в Ржавом поясе на протяжении поколений, хотя обычно слабые и далекие. Со временем они стали чаще и интенсивнее, и чаще, что тревожило Шани.\n\n"
                      "Внезапный перелом недавно разрушил Ржавый Пояс; обрушив несколько зданий в Толедо и повредив крупную инфраструктуру. Данные с LiDAR-сканеров Шани указывают на серьёзный перелом, проследивший до района вокруг Голубых Врат.",
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}