class TimeFormatter {
  static String a(DateTime dateTime) {
    DateTime now = DateTime.now();
    String nowYear = now.year.toString().padLeft(4, '0');
    String nowMonth = now.month.toString().padLeft(2, '0');
    String nowDay = now.day.toString().padLeft(2, '0');
    String year = dateTime.year.toString().padLeft(4, '0');
    String month = dateTime.month.toString().padLeft(2, '0');
    String day = dateTime.day.toString().padLeft(2, '0');
    String hour = dateTime.hour.toString().padLeft(2, '0');
    String minute = dateTime.minute.toString().padLeft(2, '0');
    if (day == nowDay && month == nowMonth && day == nowDay) {
      return '$hour:$minute';
    }
    if (year == nowYear) {
      return '$month-$day';
    }
    return '$year-$month-$day';
  }
}
