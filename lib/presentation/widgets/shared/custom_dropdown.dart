import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multi_dropdown/multi_dropdown.dart';

final semana = [
  DropdownItem(label: 'Lunes', value: 'lunes'),
  DropdownItem(label: 'martes', value: 'martes'),
  DropdownItem(label: 'miercoles', value: 'miercoles'),
  DropdownItem(label: 'jueves', value: 'jueves'),
  DropdownItem(label: 'viernes', value: 'viernes'),
];

class CustomDropDown extends StatelessWidget {
  const CustomDropDown({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = MultiSelectController<String>();

    return MultiDropdown(
      singleSelect: true,
      items: semana,
      controller: controller,
      enabled: true,
      chipDecoration: const ChipDecoration(
        backgroundColor: Colors.yellow,
        wrap: true,
        runSpacing: 2,
        spacing: 10,
      ),
      fieldDecoration: FieldDecoration(
        hintText: 'Dias Semana',
        hintStyle: const TextStyle(color: Colors.black87),
        showClearIcon: false,
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please select a country';
        }
        return null;
      },
      onSelectionChange: (selectedItems) {
        debugPrint("OnSelectionChange: $selectedItems");
      },
    );
  }
}

