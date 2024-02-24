import 'package:amazon/src/constants/colors.dart';
import 'package:amazon/src/features/homepage/screens/widgets/promo_slider.dart';
import 'package:flutter/material.dart';

import '../../../../common_widgets/search_bar.dart';

Widget promotionalBanners() {
  return const Stack(
    children: [
      Padding(padding: EdgeInsets.all(8.0), child: APromoSlider()),
      Positioned(
        top: 150,
        left: 0,
        right: 0,
        child: SearchBarWidget(),
      ),
    ],
  );
}


class BRoundedImageBanner extends StatelessWidget {
  const BRoundedImageBanner({
    super.key,
    required this.imageUrl,
    this.border,
    this.padding,
    this.onPressed,
    this.width,
    this.height,
    this.applyImageRadius = true,
    this.fit = BoxFit.contain,
    this.backgroundColor = MyAColors.greenAccentColor,
    this.isNetworkImage = false,
    this.borderRadius = 20,
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
            border: border,
            color: backgroundColor,
            borderRadius: BorderRadius.circular(borderRadius)),
        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
          child: Image(
              fit: fit,
              image: isNetworkImage
                  ? NetworkImage(imageUrl)
                  : AssetImage(imageUrl) as ImageProvider),
        ),
      ),
    );
  }
}
