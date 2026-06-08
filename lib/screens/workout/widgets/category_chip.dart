import 'package:fitness_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class CategoryChip extends StatelessWidget {
  final String title;

  const CategoryChip({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 29, vertical: 10),
      decoration: BoxDecoration(
        color: const Color(0xFFE92222),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(title, style: AppTextStyles.categoryChip),
    );
  }
}
