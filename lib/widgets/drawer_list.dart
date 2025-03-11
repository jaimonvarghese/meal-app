import 'package:flutter/material.dart';

class DrawerList extends StatelessWidget {
  const DrawerList({
    super.key, required this.icon, required this.title, required this.onTap,
  });

  final Icon icon;
  final String title;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
          color: Theme.of(context).colorScheme.primary,
          fontSize: 24,
        ),
      ),
      onTap: onTap,
    );
  }
}