import 'package:flutter/material.dart';

enum AppLogoTitle { row, column }

class AppLogotitle extends StatelessWidget {
  const AppLogotitle({super.key, required this.type});
  final AppLogoTitle type;

  @override
  Widget build(BuildContext context) {
    late Widget mainBody;
    if (type == AppLogoTitle.row) {
      mainBody = Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.track_changes,
            color: Theme.of(context).iconTheme.color,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            'Pedometer',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ],
      );
    } else {
      mainBody = Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.track_changes,
            color: Theme.of(context).iconTheme.color,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            'Pedometer',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ],
      );
    }
    return mainBody;
  }
}
