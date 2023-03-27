import 'package:flutter/material.dart';
import 'package:test_app/models.dart';
import 'package:test_app/prescription_screen.dart';
import 'package:test_app/preview%20widgets/medicines_table_widgets.dart';

Column medicinesColumn(List<Medicine> medicines) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(height: 10),
      const Text('Medicines', style: PreviewFontStyles.heading1),
      const SizedBox(height: 10),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          dataRowHeight: 16,
          headingRowHeight: 16,
          dividerThickness: 0,
          columns: MedicinesTableWidgets.columns,
          rows: medicines
              .map((medicine) => DataRow(cells: [
                    datacell(medicine.name),
                    datacell(
                      medicine.getQuantityString(),
                    ),
                    datacell(medicine.when),
                    datacell(medicine.frequency),
                    datacell(Medicine.getDurationString(medicine.durationUnit)),
                  ]))
              .toList(),
        ),
      ),
    ],
  );
}

DataCell datacell(String text) {
  return DataCell(Text(
    text,
    style: const TextStyle(fontSize: 12),
  ));
}
