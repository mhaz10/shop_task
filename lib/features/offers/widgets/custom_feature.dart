import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/helper/app_responsive.dart';
import '../../../core/helper/app_text_style.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_icons.dart';

class CustomFeature extends StatelessWidget {
  const CustomFeature({super.key, required this.title, required this.icon, this.subTitle = ''});

  final String title;
  final String subTitle;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(title, style: AppTextStyle.font14Medium.copyWith(color: AppColors.black),),
            if(subTitle.isNotEmpty)
            Text(subTitle, style: AppTextStyle.font14Medium.copyWith(color: AppColors.red),),
          ],
        ),
        SizedBox(width: AppResponsive.width(context, value: 8),),
        SvgPicture.asset(icon),
        SizedBox(width: AppResponsive.width(context, value: 16),),
      ],
    );
  }
}
