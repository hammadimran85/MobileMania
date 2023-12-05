import 'package:aboutmobiles/data/dummy_data.dart';
import 'package:aboutmobiles/providers/brand_api_service_provider.dart';
import 'package:aboutmobiles/providers/latest_mobile_api_service.dart';
import 'package:aboutmobiles/providers/youtube_api_provider.dart';
import 'package:aboutmobiles/widgets/carouselSlider/carousel_slider.dart';
import 'package:aboutmobiles/widgets/home/mobile_categories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final brandDataSnapshot = ref.watch(brandData);
    final mobileDataSnapshot = ref.watch(mobileList);
    final youtubeData = ref.watch(youtubeDataProvider);
    return brandDataSnapshot.when(
      data: (brandData) {
        return youtubeData.when(
          data: (youtube) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  const CarouselSliderWidget(),
                  const SizedBox(height: 12),
                  MobileCategories(
                    latestmobiles: dummyLatestMobiles,
                    mobile: mobileDataSnapshot,
                    features: dummyFeatures,
                    price: dummyPrice,
                    videos: youtube,
                    opinions: dummyOpinions,
                    brand: brandData,
                  ),
                ],
              ),
            );
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stackTrace) => Center(child: Text('$error')),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => Center(child: Text('Error: $error')),
    );
  }
}
