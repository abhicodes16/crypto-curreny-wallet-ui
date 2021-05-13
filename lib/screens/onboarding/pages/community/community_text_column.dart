import 'package:flutter/material.dart';

import '../../widgets/text_column.dart';

class CommunityTextColumn extends StatelessWidget {
  const CommunityTextColumn();

  @override
  Widget build(BuildContext context) {
    return const TextColumn(
      title: 'Community',
      text:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
    );
  }
}
