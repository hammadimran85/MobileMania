import 'package:aboutmobiles/models/mobile.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class BrandDetailItems extends StatelessWidget {
  const BrandDetailItems({super.key, required this.mobile});
  final Mobile mobile;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
              color:
                  Theme.of(context).colorScheme.onBackground.withOpacity(0.2),
              width: 1.0),
        ),
        color: Colors.white,
      ),
      padding: const EdgeInsets.only(
        left: 10,
        top: 10,
        bottom: 10,
        // right: 55,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Hero(
            tag: mobile.id,
            child: FadeInImage(
              placeholder: MemoryImage(kTransparentImage),
              image: AssetImage(mobile.imageUrl),
              width: 80,
              height: 110,
            ),
          ),
          Stack(
            clipBehavior: Clip.hardEdge,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      '${mobile.name.length > 16 ? mobile.name.substring(0, 16) : mobile.name} ${mobile.internalMemory.length > 6 ? mobile.internalMemory.substring(0, 6) : mobile.internalMemory} ',
                      maxLines: 1,
                      softWrap: true,
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontSize: 20,
                            color: Theme.of(context)
                                .colorScheme
                                .primary
                                .withOpacity(0.8),
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  Text(
                    '${mobile.internalMemory.length > 6 ? mobile.internalMemory.substring(0, 6) : mobile.internalMemory},  ${mobile.featuresOfCamera.split(" ")[0].length > 6 ? mobile.featuresOfCamera.split(" ")[0].substring(0, 6) : mobile.featuresOfCamera.split(" ")[0]} MP, ${mobile.dimensions.length > 6 ? mobile.dimensions.substring(0, 6) : mobile.dimensions} ,',
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontSize: 14,
                          color: Theme.of(context).colorScheme.primary,
                          // fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text(
                    '${mobile.batteryPower}mAh Battery',
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontSize: 14,
                          color: Theme.of(context).colorScheme.primary,
                          // fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.center,
                height: 30,
                margin: const EdgeInsets.fromLTRB(150, 90, 0, 0),
                padding: const EdgeInsets.only(left: 8, right: 8, top: 1),
                color: Theme.of(context).colorScheme.primary.withOpacity(0.9),
                child: Text(
                  'Rs. ${mobile.price}',
                  maxLines: 1,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontSize: 18,
                        color: Theme.of(context).colorScheme.onPrimary,
                        // fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
