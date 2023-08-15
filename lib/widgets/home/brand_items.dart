import 'package:aboutmobiles/models/mobile.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class BrandItems extends StatelessWidget {
  const BrandItems(
      {super.key, required this.mobile, required this.onSelectBrand});

  final Mobile mobile;
  final void Function(Mobile mobile) onSelectBrand;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: Card(
        surfaceTintColor: Colors.transparent,
        margin: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 4,
        ),
        clipBehavior: Clip.hardEdge,
        elevation: 2,
        child: InkWell(
          autofocus: true,
          onTap: () {
            onSelectBrand(mobile);
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 7, bottom: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Hero(
                  tag: mobile.id,
                  child: FadeInImage(
                    placeholder: MemoryImage(kTransparentImage),
                    image: AssetImage(mobile.brandImageUrl),
                    width: 70,
                    height: 60,
                  ),
                ),
                Text(
                  mobile.brand,
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontSize: 16,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
