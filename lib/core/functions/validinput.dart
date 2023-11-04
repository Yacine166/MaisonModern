import 'package:get/get.dart';

validinput(String val, int min, int max, String type) {
  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "Not Valid Email ";
    }
  }
  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return "Not Valid Username  ";
    }
  }
  if (type == "phonenumber") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "In Valid Phone Number ";
    }
  }
  if (val.isEmpty) {
    return "Can't Be Empty";
  }
  if (val.length < min) {
    return "Can't Be Less Then $min";
  }
  if (val.length > max) {
    return "Can't Be Less Then $max";
  }
}
