import 'package:amazon/src/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../constants/text_strings.dart';


class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  _SearchBarWidgetState createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  void _showFilterModal() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        // Add your filter options here
        return Container(
          padding: const EdgeInsets.all(16.0),
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Filter options go here'),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        height: 40,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: MyAColors.primaryColor,
          border: Border.all(color: MyAColors.bannerSelectedColor),
        ),
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.all(6.0),
              child: Icon(Iconsax.search_normal, color: MyAColors.greenAccentColor),
            ),
            const Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: AZSearch,
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 6.0,
                    vertical: 10.0,
                  ),
                ),
              ),
            ),
            IconButton(
              icon: const Icon(Iconsax.document_filter),
              onPressed: _showFilterModal,
              color: MyAColors.secondaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
