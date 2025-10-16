import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app_task/core/helper/app_responsive.dart';
import 'package:shop_app_task/core/helper/app_text_style.dart';
import 'package:shop_app_task/core/utils/app_colors.dart';
import 'package:shop_app_task/core/utils/app_icons.dart';
import 'package:shop_app_task/core/utils/app_images.dart';
import 'package:shop_app_task/features/offers/widgets/custom_elevated_button.dart';
import 'package:shop_app_task/features/offers/widgets/custom_option_chip.dart';
import 'package:shop_app_task/features/offers/widgets/custom_selected_item.dart';

class FilteringView extends StatelessWidget {
  const FilteringView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'رجوع للأفتراضى',
                        style: AppTextStyle.font16Bold.copyWith(
                          color: AppColors.blue,
                        ),
                      ),
                    ),
                    Spacer(),
                    Text('فلترة', style: AppTextStyle.font24Medium),
                    SizedBox(width: AppResponsive.width(context, value: 12)),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset(
                        AppIcons.close,
                        height: 16,
                        width: 16,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: AppResponsive.height(context, value: 32)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'الفئة',
                    style: AppTextStyle.font16Medium.copyWith(
                      color: AppColors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(height: AppResponsive.height(context, value: 12)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'تغيير',
                        style: AppTextStyle.font14Medium.copyWith(
                          color: AppColors.purple,
                        ),
                      ),
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Text(
                          'عقارات',
                          style: AppTextStyle.font14Medium.copyWith(
                            color: AppColors.black,
                          ),
                        ),
                        SizedBox(
                          height: AppResponsive.height(context, value: 4),
                        ),
                        Text(
                          'فلل البيع',
                          style: AppTextStyle.font12Regular.copyWith(
                            color: AppColors.grey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: AppResponsive.width(context, value: 8)),
                    Image.asset(AppImages.realEstate, width: 40, height: 40),
                  ],
                ),
              ),
              SizedBox(height: AppResponsive.height(context, value: 20)),
              Divider(),
              SizedBox(height: AppResponsive.height(context, value: 20)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      AppIcons.arrowLeftIos,
                      height: 16,
                      width: 16,
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Text(
                          'الموقع',
                          style: AppTextStyle.font14Medium.copyWith(
                            color: AppColors.black,
                          ),
                        ),
                        SizedBox(
                          height: AppResponsive.height(context, value: 4),
                        ),
                        Text(
                          'مصر',
                          style: AppTextStyle.font12Regular.copyWith(
                            color: AppColors.grey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: AppResponsive.width(context, value: 8)),
                    SvgPicture.asset(AppIcons.location, width: 30, height: 30),
                  ],
                ),
              ),
              SizedBox(height: AppResponsive.height(context, value: 20)),
              Divider(),
              SizedBox(height: AppResponsive.height(context, value: 20)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'الأقساط الشهرية',
                    style: AppTextStyle.font16Medium.copyWith(
                      color: AppColors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(height: AppResponsive.height(context, value: 12)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    SizedBox(
                      width: AppResponsive.width(context, value: 158),
                      child: TextField(
                        cursorColor: AppColors.black.withOpacity(0.1),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              color: AppColors.black.withOpacity(0.1),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              color: AppColors.black.withOpacity(0.1),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: AppResponsive.width(context, value: 12)),
                    SizedBox(
                      width: AppResponsive.width(context, value: 158),
                      child: TextField(
                        cursorColor: AppColors.black.withOpacity(0.1),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              color: AppColors.black.withOpacity(0.1),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              color: AppColors.black.withOpacity(0.1),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: AppResponsive.height(context, value: 20)),
              CustomSelectedItem(
                types: ['الكل', 'توين هاوس', 'فيلا منفصلة', 'تاون هاوس'],
                title: 'النوع',
              ),
              SizedBox(height: AppResponsive.height(context, value: 20)),
              CustomSelectedItem(
                types: ['4 غرف', '5 غرف+', 'الكل', 'غرفتين', '3 غرف'],
                title: 'عدد الغرف',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'السعر',
                    style: AppTextStyle.font16Medium.copyWith(
                      color: AppColors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(height: AppResponsive.height(context, value: 12)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    SizedBox(
                      width: AppResponsive.width(context, value: 158),
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: TextField(
                          cursorColor: AppColors.black.withOpacity(0.1),
                          decoration: InputDecoration(
                            hintText: 'أقصى سعر',
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                color: AppColors.black.withOpacity(0.1),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                color: AppColors.black.withOpacity(0.1),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: AppResponsive.width(context, value: 12)),
                    SizedBox(
                      width: AppResponsive.width(context, value: 158),
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: TextField(
                          cursorColor: AppColors.black.withOpacity(0.1),
                          decoration: InputDecoration(
                            hintText: 'أقل سعر',
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                color: AppColors.black.withOpacity(0.1),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                color: AppColors.black.withOpacity(0.1),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: AppResponsive.height(context, value: 20)),
              CustomSelectedItem(
                types: ['أى', 'تقسيط', 'كاش'],
                title: 'طريقة الدفع',
              ),
              SizedBox(height: AppResponsive.height(context, value: 20)),
              CustomSelectedItem(
                types: ['أى', 'جاهز', 'قيد الأنشاء'],
                title: 'حالة العقار',
              ),
              SizedBox(height: AppResponsive.height(context, value: 78)),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
                child: CustomElevatedButton(title: 'شاهد 10,000+ نتائج'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
