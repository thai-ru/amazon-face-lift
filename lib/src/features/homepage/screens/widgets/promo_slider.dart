import 'package:amazon/src/constants/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../model/promotions.dart';
import 'circular_container.dart';
import 'home_controller.dart';

class APromoSlider extends StatelessWidget {
  const APromoSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Obx(
                () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < Promotions.promotion.length; i++)
                  ACircularContainer(
                    width: 14,
                    height: 14,
                    margin: const EdgeInsets.only(right: 6, left: 4),
                    backgroundColor: controller.carouselCurrentIndex.value == i
                        ? MyAColors.bannerSelectedColor
                        : MyAColors.bannerUnselectedColor,
                  ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 12),
        CarouselSlider(
          options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, _) =>
                  controller.updatePageIndicator(index)),
          items: Promotions.promotion.map((promotion) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 0.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset(
                      promotion.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
      ],
    );
  }
}
