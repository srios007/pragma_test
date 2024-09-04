import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../utils/utils.dart';

class CatInfoWidget extends StatelessWidget {
  const CatInfoWidget({
    super.key,
    required this.title,
    required this.value,
    this.isUrl = false,
  });

  final String title;
  final String value;
  final bool isUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        Text(
          '$title: ',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Palette.black,
          ),
        ),
        const SizedBox(height: 10),
        Visibility(
          visible: isUrl,
          replacement: Text(
            value,
            style: const TextStyle(color: Palette.black),
          ),
          child: GestureDetector(
            onTap: () async {
              if (await canLaunch(value)) {
                await launch(value);
              } else {
                Get.snackbar(
                  'Error',
                  'There was an error opening the link',
                );
              }
            }, 
            child: Text(
              value,
              style: const TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
                decorationColor: Colors.blue,
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
