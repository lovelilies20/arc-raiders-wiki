import 'package:flutter/material.dart';

class TabsExampleScreen extends StatefulWidget {
  const TabsExampleScreen({super.key});

  @override
  State<TabsExampleScreen> createState() => _TabsExampleScreenState();
}

class _TabsExampleScreenState extends State<TabsExampleScreen> {
  int selectedIndex = 0;

  final tabs = [
    "СЛУЖБА БЕЗОПАСНОСТИ",
    "ПРОМЫШЛЕННЫЕ",
    "ДЕЯТЕЛЬНОСТЬ",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 4, 17, 43),

      body: SafeArea(
        child: Column(
          children: [

            ///  ВКЛАДКИ (ГОРИЗОНТАЛЬНЫЕ)
            SizedBox(
              height: 60,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: tabs.length,
                itemBuilder: (context, index) {
                  final isSelected = selectedIndex == index;

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },

                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      padding: const EdgeInsets.symmetric(horizontal: 16),

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: isSelected
                              ? Colors.white
                              : Colors.white.withOpacity(0.3),
                        ),
                      ),

                      alignment: Alignment.center,

                      child: Text(
                        tabs[index],
                        style: TextStyle(
                          color: isSelected
                              ? Colors.white
                              : Colors.white.withOpacity(0.6),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 20),

            ///  КОНТЕНТ (МЕНЯЕТСЯ)
            Expanded(
              child: IndexedStack(
                index: selectedIndex,
                children: [
                  _buildSecurity(),
                  _buildIndustrial(),
                  _buildActivity(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  ///  РАЗНЫЕ ЭКРАНЫ НИЖЕ

  Widget _buildSecurity() {
    return _cards([
      "СТУКАЧ",
      "ОСА",
      "ШЕРШЕНЬ",
      "ВЗРЫВОБОТ",
      "ОГНЕШАР",
    ]);
  }

  Widget _buildIndustrial() {
    return _cards([
      "ЗАВОД 1",
      "ЗАВОД 2",
      "ЗАВОД 3",
    ]);
  }

  Widget _buildActivity() {
    return _cards([
      "МИССИЯ 1",
      "МИССИЯ 2",
    ]);
  }

  ///  ГОРИЗОНТАЛЬНЫЕ КАРТОЧКИ КАК В ИГРЕ

  Widget _cards(List<String> titles) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: titles.length,
      itemBuilder: (context, index) {
        return Container(
          width: 200,
          margin: const EdgeInsets.only(right: 12),

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.black,
          ),

          child: Stack(
            children: [

              ///  ФОН
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  "assets/images/history.jpg",
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),

              ///  затемнение
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.black.withOpacity(0.3),
                ),
              ),

              ///  текст
              Center(
                child: Text(
                  titles[index],
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}