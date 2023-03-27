import 'package:flutter/material.dart';
import 'package:test_app/models.dart';

class PrescriptionProvider extends ChangeNotifier {
  // sample hospital details
  Hospital hospital =
      Hospital('Nephron Hospital', 'Budh Bazaar Moradabad', '99999 99999');

  // sample doctor details
  Doctor doctor = Doctor('Dr. Random', 'Nephrologist', [
    Timings('Mon', '10:00 AM', '11:00 AM'),
    Timings('Tue', '10:00 AM', '11:00 AM'),
    Timings('Wed', '10:00 AM', '11:00 AM'),
    Timings('Thu', '10:00 AM', '11:00 AM'),
  ]);

  // sample patient details
  Patient patient = Patient('Sarthak', 20, Gender.male);

  // sample complaints
  List<Complaint> complaints = [
    Complaint('Headache', 2, DurationUnit.days),
    Complaint('Fever', 3, DurationUnit.days),
    Complaint('Nausea', 1, DurationUnit.days),
  ];

  // sample advice
  String advice =
      'Take this medicine for 3 days.\n If you feel better, continue taking it for 2 more days.';

  String getAdvice() {
    String adviceString = '';
    List<String> adviceList = advice.split('\n');
    for (int i = 0; i < adviceList.length; i++) {
      adviceString += '• ${adviceList[i]}\n';
    }
    return adviceString;
  }
}
