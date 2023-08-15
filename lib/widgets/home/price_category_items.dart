import 'package:aboutmobiles/models/mobile.dart';
import 'package:aboutmobiles/models/price_category.dart';
import 'package:flutter/material.dart';

class PriceCategoryItems extends StatelessWidget {
  const PriceCategoryItems(
      {super.key,
      required this.price,
      required this.onSelectPrice,
      required this.mobile});

  final Price price;
  final Mobile mobile;
  final void Function(Price price) onSelectPrice;

  @override
  Widget build(BuildContext context) {
    Widget content = Text('${price.endingPrice}',
        maxLines: 1,
        textAlign: TextAlign.center,
        softWrap: true,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.titleMedium!.copyWith(
              fontSize: 18,
              color: Theme.of(context).colorScheme.primary,
              // fontWeight: FontWeight.bold,
            ));
    if (price.id == '12') {
      content = Text('${price.endingPrice}+',
          maxLines: 1,
          textAlign: TextAlign.center,
          softWrap: true,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontSize: 18,
                color: Theme.of(context).colorScheme.primary,
                // fontWeight: FontWeight.bold,
              ));
    }

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
            onSelectPrice(price);
          },
          child: Column(
            children: [
              const SizedBox(height: 6),
              Text(
                price.startingPrice.toString(),
                maxLines: 1,
                textAlign: TextAlign.center,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontSize: 18,
                      color: Theme.of(context).colorScheme.primary,
                      // fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 6),
              // FadeInImage(
              //   placeholder: MemoryImage(kTransparentImage),
              //   image: AssetImage(price.imageUrl),
              //   width: 70,
              //   height: 60,
              // ),
              Icon(
                Icons.align_vertical_center,
                size: 32,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(height: 4),
              content,
            ],
          ),
        ),
      ),
    );
  }
}
