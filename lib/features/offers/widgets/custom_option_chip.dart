import 'package:flutter/material.dart';
import 'package:shop_app_task/core/helper/app_text_style.dart';
import 'package:shop_app_task/core/utils/app_colors.dart';

class CustomOptionChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const CustomOptionChip({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.blue.withOpacity(0.1) : AppColors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isSelected ? AppColors.blue : AppColors.black.withOpacity(0.1),
          ),
        ),
        child: Text(
          label,
          style: AppTextStyle.font14Medium.copyWith(color: isSelected ? AppColors.blue : AppColors.black.withOpacity(0.5)),
        ),
      ),
    );
  }
}
