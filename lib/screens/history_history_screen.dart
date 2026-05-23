import 'package:flutter/material.dart';
import 'package:arc_raiders/widgets/animated_border.dart';
import 'package:provider/provider.dart';
import 'package:arc_raiders/app_language.dart';
import 'package:arc_raiders/app_strings.dart';

class HistoryHistoryScreen extends StatefulWidget {
  const HistoryHistoryScreen({super.key});

  @override
  State<HistoryHistoryScreen> createState() => _HistoryHistoryScreenState();
}

class _HistoryHistoryScreenState extends State<HistoryHistoryScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final s = AppStrings.of(context.watch<AppLanguage>());
    final categories = [
    s.collapse,
    s.exodus,
    s.sunrise,
  ];
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 4, 17, 43),
      appBar: AppBar(
        title: Text(s.history),
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
                  title: s.thecollapse,
                  imagePath: "assets/images/rasvet.jpg",
                  content:
                      s.collapseStory,
                      
                ),
                const SizedBox(height: 12),

                ExpandableInfoCard(
                  title: s.projectheartwood,
                  imagePath: "assets/images/2.jpg",
                  content:
                      s.heartwoodStory,
                ),
              ],

              if (selectedIndex == 1) ...[
                ExpandableInfoCard(
                  title: s.theexodus,
                  imagePath: "assets/images/3.jpg",
                  content:
                      s.exodusStory,
                ),
                const SizedBox(height: 12),

                ExpandableInfoCard(
                  title: s.towerstart,
                  imagePath: "assets/images/4.jpg",
                  content:
                      s.towersStory,
                ),
              ],

              if (selectedIndex == 2) ...[
                ExpandableInfoCard(
                  title: s.thesunrise,
                  imagePath: "assets/images/5.jpg",
                  content:
                      s.sunriseStory,
                ),
                const SizedBox(height: 12),

                ExpandableInfoCard(
                  title: s.settlers,
                  imagePath: "assets/images/6.jpg",
                  content:
                      s.settlersStory,
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

class ExpandableInfoCard extends StatefulWidget {
  final String title;
  final String content;
  final String imagePath;

  const ExpandableInfoCard({
    super.key,
    required this.title,
    required this.content,
    required this.imagePath,
  });

  @override
  State<ExpandableInfoCard> createState() => _ExpandableInfoCardState();
}

class _ExpandableInfoCardState extends State<ExpandableInfoCard> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedBorder(
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 1, 1, 36),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            ListTile(
              title: Text(
                widget.title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),

              trailing: IconButton(
                icon: Icon(
                  isExpanded
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                  color: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                },
              ),
            ),

            if (isExpanded)
              Padding(
                padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      widget.imagePath,
                        width: double.infinity,
                        height: 200,
                        fit: BoxFit.cover,

                        errorBuilder: (context, error, stackTrace) {
                         return Container(
                          height: 200,
                          color: Colors.red,
                        child: const Center(
                        child: Text(
                          "Фото не найдено",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                        const SizedBox(height: 16),

                        Text(
                          widget.content,
                            style: const TextStyle(
                              color: Colors.white70,
                                fontSize: 16,
                                height: 1.5,
                  ),
                ),
               ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}