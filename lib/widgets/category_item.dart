import 'package:flutter/material.dart';
import 'package:freshways/theme.dart';

class CategoryItem extends StatelessWidget {
  final String name;
  final String iconUrl;

  const CategoryItem({
    Key? key,
    required this.name,
    required this.iconUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          iconUrl,
          width: 40,
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          name,
          style: greyTextStyle.copyWith(
            fontSize: 11,
            fontWeight: bold,
          ),
        ),
      ],
    );
  }
}
