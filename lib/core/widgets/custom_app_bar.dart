import 'package:flutter/material.dart';

import '../../utils/app_text_styles.dart';
import 'notification_widget.dart';

AppBar buildAppBar(
  context, {
  required String title,
  required bool putNotificationIcon,
}) {
  return AppBar(
    actions: putNotificationIcon
        ? [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: NotificationWidget(),
            ),
          ]
        : null,
    backgroundColor: Colors.white,
    leading: GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: const Icon(
        Icons.arrow_back_ios_new,
      ),
    ),
    centerTitle: true,
    title: Text(
      title,
      textAlign: TextAlign.center,
      style: AppTextStyles.bold19,
    ),
  );
}
