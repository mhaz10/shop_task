import 'package:flutter/material.dart';

import '../../../core/helper/app_responsive.dart';
import '../../../core/helper/app_text_style.dart';
import '../../../core/utils/app_colors.dart';

class CustomFilter extends StatefulWidget {
  const CustomFilter({super.key});

  @override
  State<CustomFilter> createState() => _CustomFilterState();
}

class _CustomFilterState extends State<CustomFilter> {
  final List<String> filterNames = [
    'كل العروض',
    'ملابس',
    'أكسسوارات',
    'الكترونيات',
    'المنزل',
    'الجمال',
    'الأطفال',
    'الرياضة',
  ];

  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppResponsive.height(context, value: 70),
      child: ListView.separated(
        padding: const EdgeInsets.only(right: 16),
        reverse: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selected = index;
            });
          },
          child: Container(
            height: AppResponsive.height(context, value: 70),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(color: AppColors.grey),
                color: selected == index ? AppColors.orange.withOpacity(0.1) : null
            ),
            child: Text(filterNames[index], style: AppTextStyle.font14Medium.copyWith(
              color: selected == index ? AppColors.orange : AppColors.grey
            ),),
          ),
        ),
        separatorBuilder: (context, index) => SizedBox(width: 8),
        itemCount: filterNames.length,
      ),
    );
  }
}
