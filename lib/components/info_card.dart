import 'package:flutter/material.dart';


class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key, required this.title, required this.subtitle,
  });

  final String title, subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Color(0xD5CE0D44).withOpacity(0.0),
        child: Image.asset(
          'assets/images/logo_image.png',
        ),
      ),
      title: Text(
        title,
        style: TextStyle(fontSize: 14.5, fontWeight: FontWeight.bold, color: Theme.of(context).primaryColor),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(fontSize: 12, color: Theme.of(context).primaryColor),
      ),
    );
  }
}