import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

final List<String> items = [
  'หัวเข่าข้างซ้าย',
  'หัวเข่าข้างขวา',
  'หัวเข่าทั้งสองข้าง',
];
String? selectedValue;

Widget dropdown2(setState) {
  return Center(
    child: DropdownButtonHideUnderline(
      child: DropdownButton2(
        isExpanded: true,
        hint: Row(
          children: const [
            Icon(
              Icons.airline_seat_legroom_extra,
              size: 21,
              color: Colors.black45,
            ),
            SizedBox(width: 10.5),
            Expanded(
              child: Text(
                'ประเภทเข่าที่ผ่า',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w100,
                  color: Colors.black54,
                ),
              ),
            ),
          ],
        ),
        items: items
            .map((item) => DropdownMenuItem<String>(
                  value: item,
                  child: Row(
                    children: [
                      item == "หัวเข่าข้างซ้าย"
                          ? const Icon(
                              Icons.airline_seat_legroom_extra,
                              size: 21,
                              color: Colors.black45,
                            )
                          : const Icon(
                              Icons.airline_seat_legroom_extra,
                              size: 21,
                              color: Colors.black45,
                            ),
                      const SizedBox(width: 11),
                      Text(
                        item,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w100,
                          color: Colors.black,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ))
            .toList(),
        value: selectedValue,
        onChanged: (value) {
          setState(() {
            selectedValue = value as String;
          });
        },
        icon: const Icon(
          Icons.keyboard_arrow_down,
        ),
        iconEnabledColor: Colors.black,
        iconDisabledColor: Colors.black,
        buttonHeight: 50,
        buttonWidth: double.maxFinite,
        buttonPadding: const EdgeInsets.only(left: 14, right: 14),
        buttonDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(90),
          // border: Border.all(
          //   color: Colors.black26,
          // ),
          color: Colors.white12,
        ),
        itemHeight: 40,
        itemPadding: const EdgeInsets.only(left: 14, right: 14),
        dropdownMaxHeight: 200,
        dropdownWidth: 200,
        dropdownPadding: null,
        dropdownDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        dropdownElevation: 8,
        scrollbarRadius: const Radius.circular(3),
        scrollbarThickness: 6,
        scrollbarAlwaysShow: true,
        offset: const Offset(20, 0),
      ),
    ),
  );
}
