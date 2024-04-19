import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:ubereats/utils/colors.dart';
import 'package:ubereats/utils/textStyles.dart';

class BrowseScreen extends StatefulWidget {
  const BrowseScreen({super.key});

  @override
  State<BrowseScreen> createState() => _BrowseScreenState();
}

class _BrowseScreenState extends State<BrowseScreen> {
  List categories = [
    ['assets/categories/alcohol.png', 'Alcohol'],
    ['assets/categories/american.png', 'American'],
    ['assets/categories/asian.png', 'Asian'],
    ['assets/categories/burger.png', 'Burger'],
    ['assets/categories/carrebian.png', 'Carrebian'],
    ['assets/categories/chinese.png', 'Chinese'],
    ['assets/categories/convenience.png', 'Convenience'],
    ['assets/categories/dessert.png', 'Dessert'],
    ['assets/categories/fastFood.png', 'FastFood'],
    ['assets/categories/flower.png', 'Flower'],
    ['assets/categories/french.png', 'French'],
    ['assets/categories/grocery.png', 'Grocery'],
    ['assets/categories/halal.png', 'alal'],
    ['assets/categories/icecream.png', 'Icecream'],
    ['assets/categories/indian.png', 'Indian'],
    ['assets/categories/petSupplies.png', 'PetSupplies'],
    ['assets/categories/retails.png', 'Retails'],
    ['assets/categories/ride.png', 'Ride'],
    ['assets/categories/takeout.png', 'Takeout']
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
        children: [
          SizedBox(
            height: 2.h,
          ),
          Text(
            "All categories",
            style: AppTextStyles.body16,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 3.h,
          ),
          GridView.builder(
              itemCount: categories.length,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 0.8,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: greyShade3,
                          borderRadius: BorderRadius.circular(5.sp),
                        ),
                        child: Image.asset(categories[index][0]),
                      ),
                    ),
                    SizedBox(
                      height: 0.5.h,
                    ),
                    Text(
                      categories[index][1],
                      style: AppTextStyles.small10Bold,
                    ),
                  ],
                );
              })
        ],
      ),
    );
  }
}
