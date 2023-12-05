import 'package:aboutmobiles/models/brands.dart';
import 'package:aboutmobiles/models/mobile.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class BrandItems extends StatefulWidget {
  const BrandItems(
      {super.key,
      required this.brand,
      required this.mobile,
      required this.onSelectBrand,
      required this.index});

  final Brand brand;
  final Mobile mobile;
  final int index;
  final void Function(Mobile mobile) onSelectBrand;

  @override
  State<BrandItems> createState() => _BrandItemsState();
}

class _BrandItemsState extends State<BrandItems> {
  dynamic brandImage() {
    if (widget.brand.title == 'QMobile') {
      return 'assets/images/qmobile.png';
    } else if (widget.brand.title == 'SAMSUNG') {
      return 'assets/images/logo.png';
    } else if (widget.brand.title == 'NOKIA') {
      return 'assets/images/nokia.png';
    } else if (widget.brand.title == 'G\'five') {
      return 'assets/images/g_five.png';
    } else if (widget.brand.title == 'Apple Iphone') {
      return 'assets/images/iphone.png';
    } else if (widget.brand.title == 'HTC Mobile') {
      return 'assets/images/htc.png';
    } else if (widget.brand.title == 'Sony') {
      return 'assets/images/sony.png';
    } else if (widget.brand.title == 'Voice Mobile') {
      return 'assets/images/voice.jpeg';
    } else if (widget.brand.title == 'Megagate') {
      return 'assets/images/megagate.png';
    } else if (widget.brand.title == 'Sony Ericsson') {
      return 'assets/images/Sony-Ericsson.png';
    } else if (widget.brand.title == 'Huawei Mobile') {
      return 'assets/images/huawei.png';
    } else if (widget.brand.title == 'Blackberry') {
      return 'assets/images/black_berry.png';
    } else if (widget.brand.title == 'LG Mobile') {
      return 'assets/images/lg.png';
    } else if (widget.brand.title == 'Haier Mobile') {
      return 'assets/images/haier.png';
    } else if (widget.brand.title == 'Motorola Mobile') {
      return 'assets/images/motorola.png';
    } else {
      return const Center(
        child: Icon(
          Icons.image,
          color: Colors.grey,
          size: 46,
        ),
      );
    }
  }

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
            widget.onSelectBrand(widget.mobile);
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 7, bottom: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Hero(
                  tag: widget.brand.id,
                  child: brandImage().runtimeType == String
                      ? FadeInImage(
                          placeholder: MemoryImage(kTransparentImage),
                          image: AssetImage(brandImage()),
                          width: 70,
                          height: 60,
                        )
                      : brandImage(),
                ),
                Text(
                  widget.brand.title,
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
