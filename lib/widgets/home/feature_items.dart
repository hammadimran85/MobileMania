import 'package:aboutmobiles/models/features.dart';
import 'package:flutter/material.dart';

class FeatureItems extends StatelessWidget {
  const FeatureItems({super.key, required this.features, required this.onTap});

  final Features features;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: Card(
        surfaceTintColor: Colors.transparent,
        margin: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 4,
        ),
        clipBehavior: Clip.hardEdge,
        elevation: 2,
        child: InkWell(
          autofocus: true,
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 5, top: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(height: 6),
                features.imageUrl,
                const SizedBox(height: 10),
                Text(
                  features.title,
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
