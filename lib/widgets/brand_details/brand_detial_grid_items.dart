import 'package:aboutmobiles/models/mobile.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class BrandDetailGridItems extends StatelessWidget {
  const BrandDetailGridItems({super.key, required this.mobile});
  final Mobile mobile;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Container(
        margin: const EdgeInsets.all(1),
        decoration: const BoxDecoration(
          // border: Border(
          //   bottom:
          //       BorderSide(color: Theme.of(context).colorScheme.onBackground),
          //   right:
          //       BorderSide(color: Theme.of(context).colorScheme.onBackground),
          //   top: BorderSide(color: Theme.of(context).colorScheme.onBackground),
          //   left: BorderSide(color: Theme.of(context).colorScheme.onBackground),
          // ),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Hero(
              tag: mobile.id,
              child: FadeInImage(
                placeholder: MemoryImage(kTransparentImage),
                image: AssetImage(mobile.imageUrl),
                width: 80,
                height: 90,
              ),
            ),
            Text(
              '${mobile.manufacturerName} ${mobile.name}',
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontSize: 18,
                    color:
                        Theme.of(context).colorScheme.primary.withOpacity(0.8),
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Text(
              'Rs. ${mobile.price}',
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontSize: 17,
                    color: Theme.of(context).colorScheme.error.withOpacity(0.7),
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
