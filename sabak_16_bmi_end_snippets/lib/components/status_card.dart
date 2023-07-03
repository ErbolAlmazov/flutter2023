import 'package:flutter/material.dart';
import 'package:sabak_16_bmi_end_snippets/app_texts.dart';
import 'package:sabak_16_bmi_end_snippets/constants/app.colors.dart';

class StatusCard extends StatelessWidget {
  const StatusCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Card(
      color: AppColors.cardColor,
      child: Column(
        children: const [Icon(Icons.male), AppTexts.male],
      ),
    ));
  }
}
