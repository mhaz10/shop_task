import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app_task/core/helper/app_text_style.dart';
import 'package:shop_app_task/core/utils/app_colors.dart';
import 'package:shop_app_task/core/utils/app_icons.dart';
import 'package:shop_app_task/core/utils/app_images.dart';
import 'package:shop_app_task/features/offers/widgets/custom_bottom_nav_bar.dart';
import 'package:shop_app_task/features/offers/widgets/custom_filter.dart';
import 'package:shop_app_task/features/offers/widgets/custom_item.dart';
import 'package:shop_app_task/features/offers/widgets/explore_offers.dart';

import '../../core/helper/app_responsive.dart';

class OffersView extends StatelessWidget {
  const OffersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: AppResponsive.height(context, value: 45),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ExploreOffers(),
                SizedBox(height: AppResponsive.height(context, value: 12)),
                CustomFilter(),
                SizedBox(height: AppResponsive.height(context, value: 33)),
                SizedBox(
                  height: AppResponsive.height(context, value: 200),
                  child: ListView.separated(
                    padding: EdgeInsets.only(
                      right: AppResponsive.width(context, value: 16),
                    ),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Column(
                      children: [
                        Container(
                          width: AppResponsive.width(context, value: 85),
                          height: AppResponsive.height(context, value: 150),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: AppColors.black.withOpacity(0.1),
                          ),
                          child: Image.asset(AppImages.person),
                        ),
                        SizedBox(
                          height: AppResponsive.height(context, value: 16),
                        ),
                        Text('موضة رجالى', style: AppTextStyle.font14Regular),
                      ],
                    ),
                    separatorBuilder: (context, index) => SizedBox(width: 12),
                    itemCount: 4,
                  ),
                ),
                SizedBox(height: AppResponsive.height(context, value: 33)),
                Container(
                  width: AppResponsive.width(context, value: 328),
                  height: AppResponsive.height(context, value: 56),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: AppColors.orange.withOpacity(0.1),
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      SizedBox(width: AppResponsive.width(context, value: 8)),
                      Text(
                        '! لأى عرض تطلبه دلوقتى ',
                        style: AppTextStyle.font12Regular,
                      ),
                      Spacer(),
                      Text(
                        'شحن مجانى',
                        style: AppTextStyle.font14Regular.copyWith(
                          color: AppColors.green,
                        ),
                      ),
                      SizedBox(width: AppResponsive.width(context, value: 4)),
                      SvgPicture.asset(AppIcons.check),
                    ],
                  ),
                ),
                SizedBox(height: AppResponsive.height(context, value: 20)),
                GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.symmetric(
                    vertical: AppResponsive.height(context, value: 10),
                  ),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    childAspectRatio: 2.76 / 4,
                  ),
                  itemBuilder: (context, index) => CustomItem(),
                  itemCount: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
