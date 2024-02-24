import 'package:amazon/src/constants/text_strings.dart';
import 'package:amazon/src/features/homepage/model/categories.dart';
import 'package:amazon/src/features/homepage/screens/widgets/banner.dart';
import 'package:amazon/src/features/homepage/screens/widgets/categories_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  final String title = AZAppName;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              /// To implement App Banner
                promotionalBanners(),
                const SizedBox(height: 10),
                ///Filter
                const Padding(padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4)),

                horizontalCategoriesScroll(Category.categories),

              /// Products
                const Column(
                  children: [

                  ],
                )
              ],
            ),
      ),
    );
  }
}