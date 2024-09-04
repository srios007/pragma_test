import 'package:flutter/material.dart';

import '../../../models/models.dart';
import 'widgets.dart';

class CatInfo extends StatelessWidget {
  final Cat item;

  const CatInfo({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CatInfoLabel(title: 'Origin', value: item.origin!),
        CatInfoLabel(
          title: 'Intelligence',
          value: item.intelligence.toString(),
        ),
      ],
    );
  }
}
