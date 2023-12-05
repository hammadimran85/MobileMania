import 'package:aboutmobiles/models/mobile.dart';
import 'package:flutter/material.dart';

class SpecDetailsItem extends StatelessWidget {
  const SpecDetailsItem({super.key, required this.mobile});

  final Mobile mobile;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, top: 15),
      height: 330,
      color: const Color.fromARGB(249, 245, 245, 255),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 60,
                width: 150,
                decoration: const BoxDecoration(
                  border: Border(
                    right: BorderSide(color: Colors.black45, width: 1.0),
                    bottom: BorderSide(color: Colors.black45, width: 1.0),
                  ),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.only(left: 10, top: 7, right: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Camera',
                      maxLines: 1,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontSize: 20,
                            color: Theme.of(context)
                                .colorScheme
                                .primary
                                .withOpacity(0.7),
                            // fontWeight: FontWeight.bold,
                          ),
                    ),
                    Text(
                      mobile.featuresOfCamera.length > 7
                          ? mobile.featuresOfCamera.substring(0, 7)
                          : mobile.featuresOfCamera,
                      maxLines: 1,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontSize: 16,
                            color: Theme.of(context)
                                .colorScheme
                                .onBackground
                                .withOpacity(0.7),
                            // fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 60,
                width: 150,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.black45, width: 1.0),
                  ),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.only(
                  left: 10,
                  top: 7,
                  right: 25,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'GPU',
                      maxLines: 1,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontSize: 20,
                            color: Theme.of(context)
                                .colorScheme
                                .primary
                                .withOpacity(0.7),
                            // fontWeight: FontWeight.bold,
                          ),
                    ),
                    Text(
                      mobile.gpu,
                      maxLines: 1,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontSize: 16,
                            color: Theme.of(context)
                                .colorScheme
                                .onBackground
                                .withOpacity(0.7),
                            // fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 60,
                width: 150,
                decoration: const BoxDecoration(
                  border: Border(
                    right: BorderSide(color: Colors.black45, width: 1.0),
                    bottom: BorderSide(color: Colors.black45, width: 1.0),
                  ),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.only(
                  left: 10,
                  top: 7,
                  right: 96,
                ),
                child: Column(
                  children: [
                    Text(
                      'Ram',
                      maxLines: 1,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontSize: 20,
                            color: Theme.of(context)
                                .colorScheme
                                .primary
                                .withOpacity(0.7),
                            // fontWeight: FontWeight.bold,
                          ),
                    ),
                    Text(
                      mobile.internalMemory.length > 6
                          ? mobile.internalMemory.substring(0, 7)
                          : mobile.internalMemory,
                      maxLines: 1,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontSize: 16,
                            color: Theme.of(context)
                                .colorScheme
                                .onBackground
                                .withOpacity(0.7),
                            // fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 60,
                width: 150,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.black45, width: 1.0),
                  ),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.only(
                  left: 10,
                  top: 7,
                  right: 40,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Memory',
                      maxLines: 1,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontSize: 20,
                            color: Theme.of(context)
                                .colorScheme
                                .primary
                                .withOpacity(0.7),
                            // fontWeight: FontWeight.bold,
                          ),
                    ),
                    Text(
                      mobile.internalMemory.length > 8 &&
                              mobile.internalMemory.length < 15
                          ? mobile.internalMemory.substring(8, 14)
                          : mobile.internalMemory,
                      maxLines: 1,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontSize: 16,
                            color: Theme.of(context)
                                .colorScheme
                                .onBackground
                                .withOpacity(0.7),
                            // fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 60,
                width: 150,
                decoration: const BoxDecoration(
                  border: Border(
                    right: BorderSide(color: Colors.black45, width: 1.0),
                    bottom: BorderSide(color: Colors.black45, width: 1.0),
                  ),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.only(
                  left: 10,
                  top: 7,
                  right: 74,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Display',
                      maxLines: 1,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontSize: 20,
                            color: Theme.of(context)
                                .colorScheme
                                .primary
                                .withOpacity(0.7),
                            // fontWeight: FontWeight.bold,
                          ),
                    ),
                    Text(
                      mobile.screenSize,
                      maxLines: 1,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontSize: 16,
                            color: Theme.of(context)
                                .colorScheme
                                .onBackground
                                .withOpacity(0.7),
                            // fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 60,
                width: 150,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.black45, width: 1.0),
                  ),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.only(
                  left: 10,
                  top: 7,
                  right: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Processor',
                      maxLines: 1,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontSize: 20,
                            color: Theme.of(context)
                                .colorScheme
                                .primary
                                .withOpacity(0.7),
                            // fontWeight: FontWeight.bold,
                          ),
                    ),
                    Text(
                      mobile.cpu.length > 8
                          ? mobile.cpu.substring(0, 8)
                          : mobile.cpu,
                      maxLines: 1,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontSize: 16,
                            color: Theme.of(context)
                                .colorScheme
                                .onBackground
                                .withOpacity(0.7),
                            // fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 60,
                width: 150,
                decoration: const BoxDecoration(
                  border: Border(
                    right: BorderSide(color: Colors.black45, width: 1.0),
                    bottom: BorderSide(color: Colors.black45, width: 1.0),
                  ),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.only(
                  left: 10,
                  top: 7,
                  right: 68,
                ),
                child: Column(
                  children: [
                    Text(
                      'Battery',
                      maxLines: 1,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontSize: 20,
                            color: Theme.of(context)
                                .colorScheme
                                .primary
                                .withOpacity(0.7),
                            // fontWeight: FontWeight.bold,
                          ),
                    ),
                    Text(
                      mobile.batteryType.length > 10
                          ? mobile.batteryType.substring(0, 10)
                          : mobile.batteryType,
                      maxLines: 1,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontSize: 16,
                            color: Theme.of(context)
                                .colorScheme
                                .onBackground
                                .withOpacity(0.7),
                            // fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 60,
                width: 150,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.black45, width: 1.0),
                  ),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.only(
                  left: 10,
                  top: 7,
                  right: 82,
                ),
                child: Column(
                  children: [
                    Text(
                      'Weight',
                      maxLines: 1,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontSize: 20,
                            color: Theme.of(context)
                                .colorScheme
                                .primary
                                .withOpacity(0.7),
                            // fontWeight: FontWeight.bold,
                          ),
                    ),
                    Text(
                      mobile.weight == 0 ? 'N/A' : '${mobile.weight} g',
                      maxLines: 1,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontSize: 16,
                            color: Theme.of(context)
                                .colorScheme
                                .onBackground
                                .withOpacity(0.7),
                            // fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 60,
                width: 300,
                color: Colors.white,
                padding: const EdgeInsets.only(
                  left: 10,
                  top: 7,
                  right: 190,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'OS',
                      maxLines: 1,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontSize: 20,
                            color: Theme.of(context)
                                .colorScheme
                                .primary
                                .withOpacity(0.7),
                            // fontWeight: FontWeight.bold,
                          ),
                    ),
                    Text(
                      mobile.os,
                      maxLines: 1,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontSize: 16,
                            color: Theme.of(context)
                                .colorScheme
                                .onBackground
                                .withOpacity(0.7),
                            // fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
