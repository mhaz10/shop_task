import 'package:flutter/material.dart';
import 'package:shop_app_task/features/offers/widgets/custom_option_chip.dart';

import '../../../core/helper/app_responsive.dart';
import '../../../core/helper/app_text_style.dart';
import '../../../core/utils/app_colors.dart';

class CustomSelectedItem extends StatefulWidget {
  const CustomSelectedItem({super.key, required this.types, required this.title});

  final String title;
  final List<String> types;

  @override
  State<CustomSelectedItem> createState() => _CustomSelectedItemState();
}

class _CustomSelectedItemState extends State<CustomSelectedItem> {
  String selectedType = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Align(
            alignment: Alignment.topRight,
            child: Text(widget.title, style: AppTextStyle.font16Medium.copyWith(color: AppColors.grey),),
          ),
        ),
        SizedBox(height: AppResponsive.height(context, value: 12),),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              children: widget.types.map((type) {
                return CustomOptionChip(
                  label: type,
                  isSelected: selectedType == type,
                  onTap: () {
                    setState(() => selectedType = type);
                  },
                );
              }).toList(),
            ),
          ),
        )
      ],
    );
  }
}
