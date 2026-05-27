import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../app_language.dart';
import '../app_strings.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final lang = context.watch<AppLanguage>();
    final s = AppStrings.of(lang);

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 4, 17, 43),
      appBar: AppBar(
        title: Text(s.settingsTitle),
        backgroundColor: Colors.yellow,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              s.language,
              style: const TextStyle(
                color: Colors.white54,
                fontSize: 12,
                letterSpacing: 0.8,
              ),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                _LangButton(
                  label: 'RU  Русский',
                  selected: lang.isRussian,
                  onTap: lang.setRussian,
                ),
                const SizedBox(width: 12),
                _LangButton(
                  label: 'EN  English',
                  selected: !lang.isRussian,
                  onTap: lang.setEnglish,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _LangButton extends StatelessWidget {
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const _LangButton({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: selected ? Colors.yellow : Colors.white24,
          ),
          color: selected
              ? Colors.yellow.withOpacity(0.15)
              : Colors.transparent,
        ),
        child: Text(
          label,
          style: TextStyle(
            color: selected ? Colors.yellow : Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}