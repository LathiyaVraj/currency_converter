import 'package:currency_converter/views/components/search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/curr_controller.dart';

currencySelectButton({
  required CurrencyController controller,
  required bool isFrom,
  required context,
}) {
  return Expanded(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          (isFrom) ? "FROM :" : "TO :",
          style: Theme.of(context).textTheme.titleMedium?.merge(
                const TextStyle(fontSize: 20),
              ),
        ),
        const SizedBox(height: 5),
        Row(
          children: [
            Expanded(
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.all(12),
                  textStyle: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.merge(const TextStyle(fontSize: 18)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  controller.isConvert.value = false;
                  controller.isPressed.value = false;
                  searchDialog(
                      controller: controller, context: context, isFrom: isFrom);
                },
                child: Obx(
                  () => Text(
                    (isFrom)
                        ? (controller.fromCurrency.value == "")
                            ? "CURRENCY"
                            : controller.fromCurrency.value
                        : (controller.toCurrency.value == "")
                            ? "CURRENCY"
                            : controller.toCurrency.value,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
