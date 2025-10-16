import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app_task/core/helper/app_responsive.dart';
import 'package:shop_app_task/core/helper/app_text_style.dart';
import 'package:shop_app_task/core/utils/app_icons.dart';
import 'package:shop_app_task/features/offers/filtering_view.dart';

class ExploreOffers extends StatelessWidget {
  const ExploreOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppResponsive.width(context, value: 16)),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const FilteringView()));
            },
            child: Row(
              children: [
                SvgPicture.asset(
                  AppIcons.arrowLeft,
                  width: AppResponsive.width(context, value: 24),
                  height: AppResponsive.height(context, value: 24),
                ),
                SizedBox(
                  width: AppResponsive.width(context, value: 4),
                ),
                Text('الكل', style: AppTextStyle.font16Bold,)
              ],
            ),
          ),
          Spacer(),
          Text('استكشف العروض', style: AppTextStyle.font16Medium,),
        ],
      ),
    );
  }
}
