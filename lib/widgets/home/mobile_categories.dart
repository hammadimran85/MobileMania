// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:aboutmobiles/data/dummy_data.dart';
import 'package:aboutmobiles/models/mobile.dart';
import 'package:aboutmobiles/models/price_category.dart';
import 'package:aboutmobiles/models/user_opinion_model.dart';
import 'package:aboutmobiles/models/video_reviews.dart';
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

class MobileCategories extends StatefulWidget {
  const MobileCategories({
    super.key,
    required this.latestmobiles,
    required this.mobile,
    required this.features,
    required this.price,
    required this.videos,
    required this.opinions,
  });

  final List<LatestMobiles> latestmobiles;
  final List<Mobile> mobile;
  final List<Features> features;
  final List<Price> price;
  final List<VideoReviews> videos;
  final List<UserOpinionModel> opinions;

  @override
  State<MobileCategories> createState() => _MobileCategoriesState();
}

class _MobileCategoriesState extends State<MobileCategories> {
  void selectMobile(BuildContext context, LatestMobiles latestMobiles) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: ((context) => LatestMobileDetailsScreen(
            mobile: latestMobiles,
            videos: dummyVideoReviews,
            opinions: widget.opinions,
          )),
    ));
  }

  void selectBrand(BuildContext context, Mobile mobile, String brand) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: ((context) => BrandsDetailScreen(
            mobile: dummyMobiles,
            brandName: brand,
          )),
    ));
  }

  void selectPrice(
      BuildContext context, Price price, int startingPrice, int endingPrice) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: ((context) => PriceDetailScreen(
            mobile: dummyMobiles,
            staringPrice: startingPrice,
            endingPrice: endingPrice,
          )),
    ));
  }

  @override
  Widget build(BuildContext context) {
    int _selectedValue = 0;
    final Map<int, String> androidVersions = {
      0: 'All',
      1: 'Android 14',
      2: 'Android 13',
      3: 'Android 12',
      4: 'Android 11',
      5: 'Android 10',
      6: 'Pie',
      7: 'Oreo',
      8: 'Nougat',
      9: 'Marshmallow',
      10: 'Android One',
      // Add more versions as needed
    };

    final Map<int, String> ramTypes = {
      0: 'All',
      1: '512MB',
      2: '2GB',
      3: '3GB',
      4: '4GB',
      5: '6GB',
      6: '8GB',
      7: '12GB & Above',
      // Add more versions as needed
    };

    final Map<int, String> screenTypes = {
      0: 'All',
      1: 'Less than 3 inch',
      2: '3.0 Inch - 4.1 Inch',
      3: '4.1 Inch - 4.9 Inch',
      4: '5.0 Inch - 6.9 Inch',
      5: '7.0 Inch - 8.9 Inch',
      // Add more versions as needed
    };

    final Map<int, String> processorTypes = {
      0: 'All',
      1: 'Single Core',
      2: 'Dual Core',
      3: 'Qaud Core',
      4: 'Hexa Core',
      5: 'Octa Core',
      // Add more versions as needed
    };

    final Map<int, String> cameraTypes = {
      0: 'All',
      1: '1 MP',
      2: '2 MP',
      3: '3 MP',
      4: '4 MP',
      5: '5 MP',
      6: '6 MP',
      7: '7 MP',
      8: '8 MP',
      9: '9 MP',
      10: '10 MP',
      11: '11 MP',
      12: '12 MP',
      13: '13 MP',
      14: '14 MP',
      15: '15 MP',
      16: '16 MP',
      17: '17 MP',
      18: '18 MP',
      19: '19 MP',
      20: '20 MP',
      21: '21 MP',
      22: '23 MP',
      23: '24 MP',
      24: '25 MP',
      25: '27 MP',
      26: '32 MP',
      27: '40 MP',
      28: '41 MP',
      29: '48 MP',
      30: '50 MP',
      31: '52 MP',
      32: '54 MP',
      33: '64 MP',
      34: '100 MP',
      35: '108 MP',
      36: '200 MP',
      // Add more versions as needed
    };

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
              backgroundColor: const Color.fromARGB(253, 253, 253, 255),
              title: const Center(child: Text('Select Battery Power')),
              content: Container(
                  height: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Capacity',
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  color: Colors.grey,
                                  // fontSize: 19,
                                ),
                      ),
                      BatterySlider(
                          maxValue: 6000,
                          minValue: 0,
                          value: selectedBatteryValue,
                          onChanged: (value) {
                            setState(() {
                              selectedBatteryValue = value;
                            });
                          }),
                    ],
                  )));
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
            itemCount: widget.latestmobiles.length,
            itemBuilder: (ctx, index) => LatestMobilesItem(
              latestMobiles: widget.latestmobiles[index],
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
              itemCount: widget.mobile.length,
              itemBuilder: (ctx, index) => BrandItems(
                    mobile: widget.mobile[index],
                    onSelectBrand: (mobile) {
                      selectBrand(context, mobile, mobile.brand);
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
              } else {
                return FeatureItems(
                  features: widget.features[index],
                  onTap: () {
                    // _showAndroidVersionsDialog(ctx);
                  },
                );
              }
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
              mobile: widget.mobile[1],
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
