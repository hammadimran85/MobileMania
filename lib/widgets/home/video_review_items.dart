import 'package:aboutmobiles/models/video_reviews.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class VideoReviewItems extends StatelessWidget {
  const VideoReviewItems({super.key, required this.videoReviews});

  final VideoReviews videoReviews;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 190,
      child: Card(
        surfaceTintColor: Colors.transparent,
        color: Colors.transparent,
        shape: const BeveledRectangleBorder(),
        margin: const EdgeInsets.symmetric(
          vertical: 0,
          horizontal: 8,
        ),
        clipBehavior: Clip.hardEdge,
        elevation: 0,
        child: InkWell(
          autofocus: true,
          onTap: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Hero(
                tag: videoReviews.id,
                child: Stack(children: [
                  FadeInImage(
                    placeholder: MemoryImage(kTransparentImage),
                    image: AssetImage(videoReviews.thumbnailUrl),
                    width: 190,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                      left: 120,
                      top: 65,
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        color: Colors.black54,
                        child: Text(
                          videoReviews.minutes,
                          maxLines: 1,
                          textAlign: TextAlign.start,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                fontSize: 13,
                                color: Theme.of(context).colorScheme.onPrimary,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ))
                ]),
              ),
              const SizedBox(height: 2),
              Text(
                videoReviews.phoneName,
                maxLines: 1,
                textAlign: TextAlign.start,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                videoReviews.title,
                maxLines: 1,
                textAlign: TextAlign.start,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontSize: 15,
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
