import 'package:aboutmobiles/models/latest_mobiles.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class LatestMobilesItem extends StatelessWidget {
  const LatestMobilesItem(
      {super.key, required this.latestMobiles, required this.onSelectMobile});

  final LatestMobiles latestMobiles;
  final void Function(LatestMobiles latestMobiles) onSelectMobile;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      child: Card(
        surfaceTintColor: Colors.transparent,
        shape: const BeveledRectangleBorder(),
        clipBehavior: Clip.hardEdge,
        elevation: 3,
        child: InkWell(
          autofocus: true,
          onTap: () {
            onSelectMobile(latestMobiles);
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Hero(
                tag: latestMobiles.id,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: FadeInImage(
                    placeholder: MemoryImage(kTransparentImage),
                    image: AssetImage(latestMobiles.imageUrl),
                    width: 90,
                    height: 70,
                  ),
                ),
              ),
              Text(
                latestMobiles.company,
                maxLines: 1,
                textAlign: TextAlign.center,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontSize: 16,
                      color: Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(0.8),
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                latestMobiles.model,
                maxLines: 1,
                textAlign: TextAlign.center,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontSize: 15,
                      color: Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(0.8),
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Text(
                  'Rs. ${latestMobiles.price}',
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.red.withOpacity(0.7),
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
