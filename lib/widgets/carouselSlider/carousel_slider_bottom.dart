import 'package:aboutmobiles/models/latest_news.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselSliderBottomWidget extends StatefulWidget {
  const CarouselSliderBottomWidget({super.key, required this.news});
  final List<LatestNews> news;

  @override
  State<CarouselSliderBottomWidget> createState() =>
      _CarouselSliderBottomWidgetState();
}

class _CarouselSliderBottomWidgetState
    extends State<CarouselSliderBottomWidget> {
  List imageList = [
    {'id': 1, 'image-path': 'assets/images/1.jpg'},
    {'id': 2, 'image-path': 'assets/images/2.jpg'},
    {'id': 3, 'image-path': 'assets/images/3.jpg'},
    {'id': 4, 'image-path': 'assets/images/4.jpg'},
    {'id': 5, 'image-path': 'assets/images/5.jpeg'},
  ];

  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget content = Text(
      'iPhone 15 Release Could Be Delayed Until October, Pro Models May Have Fewer Units Available at Launch',
      textAlign: TextAlign.start,
      maxLines: 3,
      softWrap: true,
      overflow: TextOverflow.ellipsis,
      style: Theme.of(context).textTheme.titleSmall!.copyWith(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.normal,
          ),
    );
    if (currentIndex == 1) {
      content = Text(
        'Prime Minister Shahbaz Sharif on Tuesday inaugurated the Online Temporary Mobile Phone Registration System to facilitate overseas Pakistanis',
        textAlign: TextAlign.start,
        maxLines: 3,
        softWrap: true,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.titleSmall!.copyWith(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.normal,
            ),
      );
    } else if (currentIndex == 2) {
      content = Text(
        'The head of Samsung\'s Mobile eXperience unit discusses keys to designing the Galaxy Z Fold 5 and Galaxy Z Flip 5.',
        textAlign: TextAlign.start,
        maxLines: 3,
        softWrap: true,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.titleSmall!.copyWith(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.normal,
            ),
      );
    } else if (currentIndex == 3) {
      content = Text(
        'The Google Pixel 8 and Pixel 8 Pro are on their way. Google\'s fallen into a pretty reliable release pattern for Pixel phones.',
        textAlign: TextAlign.start,
        maxLines: 3,
        softWrap: true,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.titleSmall!.copyWith(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.normal,
            ),
      );
    } else {
      content = Text(
        'Visitors will be offered epic experiences with the new Samsung Galaxy \$23 series and its ecosystem of connected products and services.',
        textAlign: TextAlign.start,
        maxLines: 3,
        softWrap: true,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.titleSmall!.copyWith(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.normal,
            ),
      );
    }
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            InkWell(
              onTap: () {},
              child: CarouselSlider(
                items: imageList
                    .map(
                      (item) => Image.asset(
                        item['image-path'],
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    )
                    .toList(),
                carouselController: carouselController,
                options: CarouselOptions(
                  scrollPhysics: const BouncingScrollPhysics(),
                  autoPlay: true,
                  aspectRatio: 1.7,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                ),
              ),
            ),
            Container(
              color: Colors.black54.withOpacity(0.4),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: content,
                  ),
                  // Container(
                  //   margin: const EdgeInsets.symmetric(
                  //     vertical: 13,
                  //     horizontal: 140,
                  //   ),
                  //   child:
                  //   Row(
                  //     children: imageList.asMap().entries.map(
                  //       (entry) {
                  //         return GestureDetector(
                  //           onTap: () =>
                  //               carouselController.animateToPage(entry.key),
                  //           child: Container(
                  //             width: currentIndex == entry.key ? 17 : 7,
                  //             height: 7.0,
                  //             margin:
                  //                 const EdgeInsets.symmetric(horizontal: 3.0),
                  //             decoration: BoxDecoration(
                  //                 borderRadius: BorderRadius.circular(10),
                  //                 color: currentIndex == entry.key
                  //                     ? Theme.of(context)
                  //                         .colorScheme
                  //                         .onPrimary
                  //                     : Theme.of(context)
                  //                         .colorScheme
                  //                         .onPrimary),
                  //           ),
                  //         );
                  //       },
                  //     ).toList(),
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
