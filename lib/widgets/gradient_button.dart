import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onTap;
  final double iconSize;
  final List<Color> colors;

  const GradientButton({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
    this.iconSize = 18,
    this.colors = const [
      Color(0xFF006db7),
      Color(0xFF00b39f),
      Color(0xFFFFC107),
    ],
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 250,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: colors),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(15),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(width: 8),
                Icon(icon, color: Colors.white, size: iconSize),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
