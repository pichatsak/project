import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class Buttondropdown extends StatefulWidget {
  const Buttondropdown({Key? key}) : super(key: key);

  @override
  State<Buttondropdown> createState() => _ButtondropdownState();
}

class _ButtondropdownState extends State<Buttondropdown> {
  final List<String> items = [
    'ราคาต่ำสุด',
    'ราคาสูงสุด',
  ];

  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DropdownButtonHideUnderline(
          child: DropdownButton2(
            isExpanded: true,
            hint: Row(
              children: const [
                Expanded(
                  child: Text(
                    'เรียงตาม',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w100,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            items: items
                .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w100,
                          color: Colors.black,
                        ),
                        overflow: TextOverflow.ellipsis,
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
            buttonHeight: 60,
            buttonWidth: double.infinity,
            buttonPadding: const EdgeInsets.only(left: 14, right: 14),
            buttonDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(90),
              border: Border.all(
                color: Colors.black26,
              ),
              color: Colors.white12,
            ),
            itemHeight: 40,
            itemPadding: const EdgeInsets.only(left: 14, right: 14),
            dropdownMaxHeight: 200,
            dropdownWidth: double.maxFinite,
            dropdownPadding: null,
            dropdownDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.green,
            ),
            dropdownElevation: 8,
            scrollbarRadius: const Radius.circular(20),
            scrollbarThickness: 6,
            scrollbarAlwaysShow: true,
            offset: const Offset(0, 0),
          ),
        ),
      ),
    );
  }
}
