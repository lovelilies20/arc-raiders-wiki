import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:arc_raiders/app_language.dart';
import 'package:arc_raiders/app_strings.dart';

class SnitchScreen extends StatelessWidget {
  const SnitchScreen({super.key});

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
                    "assets/images/snitch.jpg",
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: Text(
                    s.snitch,
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
                  value: s.pop1,
                  valueColor: Colors.green,
                ),
                ArcStatRow(
                  title: s.bastion3,
                  value: s.probeNo,
                ),
                ArcStatRow(
                  title: s.bastion5,
                  value: s.probeNo,
                ),
                ArcStatRow(
                  title: s.bastion7,
                  value: s.snitch1,
                ),
                ArcStatRow(
                  title: s.bastion8,
                  value: s.rocketeer2,
                ),
                ArcStatRow(
                  title: s.bastion10,
                  value: s.snitch2,
                ),
                ArcStatRow(
                  title: s.bastion12,
                  value: "158",
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

class ArcStatRow extends StatelessWidget {
  final String title;
  final String value;
  final Color valueColor;

  const ArcStatRow({
    super.key,
    required this.title,
    required this.value,
    this.valueColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              Expanded(
                child: Text(
                  value,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: valueColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 10),

          Container(
            height: 1,
            color: Colors.white12,
          ),
        ],
      ),
    );
  }
}