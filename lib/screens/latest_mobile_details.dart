import 'package:aboutmobiles/models/mobile.dart';
import 'package:aboutmobiles/models/user_opinion_model.dart';
import 'package:aboutmobiles/models/video_reviews.dart';
import 'package:aboutmobiles/screens/user_opinion.dart';
import 'package:aboutmobiles/widgets/home/video_review_items.dart';
import 'package:aboutmobiles/widgets/specification.dart/spec_details_item.dart';
import 'package:aboutmobiles/widgets/specification.dart/specification_header.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LatestMobileDetailsScreen extends StatelessWidget {
  const LatestMobileDetailsScreen(
      {super.key,
      required this.mobile,
      required this.videos,
      required this.opinions});

  final Mobile mobile;
  final List<VideoReviews> videos;
  final List<UserOpinionModel> opinions;

  void selectUserOpinion(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: ((context) => UserOpinion(
            mobile: mobile,
            opinions: opinions,
          )),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Specification',
          softWrap: true,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontSize: 22,
                color:
                    Theme.of(context).colorScheme.onBackground.withOpacity(0.8),
                // fontWeight: FontWeight.bold,
              ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SpecificationHeader(mobile: mobile),
            Container(
              height: 80,
              padding: const EdgeInsets.only(top: 10),
              color: const Color.fromARGB(230, 231, 233, 240),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(
                        FontAwesomeIcons.mobileScreenButton,
                        size: 40,
                        color: Theme.of(context)
                            .colorScheme
                            .onBackground
                            .withOpacity(0.8),
                      ),
                      Text(
                        mobile.dimensions.length > 8
                            ? mobile.dimensions.substring(0, 8)
                            : mobile.dimensions,
                        maxLines: 1,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              fontSize: 16,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onBackground
                                  .withOpacity(0.6),
                              // fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                  // const SizedBox(width: 35),
                  Column(
                    children: [
                      Icon(
                        Icons.camera_alt_outlined,
                        size: 40,
                        color: Theme.of(context)
                            .colorScheme
                            .onBackground
                            .withOpacity(0.8),
                      ),
                      Text(
                        mobile.featuresOfCamera.length > 7
                            ? mobile.featuresOfCamera.substring(0, 7)
                            : mobile.featuresOfCamera,
                        maxLines: 1,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              fontSize: 16,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onBackground
                                  .withOpacity(0.6),
                              // fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                  // const SizedBox(width: 35),
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/ram.png',
                        width: 40,
                        height: 40,
                      ),
                      Text(
                        mobile.internalMemory.length > 8
                            ? mobile.internalMemory.substring(0, 10)
                            : mobile.internalMemory,
                        maxLines: 1,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              fontSize: 16,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onBackground
                                  .withOpacity(0.6),
                              // fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                  // const SizedBox(width: 35),
                  Column(
                    children: [
                      Icon(
                        FontAwesomeIcons.batteryThreeQuarters,
                        size: 40,
                        color: Theme.of(context)
                            .colorScheme
                            .onBackground
                            .withOpacity(0.8),
                      ),
                      Text(
                        '${mobile.batteryPower}mAh',
                        maxLines: 1,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              fontSize: 16,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onBackground
                                  .withOpacity(0.6),
                              // fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                selectUserOpinion(context);
              },
              child: Container(
                height: 55,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(167, 138, 138, 156),
                  border: Border(
                    bottom: BorderSide(width: 1.0, color: Colors.white),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'User Opinions',
                        maxLines: 1,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              fontSize: 20,
                              color: Theme.of(context).colorScheme.onPrimary,
                              // fontWeight: FontWeight.bold,
                            ),
                      ),
                      Icon(
                        Icons.navigate_next_rounded,
                        color: Theme.of(context)
                            .colorScheme
                            .onPrimary
                            .withOpacity(0.7),
                        size: 50,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 55,
              color: const Color.fromARGB(167, 138, 138, 156),
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Compare',
                      maxLines: 1,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontSize: 20,
                            color: Theme.of(context).colorScheme.onPrimary,
                            // fontWeight: FontWeight.bold,
                          ),
                    ),
                    Icon(
                      Icons.navigate_next_rounded,
                      color: Theme.of(context)
                          .colorScheme
                          .onPrimary
                          .withOpacity(0.7),
                      size: 50,
                    ),
                  ],
                ),
              ),
            ),
            SpecDetailsItem(mobile: mobile),
            Container(
              height: 65,
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Theme.of(context).colorScheme.primary.withOpacity(0.8),
                      Theme.of(context).colorScheme.primary,
                      Theme.of(context).colorScheme.primary.withOpacity(0.8),
                    ]),
              ),
              child: Text(
                'Show Complete Specs',
                maxLines: 1,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontSize: 22,
                      color: Theme.of(context)
                          .colorScheme
                          .onPrimary
                          .withOpacity(0.9),
                      // fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 10, top: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Latest Video Reviews',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.grey,
                        fontSize: 19,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ),
            ),
            SizedBox(
              height: 170,
              child: ListView.builder(
                itemCount: videos.length,
                itemBuilder: (ctx, index) => VideoReviewItems(
                  videoReviews: videos[index],
                ),
                scrollDirection: Axis.horizontal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
