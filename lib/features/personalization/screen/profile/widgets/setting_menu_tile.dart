import 'package:flutter/material.dart';

class SettingsMenuTile extends StatelessWidget {
  final String title, subTitle;
  final IconData icon;

  const SettingsMenuTile({
    super.key,
    required this.title,
    required this.subTitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title, style: Theme.of(context).textTheme.titleMedium),
      subtitle: Text(subTitle, style: Theme.of(context).textTheme.labelMedium),
    );
  }
}
