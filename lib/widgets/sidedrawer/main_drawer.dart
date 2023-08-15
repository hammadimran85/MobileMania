import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key, required this.onSelectScreen});

  final void Function(String identifier) onSelectScreen;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:
          // DrawerHeader(
          //   // padding: const EdgeInsets.all(20),
          //   decoration: const BoxDecoration(
          //       image: DecorationImage(
          //     image: AssetImage('assets/images/drawer_bg.jpg'),
          //   )),
          //   child: Lottie.asset(
          //     'assets/animations/mobile_info.json',
          //     width: 350,
          //     height: 90,
          //     // fit: BoxFit.cover,
          //     alignment: Alignment.topCenter,
          //   ),
          // ),
          //   Container(
          // decoration: const BoxDecoration(
          //   image: DecorationImage(
          //     image: AssetImage('assets/images/drawer_bg.jpg'),
          //   ),
          // ),
          Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/drawer_bg.jpg'),
                fit: BoxFit.cover,
                opacity: 0.85,
              ),
            ),
          ),
          Positioned(
            // top: 30,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Lottie.asset(
                    'assets/animations/mobile_info.json',
                    width: 350,
                    height: 200,
                    // fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                  ListTile(
                    selectedColor: Theme.of(context).colorScheme.primary,
                    leading: Icon(
                      Icons.home,
                      size: 26,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                    title: Text(
                      'Home',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontSize: 20,
                          ),
                    ),
                    onTap: () {
                      onSelectScreen('home');
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.branding_watermark,
                      size: 26,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                    title: Text(
                      'Brands',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontSize: 20,
                          ),
                    ),
                    onTap: () {
                      onSelectScreen('brands');
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.newspaper,
                      size: 26,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                    title: Text(
                      'News',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontSize: 20,
                          ),
                    ),
                    onTap: () {
                      onSelectScreen('news');
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.rate_review_sharp,
                      size: 26,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                    title: Text(
                      'Reviews',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontSize: 20,
                          ),
                    ),
                    onTap: () {
                      onSelectScreen('reviews');
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.video_collection,
                      size: 26,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                    title: Text(
                      'Video Reviews',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontSize: 20,
                          ),
                    ),
                    onTap: () {
                      onSelectScreen('video_reviews');
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.notifications_active,
                      size: 26,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                    title: Text(
                      'Latest Alerts',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontSize: 20,
                          ),
                    ),
                    onTap: () {
                      onSelectScreen('latest_alerts');
                    },
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin:
                        const EdgeInsets.only(left: 18, top: 10, bottom: 10),
                    child: Text(
                      'Comunicate',
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontSize: 28,
                            color: Colors.white,
                          ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.info,
                      size: 26,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                    title: Text(
                      'About Us',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontSize: 20,
                          ),
                    ),
                    onTap: () {
                      onSelectScreen('about');
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.share,
                      size: 26,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                    title: Text(
                      'Share',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontSize: 20,
                          ),
                    ),
                    onTap: () {
                      onSelectScreen('share');
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.feedback,
                      size: 26,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                    title: Text(
                      'Feedback',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontSize: 20,
                          ),
                    ),
                    onTap: () {
                      onSelectScreen('feedback');
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
