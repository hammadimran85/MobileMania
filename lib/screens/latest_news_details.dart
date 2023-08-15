import 'package:flutter/material.dart';

class LatestNewsDetails extends StatelessWidget {
  const LatestNewsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Samsung',
          softWrap: true,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontSize: 22,
                color:
                    Theme.of(context).colorScheme.onBackground.withOpacity(0.8),
              ),
        ),
      ),
      backgroundColor: const Color.fromARGB(252, 252, 252, 255),
    );
  }
}
