import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/helper/app_responsive.dart';
import '../../../core/helper/app_text_style.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_icons.dart';

class CustomPlanCard extends StatefulWidget {
  const CustomPlanCard({
    super.key,
    required this.features,
    this.statistics,
    required this.title,
  });

  final String title;
  final List<Widget> features;
  final List<Widget>? statistics;

  @override
  State<CustomPlanCard> createState() => _CustomPlanCardState();
}

class _CustomPlanCardState extends State<CustomPlanCard> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.black.withOpacity(0.1)),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                '3,000ج.م',
                style: AppTextStyle.font16Bold.copyWith(
                  color: AppColors.orange,
                  decoration: TextDecoration.underline,
                  decorationColor: AppColors.orange,
                ),
                textDirection: TextDirection.rtl,
              ),
              Spacer(),
              Text(
                widget.title,
                style: AppTextStyle.font16Bold.copyWith(
                  color: isSelected ? AppColors.purple : AppColors.black,
                ),
              ),
              Checkbox(
                value: isSelected,
                onChanged: (value) {
                  setState(() {
                    isSelected = !isSelected;
                  });
                },
                activeColor: AppColors.purple,
              ),
              SizedBox(width: AppResponsive.width(context, value: 2)),
            ],
          ),
          Divider(),
          SizedBox(height: AppResponsive.height(context, value: 12)),
          Row(
            children: [
              Column(children: widget.statistics ?? []),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: widget.features,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
