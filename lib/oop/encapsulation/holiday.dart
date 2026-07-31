class Holiday {
  String _name;
  int _day;
  String _month;

  Holiday(this._name, this._day, this._month);
  String get name=>_name;
  String get month=>_month;
  int    get  day=>_day;

  static bool   inSameMonth(Holiday holiday, Holiday holiday2) {
    if (holiday._month == holiday2._month) {
      return true;
    } else {
      return false;
    }
  }

  static double avgDate(List<Holiday> holidayArr) {
    int sum = 0;
    for (int i = 0; i < holidayArr.length; i++) {
      sum += holidayArr[i]._day;
    }
    return sum / holidayArr.length;
  }
}

void main() {
  Holiday holiday1 = Holiday("Independence Day", 4, "July");
  Holiday holiday2 = Holiday("Independence Day", 4, "July");
  Holiday holiday3 = Holiday("Independence Day", 5, "march");
  print(
      "check are in same month? :${Holiday.inSameMonth(holiday1, holiday2)} ");
  List<Holiday> holidayArr = [holiday1, holiday2, holiday3];
  print("average of the day: ${Holiday.avgDate(holidayArr)}");
  print("the holiday name: ${holiday3.name}");
//===== testing example ==========
//check are in same month? :true
// average of the day: 4.333333333333333
//the holiday name: Independence Day
}
