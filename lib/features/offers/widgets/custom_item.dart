import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app_task/features/offers/data/models/product_model.dart';

import '../../../core/helper/app_responsive.dart';
import '../../../core/helper/app_text_style.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_icons.dart';
import '../../../core/utils/app_images.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppResponsive.width(context, value: 158),
      height: AppResponsive.height(context, value: 450),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            Container(
              width: AppResponsive.width(context, value: 158),
              height: AppResponsive.height(context, value: 300),
              decoration: BoxDecoration(
                  color: AppColors.black.withOpacity(0.1),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(4), topLeft: Radius.circular(4))
              ),
              child: Image.asset(product.image ?? ''),
            ),
            SizedBox(height: AppResponsive.height(context, value: 8)),
            Row(
              children: [
                SvgPicture.asset(AppIcons.boxOffer),
                SizedBox(
                  width: AppResponsive.width(context, value: 4),
                ),
                Expanded(
                  child: Text(
                    product.name,
                    style: AppTextStyle.font14Medium.copyWith(
                      color: AppColors.black,
                    ),
                    overflow: TextOverflow.ellipsis,
                    textDirection: TextDirection.rtl,
                    maxLines: 1,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SvgPicture.asset(AppIcons.favorite),
                SizedBox(
                  width: AppResponsive.width(context, value: 4),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          '60,000,000',
                          style: AppTextStyle.font12Regular.copyWith(
                            color: AppColors.black,
                            decoration: TextDecoration.lineThrough,
                          ),
                          overflow: TextOverflow.ellipsis,
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Text(
                        '${product.price} جم/',
                        style: AppTextStyle.font14Medium.copyWith(
                          color: AppColors.red,
                        ),
                        overflow: TextOverflow.ellipsis,
                        textDirection: TextDirection.rtl,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: AppResponsive.height(context, value: 8)),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'تم بيع 3.3k+',
                  style: AppTextStyle.font12Regular,
                  textDirection: TextDirection.rtl,
                ),
                SizedBox(
                  width: AppResponsive.width(context, value: 4),
                ),
                SvgPicture.asset(AppIcons.fire),
              ],
            ),
            SizedBox(
              height: AppResponsive.height(context, value: 28),
            ),
            Row(
              children: [
                Image.asset(AppImages.logo, width: 22, height: 22),
                SizedBox(
                  width: AppResponsive.width(context, value: 12),
                ),
                SvgPicture.asset(AppIcons.cart),
                SizedBox(
                  width: AppResponsive.width(context, value: 50),
                ),
                SvgPicture.asset(AppIcons.company),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
