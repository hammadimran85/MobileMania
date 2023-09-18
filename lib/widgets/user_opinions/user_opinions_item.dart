import 'package:aboutmobiles/models/user_opinion_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class UserOpinionItems extends StatelessWidget {
  const UserOpinionItems({super.key, required this.opinions});

  final UserOpinionModel opinions;

  String get formattedDate {
    final formatter = DateFormat.yMMMd();
    return formatter.format(opinions.date);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 5,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            width: double.infinity,
            color: Theme.of(context).colorScheme.primary.withOpacity(0.7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  opinions.name,
                  textAlign: TextAlign.left,
                  maxLines: 1,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontSize: 16,
                        color: Theme.of(context).colorScheme.onPrimary,
                        // fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  formattedDate,
                  maxLines: 1,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontSize: 15,
                        color: Theme.of(context).colorScheme.onPrimary,
                        // fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            color: Theme.of(context).colorScheme.onPrimary,
            child: Text(
              opinions.message,
              textAlign: TextAlign.left,
              softWrap: true,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontSize: 15,
                    color: Theme.of(context).colorScheme.onBackground,
                    // fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
