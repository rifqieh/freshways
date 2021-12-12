import 'package:flutter/material.dart';
import 'package:freshways/theme.dart';

class StorePage extends StatelessWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 32,
        ),
        children: [
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Image.asset(
                'assets/ic_back.png',
                width: 20,
              ),
              const SizedBox(
                width: 12,
              ),
              Text(
                'Cherry Fresh Fruit Market',
                style: greyTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: bold,
                ),
              ),
              const Spacer(),
              Image.asset(
                'assets/ic_alert.png',
                width: 24,
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Stack(
            children: [
              Image.asset(
                'assets/img_banner.png',
              ),
              Positioned(
                bottom: 16,
                left: 24,
                child: Row(
                  children: [
                    Container(
                      width: 8,
                      height: 8,
                      margin: const EdgeInsets.only(right: 8),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: whiteColor,
                      ),
                    ),
                    Container(
                      width: 8,
                      height: 8,
                      margin: const EdgeInsets.only(right: 8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: whiteColor.withOpacity(0.3),
                      ),
                    ),
                    Container(
                      width: 8,
                      height: 8,
                      margin: const EdgeInsets.only(right: 8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: whiteColor.withOpacity(0.3),
                      ),
                    ),
                    Container(
                      width: 8,
                      height: 8,
                      margin: const EdgeInsets.only(right: 8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: whiteColor.withOpacity(0.3),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 26,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: whiteColor,
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/ic_search.png',
                        width: 24,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Try “Watermelon”',
                        style: greyTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: bold,
                          color: const Color(0xffA4A3B0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Image.asset(
                'assets/ic_filter.png',
                width: 24,
              ),
            ],
          ),
          const SizedBox(
            height: 37,
          ),
          const ProductItem(
            name: 'Graceful Australian Grapes',
            weight: 300,
            price: 34000,
            imageUrl: 'assets/img_product1.png',
          ),
          const ProductItem(
            name: 'Australian Strawberry',
            weight: 300,
            price: 20000,
            imageUrl: 'assets/img_product2.png',
          ),
          const ProductItem(
            name: 'Milk Banana',
            weight: 300,
            price: 14000,
            imageUrl: 'assets/img_product3.png',
          ),
        ],
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  final String name;
  final int weight;
  final int price;
  final String imageUrl;

  const ProductItem({
    Key? key,
    required this.name,
    required this.weight,
    required this.price,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: blackTextStyle.copyWith(
                      fontSize: 15,
                      fontWeight: bold,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Per $weight gram',
                    style: greyTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: medium,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Rp $price',
                    style: greenTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: bold,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: greenColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9),
                      ),
                    ),
                    child: Text(
                      'Add',
                      style: whiteTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: medium,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Image.asset(
              imageUrl,
              width: 100,
            ),
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        const Divider(
          thickness: 2,
        ),
      ],
    );
  }
}
