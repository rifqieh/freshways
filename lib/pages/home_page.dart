import 'package:flutter/material.dart';
import 'package:freshways/pages/store_page.dart';
import 'package:freshways/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/ic_home.png',
              width: 24,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/ic_explore.png',
              width: 24,
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/ic_cart.png',
              width: 24,
            ),
            label: 'cart',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/ic_profile.png',
              width: 24,
            ),
            label: 'Profile',
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 32,
        ),
        children: [
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/img_logo.png',
                width: 122,
              ),
              Image.asset(
                'assets/ic_search.png',
                width: 24,
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: double.infinity,
            height: 146,
            padding: const EdgeInsets.only(
              top: 28,
              left: 36,
              right: 16,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/img_background.png',
                ),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '32.000',
                  style: whiteTextStyle.copyWith(
                    fontSize: 28,
                    fontWeight: black,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: whiteColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 0.5,
                  ),
                  child: Text(
                    'Top up',
                    style: redTextStyle.copyWith(
                      fontWeight: black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 28,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 16,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: greenColor.withOpacity(0.1),
            ),
            child: Row(
              children: [
                Image.asset(
                  'assets/ic_home.png',
                  width: 16,
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Text(
                    'Delivering to Coyote’s House',
                    style: greenTextStyle.copyWith(
                      fontWeight: bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Center(
            child: Text(
              'Fresh groceries nearby',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: black,
              ),
            ),
          ),
          const SizedBox(
            height: 28,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              CategoryItem(
                name: 'Fruits',
                iconUrl: 'assets/ic_fruits.png',
              ),
              CategoryItem(
                name: 'Vegetables',
                iconUrl: 'assets/ic_vegetables.png',
              ),
              CategoryItem(
                name: 'Meats',
                iconUrl: 'assets/ic_meats.png',
              ),
              CategoryItem(
                name: 'Dairies',
                iconUrl: 'assets/ic_dairies.png',
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          const StoreCard(
            name: 'Cherry Fresh\nFruit Market',
            imageUrl: 'assets/img_store1.png',
            distance: 2.1,
          ),
          const StoreCard(
            name: 'Rita Pasaraya\nIsola',
            imageUrl: 'assets/img_store2.png',
            distance: 3.2,
          ),
        ],
      ),
    );
  }
}

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
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const StorePage(),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        child: Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
        ),
      ),
    );
  }
}

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
