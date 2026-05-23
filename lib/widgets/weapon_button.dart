import 'package:flutter/material.dart';
import 'package:arc_raiders/widgets/animated_border.dart';

class WeaponButton extends StatelessWidget {
  final String title;
  final String imagePath;
  final VoidCallback onTap;

  const WeaponButton({
    super.key,
    required this.title,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBorder(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Material(
          color: const Color.fromARGB(255, 1, 1, 36),
          child: InkWell(
            onTap: onTap,
            child: Container(
              height: 120,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      imagePath,
                      width: 200,
                      height: 100,
                      fit: BoxFit.contain,
                    ),
                  ),

                  const SizedBox(width: 16),

                  Expanded(
                    child: Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}