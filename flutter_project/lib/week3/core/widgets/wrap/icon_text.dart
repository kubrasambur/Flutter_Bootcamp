import 'package:flutter/material.dart';

class IconTextWidget extends StatelessWidget {
  final String title;
  final IconData icon;

  const IconTextWidget({Key? key, required this.title, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      children: [buildIcon(), buildText(context)],
    );
  }

  Text buildText(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline6!.copyWith(
          color: Theme.of(context).colorScheme.primary,
          fontWeight: FontWeight.bold),
    );
  }

  Icon buildIcon() {
    return Icon(
      icon,
      color: Colors.black,
    );
  }
}
