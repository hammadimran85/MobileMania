import 'dart:math';

import 'package:aboutmobiles/models/latest_mobiles.dart';
import 'package:aboutmobiles/models/mobile.dart';
import 'package:flutter/material.dart';
import 'package:aboutmobiles/screens/image_view.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class SpecificationHeader extends StatelessWidget {
  const SpecificationHeader({super.key, required this.mobile});

  final Mobile mobile;

  @override
  Widget build(BuildContext context) {
    int randomNumber(int min, int max) {
      final Random random = Random();
      return min + random.nextInt(max - min + 1);
    }

    return Container(
      height: 180,
      padding: const EdgeInsets.only(top: 5, bottom: 13),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Hero(
            tag: mobile.id,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ImageViewScreen(
                      imageUrl: mobile.imageUrl,
                    ),
                  ),
                );
              },
              child: FadeInImage(
                placeholder: MemoryImage(kTransparentImage),
                image: AssetImage(mobile.imageUrl),
                width: 90,
                height: 160,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                mobile.name.length > 15
                    ? mobile.name.substring(0, 15)
                    : mobile.name,
                maxLines: 1,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontSize: 22,
                      color: Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(0.9),
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 7),
              RatingBar.builder(
                initialRating: randomNumber(0, 5).toDouble(),
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  // print(rating);
                },
                itemSize: 20,
                ignoreGestures: true,
                unratedColor: const Color.fromARGB(255, 211, 210, 210),
              ),
              const SizedBox(height: 7),
              Text(
                'Rs. ${mobile.price}',
                maxLines: 1,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontSize: 22,
                      color: Theme.of(context).colorScheme.primary,
                      // fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
          FilledButton(
              onPressed: () {},
              style: ButtonStyle(
                shape: const MaterialStatePropertyAll(BeveledRectangleBorder()),
                backgroundColor: MaterialStatePropertyAll(
                    Theme.of(context).colorScheme.primary.withOpacity(0.8)),
                padding: const MaterialStatePropertyAll(EdgeInsets.all(10)),
              ),
              child: Row(
                children: [
                  Text(
                    'Share ',
                    maxLines: 1,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.onPrimary,
                          // fontWeight: FontWeight.bold,
                        ),
                  ),
                  const Icon(
                    Icons.share,
                    size: 20,
                  )
                ],
              ))
        ],
      ),
    );
  }
}
