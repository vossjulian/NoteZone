import 'package:intl/intl.dart';

class DateTimeFormatter {
  static String convert(DateTime datetime) {
    return DateFormat('dd.MM.yyyy').format(datetime);
  }

  static String convertTime(DateTime dateTime) {
    return DateFormat('HH:mm').format(dateTime);
  }
}
