import 'package:aboutmobiles/models/latest_mobiles.dart';
import 'package:aboutmobiles/models/user_opinion_model.dart';
import 'package:aboutmobiles/widgets/specification.dart/specification_header.dart';
import 'package:aboutmobiles/widgets/user_opinions/user_opinions_item.dart';
import 'package:flutter/material.dart';

class UserOpinion extends StatelessWidget {
  const UserOpinion({super.key, required this.mobile, required this.opinions});

  final LatestMobiles mobile;
  final List<UserOpinionModel> opinions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Opinions'),
      ),
      body: Column(
        children: [
          SpecificationHeader(mobile: mobile),
          Container(
            height: 50,
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Theme.of(context).colorScheme.primary.withOpacity(0.8),
                    Theme.of(context).colorScheme.primary,
                    Theme.of(context).colorScheme.primary.withOpacity(0.8),
                  ]),
            ),
            child: Text(
              'Post Your Opinion',
              maxLines: 1,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontSize: 22,
                    color: Theme.of(context)
                        .colorScheme
                        .onPrimary
                        .withOpacity(0.9),
                    // fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 584,
            child: ListView.builder(
              itemCount: opinions.length,
              itemBuilder: (ctx, index) => UserOpinionItems(
                opinions: opinions[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
