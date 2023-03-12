import 'package:currency_converter/utils/theme2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

changeTheme(controller) {
  return IconButton(
    onPressed: () {
      controller.isConvert.value = false;
      Get.changeTheme(
        (controller.isLight.value) ? darkTheme() : lightTheme(),
      );
      controller.isLightChange();
    },
    icon: Icon(
      (controller.isLight.value) ? Icons.dark_mode : Icons.light_mode,
    ),
  );
}
