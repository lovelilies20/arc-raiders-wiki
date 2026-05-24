import 'package:flutter/material.dart';
import 'SNITCH.dart';
import 'package:provider/provider.dart';
import 'package:arc_raiders/app_language.dart';
import 'package:arc_raiders/app_strings.dart';

class MatriarchScreen extends StatelessWidget {
  const MatriarchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final s = AppStrings.of(context.watch<AppLanguage>());
    return Scaffold(
      backgroundColor: const Color(0xFF0B1C3D),
      appBar: AppBar(
        title: const Text("ARC"),
        backgroundColor: const Color.fromARGB(255, 234, 247, 60),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 2, 8, 35),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                  child: Image.asset(
                    "assets/images/matriarch.jpg",
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 20),

                Center(
                  child: Text(
                    s.matriarch,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                ArcStatRow(
                  title: s.bastion1,
                  value: s.matriarch1,
                  valueColor: Colors.yellowAccent,
                ),
                ArcStatRow(
                  title: s.bastion3,
                  value: s.bastion4,
                  valueColor: Colors.blueAccent,
                ),
                ArcStatRow(
                  title: s.bastion5,
                  value: s.matriarch2,
                ),
                ArcStatRow(
                  title: s.bastion7,
                  value: s.matriarch3,
                ),
                ArcStatRow(
                  title: s.bastion8,
                  value: s.matriarch4,
                ),
                ArcStatRow(
                  title: s.bastion10,
                  value: s.matriarch5,
                ),
                ArcStatRow(
                  title: s.bastion12,
                  value: "27000",
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
