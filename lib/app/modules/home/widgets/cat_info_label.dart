import 'package:flutter/widgets.dart';

import '../../../utils/utils.dart';

class CatInfoLabel extends StatelessWidget {
  const CatInfoLabel({
    super.key,
    required this.title,
    required this.value,
  });

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '$title: ',
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Palette.black),
          ),
          TextSpan(
            text: value,
            style: const TextStyle(color: Palette.black),
          ),
        ],
      ),
    );
  }
}
