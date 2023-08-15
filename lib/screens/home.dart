import 'package:aboutmobiles/data/dummy_data.dart';
import 'package:aboutmobiles/widgets/carouselSlider/carousel_slider.dart';
import 'package:aboutmobiles/widgets/home/mobile_categories.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const CarouselSliderWidget(),
          const SizedBox(height: 12),
          MobileCategories(
            latestmobiles: dummyLatestMobiles,
            mobile: dummyMobiles,
            features: dummyFeatures,
            price: dummyPrice,
            videos: dummyVideoReviews,
            opinions: dummyOpinions,
          ),
        ],
      ),
    );
  }
}
