import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app_task/features/offers/plan_selected.dart';

import '../../../core/helper/app_responsive.dart';
import '../../../core/helper/app_text_style.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_icons.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppResponsive.height(context, value: 120),
      margin: const EdgeInsets.only(bottom: 6),
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SvgPicture.asset(AppIcons.myAccount, width: 24, height: 24,),
              SizedBox(height: AppResponsive.height(context, value: 4)),
              Text('حسابى', style: AppTextStyle.font12Regular),
            ],
          ),
          Column(
            children: [
              SvgPicture.asset(AppIcons.myAds, width: 24, height: 24,),
              SizedBox(height: AppResponsive.height(context, value: 4)),
              Text('أعلاناتى', style: AppTextStyle.font12Regular),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const PlanSelected(),));
            },
            child: Column(
              children: [
                SvgPicture.asset(AppIcons.addAd, width: 24, height: 24,),
                SizedBox(height: AppResponsive.height(context, value: 4)),
                Text('أضف أعلان', style: AppTextStyle.font12Regular.copyWith(color: AppColors.blue)),
              ],
            ),
          ),
          Column(
            children: [
              SvgPicture.asset(AppIcons.chat, width: 24, height: 24,),
              SizedBox(height: AppResponsive.height(context, value: 4)),
              Text('محادثة', style: AppTextStyle.font12Regular),
            ],
          ),
          Column(
            children: [
              SvgPicture.asset(AppIcons.home, width: 24, height: 24,),
              SizedBox(height: AppResponsive.height(context, value: 4)),
              Text('الرئيسية', style: AppTextStyle.font12Regular),
            ],
          ),
        ],
      ),
    );
  }
}
