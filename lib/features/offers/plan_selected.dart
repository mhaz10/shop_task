import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app_task/core/helper/app_responsive.dart';
import 'package:shop_app_task/core/helper/app_text_style.dart';
import 'package:shop_app_task/core/utils/app_colors.dart';
import 'package:shop_app_task/core/utils/app_icons.dart';
import 'package:shop_app_task/core/utils/app_images.dart';
import 'package:shop_app_task/features/offers/widgets/custom_elevated_button.dart';
import 'package:shop_app_task/features/offers/widgets/custom_feature.dart';
import 'package:shop_app_task/features/offers/widgets/custom_plan_card.dart';

class PlanSelected extends StatelessWidget {
  const PlanSelected({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: AppResponsive.height(context, value: 16),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'أختر الباقات اللى تناسبك',
                      style: AppTextStyle.font24Medium,
                    ),
                    SizedBox(width: AppResponsive.width(context, value: 12)),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset(
                        AppIcons.arrowRightIos,
                        width: 24,
                        height: 24,
                      ),
                    ),
                    SizedBox(width: AppResponsive.width(context, value: 12)),
                  ],
                ),
                SizedBox(height: AppResponsive.height(context, value: 12)),
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'أختار من باقات التمييز بل أسفل اللى تناسب أحتياجاتك',
                      style: AppTextStyle.font14Regular,
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
                SizedBox(height: AppResponsive.height(context, value: 20)),
                CustomPlanCard(
                  title: 'أساسية',
                  features: [
                    CustomFeature(
                      title: 'صلاحية الأعلان 30 يوم',
                      icon: AppIcons.time,
                    ),
                  ],
                ),
                SizedBox(height: AppResponsive.height(context, value: 24)),
                CustomPlanCard(
                  title: 'أكسترا',
                  features: [
                    CustomFeature(
                      title: 'صلاحية الأعلان 30 يوم',
                      icon: AppIcons.time,
                    ),
                    SizedBox(height: AppResponsive.height(context, value: 16)),
                    CustomFeature(
                      title: 'رفع لأعلى القائمة كل 3 أيام',
                      icon: AppIcons.boost,
                    ),
                    SizedBox(height: AppResponsive.height(context, value: 16)),
                    CustomFeature(
                      title: 'تثبيت فى مقاول صحى',
                      icon: AppIcons.pin,
                      subTitle: '( خلال ال48 ساعة القادمة )',
                    ),
                  ],
                  statistics: [
                    Image.asset(
                      AppImages.statisticsExtra,
                      height: 74,
                      width: 74,
                    ),
                  ],
                ),
                SizedBox(height: AppResponsive.height(context, value: 24)),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    CustomPlanCard(
                      title: 'بلس',
                      features: [
                        CustomFeature(
                          title: 'صلاحية الأعلان 30 يوم',
                          icon: AppIcons.time,
                        ),
                        SizedBox(
                          height: AppResponsive.height(context, value: 16),
                        ),
                        CustomFeature(
                          title: 'رفع لأعلى القائمة كل 3 أيام',
                          icon: AppIcons.boost,
                        ),
                        SizedBox(
                          height: AppResponsive.height(context, value: 16),
                        ),
                        CustomFeature(
                          title: 'تثبيت فى مقاول صحى',
                          icon: AppIcons.pin,
                          subTitle: '( خلال ال48 ساعة القادمة )',
                        ),
                        SizedBox(
                          height: AppResponsive.height(context, value: 16),
                        ),
                        CustomFeature(
                          title: 'ظهور فى كل محافظات مصر',
                          icon: AppIcons.world,
                        ),
                        SizedBox(
                          height: AppResponsive.height(context, value: 16),
                        ),
                        CustomFeature(
                          title: 'تثبيت فى مقاول صحى فى الجهراء',
                          icon: AppIcons.pin,
                        ),
                        SizedBox(
                          height: AppResponsive.height(context, value: 16),
                        ),
                        CustomFeature(
                          title: 'تثبيت فى مقاول صحى',
                          icon: AppIcons.pin,
                          subTitle: '( خلال ال48 ساعة القادمة )',
                        ),
                      ],
                      statistics: [
                        Image.asset(
                          AppImages.statisticsPlus,
                          height: 74,
                          width: 74,
                        ),
                      ],
                    ),
                    Positioned(
                      top: -10,
                      right: 20,
                      child: Image.asset(
                        AppImages.bestValueForMoney,
                        width: 135,
                        height: 35,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: AppResponsive.height(context, value: 24)),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    CustomPlanCard(
                      title: 'سوبر',
                      features: [
                        CustomFeature(
                          title: 'صلاحية الأعلان 30 يوم',
                          icon: AppIcons.time,
                        ),
                        SizedBox(
                          height: AppResponsive.height(context, value: 16),
                        ),
                        CustomFeature(
                          title: 'رفع لأعلى القائمة كل 3 أيام',
                          icon: AppIcons.boost,
                        ),
                        SizedBox(
                          height: AppResponsive.height(context, value: 16),
                        ),
                        CustomFeature(
                          title: 'تثبيت فى مقاول صحى',
                          icon: AppIcons.pin,
                          subTitle: '( خلال ال48 ساعة القادمة )',
                        ),
                        SizedBox(
                          height: AppResponsive.height(context, value: 16),
                        ),
                        CustomFeature(
                          title: 'ظهور فى كل محافظات مصر',
                          icon: AppIcons.world,
                        ),
                        SizedBox(
                          height: AppResponsive.height(context, value: 16),
                        ),
                        CustomFeature(
                          title: 'أعلان مميز',
                          icon: AppIcons.featuredAd,
                        ),
                        SizedBox(
                          height: AppResponsive.height(context, value: 16),
                        ),
                        CustomFeature(
                          title: 'تثبيت فى مقاول صحى فى الجهراء',
                          icon: AppIcons.pin,
                        ),
                        SizedBox(
                          height: AppResponsive.height(context, value: 16),
                        ),
                        CustomFeature(
                          title: 'تثبيت فى مقاول صحى',
                          icon: AppIcons.pin,
                          subTitle: '( خلال ال48 ساعة القادمة )',
                        ),
                      ],
                      statistics: [
                        Image.asset(
                          AppImages.statisticsSuper,
                          height: 74,
                          width: 74,
                        ),
                      ],
                    ),
                    Positioned(
                      top: -10,
                      right: 20,
                      child: Image.asset(
                        AppImages.topViews,
                        width: 100,
                        height: 35,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: AppResponsive.height(context, value: 32)),
                Container(
                  width: AppResponsive.width(context, value: 328),
                  height: AppResponsive.height(context, value: 180),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.wildSand,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'باقات مخصصة لك',
                        style: AppTextStyle.font14Medium.copyWith(
                          color: AppColors.black,
                        ),
                        textDirection: TextDirection.rtl,
                      ),
                      SizedBox(height: AppResponsive.height(context, value: 8)),
                      Text(
                        'تواصل معنا لأختيار الباقة المناسبة لك',
                        style: AppTextStyle.font12Regular,
                        textDirection: TextDirection.rtl,
                      ),
                      SizedBox(height: AppResponsive.height(context, value: 8)),
                      Text(
                        'فريق المبيعات',
                        style: AppTextStyle.font16Bold.copyWith(
                          color: AppColors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: AppResponsive.height(context, value: 199)),
                Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: CustomElevatedButton(
                    title: 'التالى',
                    icon: AppIcons.arrowWhite,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
