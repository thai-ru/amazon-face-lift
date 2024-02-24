import 'package:amazon/src/features/homepage/model/categories.dart';
import 'package:flutter/material.dart';

Widget horizontalCategoriesScroll(List<Category> categories) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
    height: 200,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: categories.map((category) {
        return Container(
          margin: const EdgeInsets.only(right: 18),
          height: 60,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Image.asset(
                      category.imageUrl,
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                category.Name,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Poppins",
                ),
              ),
            ],
          ),
        );
      }).toList(),
    ),
  );
}
