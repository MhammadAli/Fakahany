import 'package:flutter/material.dart';

import '../../utils/app_text_styles.dart';
import 'notification_widget.dart';

AppBar buildAppBar(context) {
  return AppBar(
    actions: const [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: NotificationWidget(),
      ),
    ],
    leading: GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: const Icon(
        Icons.arrow_back_ios_new,
      ),
    ),
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    title: Text(
      'الأكثر مبيعًا',
      textAlign: TextAlign.center,
      style: AppTextStyles.bold19,
    ),
  );
}
