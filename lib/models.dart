enum DurationUnit { days, weeks, months, years }

enum Gender { male, female }

enum QuantityUnit {
  mg,
  ml,
  gm,
  tablet,
  capsule,
  drops,
  sachet,
  teaspoon,
  puff,
  units
}

class Medicine {
  String name;
  int quantity;
  QuantityUnit quantityUnit;
  String when;
  String frequency;
  int duration;
  DurationUnit durationUnit;
  Medicine(
      {required this.name,
      required this.quantity,
      required this.quantityUnit,
      required this.when,
      required this.frequency,
      required this.duration,
      required this.durationUnit});

  // getQuantityUnitString() returns the string representation of the quantity unit
  static String getQuantityUnitString(QuantityUnit quantityUnit) {
    String quantityUnitString;

    switch (quantityUnit) {
      case QuantityUnit.mg:
        quantityUnitString = 'mg';
        break;
      case QuantityUnit.ml:
        quantityUnitString = 'ml';
        break;
      case QuantityUnit.gm:
        quantityUnitString = 'gm';
        break;
      case QuantityUnit.tablet:
        quantityUnitString = 'tablet';
        break;
      case QuantityUnit.capsule:
        quantityUnitString = 'capsule';
        break;
      case QuantityUnit.drops:
        quantityUnitString = 'drops';
        break;
      case QuantityUnit.sachet:
        quantityUnitString = 'sachet';
        break;
      case QuantityUnit.teaspoon:
        quantityUnitString = 'teaspoon';
        break;
      case QuantityUnit.puff:
        quantityUnitString = 'puff';
        break;
      default:
        quantityUnitString = 'units';
    }
    return quantityUnitString;
  }

  String getQuantityString() {
    return '$quantity ${getQuantityUnitString(quantityUnit)}';
  }

  // getListofQuantityUnits() returns a list of strings of all the quantity units
  static List<QuantityUnit> getListofQuantityUnits() {
    List<QuantityUnit> quantityUnits = [];
    for (QuantityUnit quantityUnit in QuantityUnit.values) {
      quantityUnits.add(quantityUnit);
    }
    return quantityUnits;
  }

  static String getDurationString(DurationUnit durationUnit) {
    String durationString;
    switch (durationUnit) {
      case DurationUnit.days:
        durationString = 'day(s)';
        break;
      case DurationUnit.weeks:
        durationString = 'week(s)';
        break;
      case DurationUnit.months:
        durationString = 'month(s)';
        break;
      case DurationUnit.years:
        durationString = 'year(s)';
        break;
      default:
        durationString = 'day(s)';
    }
    return durationString;
  }
}

class Complaint {
  String name;
  int since;
  DurationUnit unit;
  Complaint(this.name, this.since, this.unit);
}

class Hospital {
  String name;
  String address;
  String phone;
  Hospital(this.name, this.address, this.phone);
}

class Patient {
  String name;
  int age;
  Gender gender;

  Patient(this.name, this.age, this.gender);

  // generate a gender string from the enum

  String getGender() {
    String genderString;
    switch (gender) {
      case Gender.male:
        genderString = 'Male';
        break;
      case Gender.female:
        genderString = 'Female';
        break;
      default:
        genderString = 'Male';
    }
    return genderString;
  }
}

class Doctor {
  String name;
  String specialization;
  List<Timings> timings;
  Doctor(this.name, this.specialization, this.timings);

  String getTimingsString() {
    Map<String, String> timingsMap = {};
    for (int i = 0; i < timings.length; i++) {
      String time = '${timings[i].startTime} - ${timings[i].endTime}';

      if (timingsMap[time] != null) {
        timingsMap[time] = '${timingsMap[time]}, ${timings[i].day}';
      } else {
        timingsMap[time] = timings[i].day;
      }
    }
    String timingsString = '';
    timingsMap.forEach((key, value) {
      timingsString += '$value: $key\n';
    });
    return timingsString;
  }
}

// create a timings class for the doctor

class Timings {
  String day;
  String startTime;
  String endTime;

  Timings(this.day, this.startTime, this.endTime);
}
