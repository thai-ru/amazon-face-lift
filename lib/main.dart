import 'package:amazon/src/components/navigation.dart';
import 'package:amazon/src/constants/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Amazon());
}

class Amazon extends StatelessWidget {
  const Amazon({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Amazon',
      theme: theme.copyWith(
          colorScheme: theme.colorScheme.copyWith(
            primary: MyAColors.primaryColor,
            secondary: MyAColors.secondaryColor,
          )),
      home: const BottomNavigationMenu(),
    );
  }
}

