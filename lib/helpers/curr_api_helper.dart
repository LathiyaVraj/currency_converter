import 'package:dio/dio.dart';

import '../controllers/curr_controller.dart';
import '../models/curr.dart';

class CurrencyConvertAPI {
  CurrencyConvertAPI._();

  static final CurrencyConvertAPI currencyConvertAPI = CurrencyConvertAPI._();

  Future<Currency?> getData({required CurrencyController controller}) async {
    Dio dio = Dio();

    String url =
        "https://api.exchangerate.host/convert?from=${controller.fromCurrency}&to=${controller.toCurrency}&amount=${controller.amount}";

    Response res = await dio.get(url);

    if (res.statusCode == 200) {
      Currency currencyConvert = Currency.fromJSON(data: res.data);
      return currencyConvert;
    }
    return null;
  }
}
