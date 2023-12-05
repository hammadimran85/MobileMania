import 'package:aboutmobiles/models/brands.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class BrandCategoryItems extends StatelessWidget {
  const BrandCategoryItems(
      {super.key, required this.brand, required this.onSelectBrand});
  final Brand brand;
  final void Function(Brand brand) onSelectBrand;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onSelectBrand(brand);
      },
      child: Card(
        margin: const EdgeInsets.all(1.2),
        elevation: 2,
        child: Container(
          color: Colors.white,
          child: Stack(children: [
            Hero(
              tag: brand.id,
              child: Container(
                color: Colors.transparent,
                child: FadeInImage(
                  fit: BoxFit.cover,
                  placeholder: MemoryImage(kTransparentImage),
                  image: const AssetImage('assets/images/brandBg.jpg'),
                  height: double.infinity,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              color: Colors.black.withOpacity(0.7),
              height: double.infinity,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 120,
                    height: double.infinity,
                    child: Center(
                      child: Text(
                        brand.title,
                        maxLines: 2,
                        softWrap: true,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              fontSize: 20,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onPrimary
                                  .withOpacity(0.9),
                            ),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.navigate_next,
                    size: 40,
                    color: Theme.of(context)
                        .colorScheme
                        .onPrimary
                        .withOpacity(0.9),
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
