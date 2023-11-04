import 'package:get/get.dart';

class MyTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {'1': "hello world", '2': "First Page"},
        'ar': {'1': 'Bonjour Niqa', '2': "الصفحة الاولى"}
      };
}
