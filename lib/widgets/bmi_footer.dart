import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BMIFooter extends StatelessWidget {
  const BMIFooter({super.key, required this.githubURL});

  final String githubURL;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Created by Ahda Akmalul Ilmi',
          style: TextStyle(fontSize: 12.0),
        ),
        const SizedBox(
          width: 10.0,
        ),
        GestureDetector(
          child: Image.network(
            'https://github.com/favicon.ico',
            height: 20.0,
            width: 20.0,
          ),
          onTap: () => launchUrl(Uri.parse(githubURL)),
        )
      ],
    );
  }
}
