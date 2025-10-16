import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/helper/app_responsive.dart';
import '../../../core/helper/app_text_style.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_icons.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key, this.icon, required this.title});

  final String? icon;
  final String title;


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.blue,
        minimumSize: Size(
          AppResponsive.width(context, value: 328),
          AppResponsive.height(context, value: 80),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null)
          SvgPicture.asset(
            icon ?? '',
            width: 16,
            height: 16,
          ),
          if (icon != null)
          SizedBox(width: AppResponsive.width(context, value: 4)),
          Text(
            title,
            style: AppTextStyle.font16Bold.copyWith(
              color: AppColors.white,
            ),
          ),

        ],
      ),
    );
  }
}
