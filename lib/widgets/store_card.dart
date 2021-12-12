import 'package:flutter/material.dart';
import 'package:freshways/theme.dart';

class StoreCard extends StatelessWidget {
  final String name;
  final String imageUrl;
  final double distance;

  const StoreCard({
    Key? key,
    required this.name,
    required this.imageUrl,
    required this.distance,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  name,
                  style: blackTextStyle.copyWith(
                    fontSize: 17,
                    fontWeight: bold,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  '$distance km  •  Open',
                  style: greenTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: bold,
                  ),
                ),
              ],
            ),
            Image.asset(
              imageUrl,
              width: 100,
            ),
          ],
        ),
      ),
    );
  }
}
