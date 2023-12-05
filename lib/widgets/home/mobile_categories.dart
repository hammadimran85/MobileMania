// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:aboutmobiles/data/dummy_data.dart';
import 'package:aboutmobiles/models/brands.dart';
import 'package:aboutmobiles/models/mobile.dart';
import 'package:aboutmobiles/models/price_category.dart';
import 'package:aboutmobiles/models/user_opinion_model.dart';
import 'package:aboutmobiles/models/video_reviews.dart';
// import 'package:aboutmobiles/providers/latest_mobile_api_service.dart';
import 'package:aboutmobiles/screens/brands_detail.dart';
import 'package:aboutmobiles/screens/features_detail.dart';
import 'package:aboutmobiles/screens/latest_mobile_details.dart';
import 'package:aboutmobiles/screens/price_details.dart';
import 'package:aboutmobiles/widgets/carouselSlider/carousel_slider_bottom.dart';
import 'package:aboutmobiles/widgets/home/battery_slider.dart';
import 'package:aboutmobiles/widgets/home/price_category_items.dart';
import 'package:aboutmobiles/widgets/home/video_review_items.dart';
import 'package:flutter/material.dart';
import 'package:aboutmobiles/widgets/home/feature_items.dart';
import 'package:aboutmobiles/widgets/home/latest_mobiles_item.dart';
import 'package:aboutmobiles/models/features.dart';
import 'package:aboutmobiles/models/latest_mobiles.dart';
import 'package:aboutmobiles/widgets/home/brand_items.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MobileCategories extends ConsumerStatefulWidget {
  const MobileCategories({
    super.key,
    required this.latestmobiles,
    required this.mobile,
    required this.features,
    required this.price,
    required this.videos,
    required this.opinions,
    required this.brand,
  });

  final List<LatestMobiles> latestmobiles;
  final List<Mobile> mobile;
  final List<Features> features;
  final List<Price> price;
  final List<VideoReviews> videos;
  final List<UserOpinionModel> opinions;
  final List<Brand> brand;

  @override
  ConsumerState<MobileCategories> createState() => _MobileCategoriesState();
}

class _MobileCategoriesState extends ConsumerState<MobileCategories> {
  void selectMobile(BuildContext context, Mobile latestMobiles) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: ((context) => LatestMobileDetailsScreen(
            mobile: latestMobiles,
            videos: widget.videos,
            opinions: widget.opinions,
          )),
    ));
  }

  void selectBrand(BuildContext context, Mobile mobile, String brand) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: ((context) => BrandsDetailScreen(
            mobile: widget.mobile,
            brandName: brand,
          )),
    ));
  }

  void selectPrice(
      BuildContext context, Price price, int startingPrice, int endingPrice) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: ((context) => PriceDetailScreen(
            mobile: widget.mobile,
            staringPrice: startingPrice,
            endingPrice: endingPrice,
          )),
    ));
  }

  @override
  Widget build(BuildContext context) {
    int _selectedValue = 0;

    void _showDialog(BuildContext context, String title, Map<int, String> map) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: const Color.fromARGB(253, 253, 253, 255),
            title: Center(child: Text(title)),
            content: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: map.entries
                    .map(
                      (entry) => GestureDetector(
                        onTap: () {
                          if (entry.key != 0) {
                            Navigator.of(context).pop();
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: ((context) => FeaturesDetailScreen(
                                    mobile: widget.mobile,
                                    featureName: 'Android13',
                                  )),
                            ));
                          }
                        },
                        child: ListTile(
                          contentPadding: const EdgeInsets.only(
                              right: 0, left: 0, bottom: 0, top: 0),
                          trailing: Radio(
                            value: entry
                                .key, // Use the key as the value for the Radio widget
                            groupValue: _selectedValue,
                            onChanged: (value) {
                              setState(() {
                                _selectedValue =
                                    value!; // Update the selected value when radio button changes
                              });
                            },
                          ),
                          title: Text(entry.value),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          );
        },
      );
    }

    double selectedBatteryValue = 6000;

    void _showBatteryDialog(BuildContext context) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            // actions: [
            //   ElevatedButton(onPressed: (){}, child: const Text('Search'))
            // ],
            backgroundColor: const Color.fromARGB(253, 253, 253, 255),
            title: const Text('Select Battery Range'),
            content: SizedBox(
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Text(
                      'Select a range From 0 to 6000',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: Colors.black54,
                            fontSize: 19,
                          ),
                    ),
                  ),
                  BatterySlider(
                    maxValue: 6000,
                    minValue: 0,
                    value: selectedBatteryValue,
                    onChanged: (value) {
                      setState(
                        () {
                          selectedBatteryValue = value;
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          );
        },
      );
    }

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Latest Mobiles',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Colors.grey,
                    // fontSize: 19,
                  ),
            ),
          ),
        ),
        SizedBox(
          height: 165,
          child: ListView.builder(
            itemCount: widget.mobile.length,
            itemBuilder: (ctx, index) => LatestMobilesItem(
              latestMobiles: widget.mobile[index],
              onSelectMobile: (latestMobiles) {
                selectMobile(context, latestMobiles);
              },
            ),
            scrollDirection: Axis.horizontal,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Search by Brand',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Colors.grey,
                    // fontSize: 17,
                  ),
            ),
          ),
        ),
        SizedBox(
          height: 120,
          child: ListView.builder(
              itemCount: widget.brand.length,
              itemBuilder: (ctx, index) => BrandItems(
                    index: index,
                    brand: widget.brand[index],
                    mobile: widget.mobile[0],
                    onSelectBrand: (mobile) {
                      selectBrand(context, mobile, mobile.manufacturerName);
                    },
                  ),
              scrollDirection: Axis.horizontal),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Search by Feature',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Colors.grey,
                    // fontSize: 17,
                  ),
            ),
          ),
        ),
        SizedBox(
          height: 120,
          child: ListView.builder(
            itemCount: widget.features.length,
            itemBuilder: (ctx, index) {
              if (index == 0) {
                return FeatureItems(
                  features: widget.features[index],
                  onTap: () {
                    _showDialog(ctx, 'Select Android Version', androidVersions);
                  },
                );
              } else if (index == 1) {
                return FeatureItems(
                  features: widget.features[index],
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => FeaturesDetailScreen(
                            mobile: widget.mobile,
                            featureName: 'IOS',
                          )),
                    ));
                  },
                );
              } else if (index == 2) {
                return FeatureItems(
                  features: widget.features[index],
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => FeaturesDetailScreen(
                            mobile: widget.mobile,
                            featureName: 'DualSim',
                          )),
                    ));
                  },
                );
              } else if (index == 3) {
                return FeatureItems(
                  features: widget.features[index],
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => FeaturesDetailScreen(
                            mobile: widget.mobile,
                            featureName: '3G',
                          )),
                    ));
                  },
                );
              } else if (index == 4) {
                return FeatureItems(
                  features: widget.features[index],
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => FeaturesDetailScreen(
                            mobile: widget.mobile,
                            featureName: '4G',
                          )),
                    ));
                  },
                );
              } else if (index == 5) {
                return FeatureItems(
                  features: widget.features[index],
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => FeaturesDetailScreen(
                            mobile: widget.mobile,
                            featureName: '5G',
                          )),
                    ));
                  },
                );
              } else if (index == 6) {
                return FeatureItems(
                  features: widget.features[index],
                  onTap: () {
                    _showDialog(context, 'Select Ram', ramTypes);
                  },
                );
              } else if (index == 7) {
                return FeatureItems(
                  features: widget.features[index],
                  onTap: () {
                    _showDialog(context, 'Select Screen Size', screenTypes);
                  },
                );
              } else if (index == 8) {
                return FeatureItems(
                  features: widget.features[index],
                  onTap: () {
                    _showDialog(context, 'Select Camera Strength', cameraTypes);
                  },
                );
              } else if (index == 9) {
                return FeatureItems(
                  features: widget.features[index],
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => FeaturesDetailScreen(
                            mobile: widget.mobile,
                            featureName: 'FingerPrint',
                          )),
                    ));
                  },
                );
              } else if (index == 10) {
                return FeatureItems(
                  features: widget.features[index],
                  onTap: () {
                    _showDialog(context, 'Select Processor', processorTypes);
                  },
                );
              } else if (index == 11) {
                return FeatureItems(
                  features: widget.features[index],
                  onTap: () {
                    _showBatteryDialog(context);
                  },
                );
              }
              return null;
              // else {
              //   return FeatureItems(
              //     features: widget.features[index],
              //     onTap: () {
              //       // _showAndroidVersionsDialog(ctx);
              //     },
              //   );
              // }
            },
            scrollDirection: Axis.horizontal,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Search by Price Group',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Theme.of(context)
                        .colorScheme
                        .onBackground
                        .withOpacity(0.5),
                    // fontSize: 19,
                    fontWeight: FontWeight.normal,
                  ),
            ),
          ),
        ),
        SizedBox(
          height: 120,
          child: ListView.builder(
            itemCount: widget.price.length,
            itemBuilder: (ctx, index) => PriceCategoryItems(
              price: widget.price[index],
              onSelectPrice: (price) {
                selectPrice(
                    context, price, price.startingPrice, price.endingPrice);
              },
            ),
            scrollDirection: Axis.horizontal,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, bottom: 10),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Latest Video Reviews',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Colors.grey,
                    // fontSize: 19,
                    fontWeight: FontWeight.normal,
                  ),
            ),
          ),
        ),
        SizedBox(
          height: 170,
          child: ListView.builder(
            itemCount: widget.videos.length,
            itemBuilder: (ctx, index) => VideoReviewItems(
              videoReviews: widget.videos[index],
            ),
            scrollDirection: Axis.horizontal,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, bottom: 10),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Latest News & Reviews',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Colors.grey,
                    // fontSize: 19,
                    fontWeight: FontWeight.normal,
                  ),
            ),
          ),
        ),
        CarouselSliderBottomWidget(news: dummyLatestNews),
      ],
    );
  }
}
