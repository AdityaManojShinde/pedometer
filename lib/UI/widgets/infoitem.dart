import 'package:flutter/widgets.dart';

class InfoItem extends StatelessWidget {
  const InfoItem(
      {super.key, required this.icon, required this.info, required this.title});
  final IconData icon;
  final String info;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Icon(icon), Text(info), Text(title)],
    );
  }
}
