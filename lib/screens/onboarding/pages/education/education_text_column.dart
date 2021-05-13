import 'package:flutter/material.dart';

import '../../widgets/text_column.dart';

class EducationTextColumn extends StatelessWidget {
  const EducationTextColumn();

  @override
  Widget build(BuildContext context) {
    return const TextColumn(
      title: 'Keep learning',
      text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
    );
  }
}
