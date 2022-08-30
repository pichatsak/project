import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:get_storage/get_storage.dart';
import 'package:intl/intl.dart';
import 'package:location/location.dart';
import 'package:project/registor/map_choose.dart';
import 'package:project/widget/toast_tool.dart';
import 'package:project/widget/valid_form.dart';

class DataAPP extends StatefulWidget {
  const DataAPP({Key? key}) : super(key: key);

  @override
  State<DataAPP> createState() => _DataAPPState();
}

var color = Colors.transparent;

class _DataAPPState extends State<DataAPP> {
  final df = DateFormat('dd-MM-yyyy');
  final formKey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController(text: "นิติพล พงษ์คำ");
  TextEditingController age = TextEditingController(text: "26");
  TextEditingController weight = TextEditingController(text: "55");
  TextEditingController high = TextEditingController(text: "172");
  TextEditingController cdUser = TextEditingController(text: "ไม่มี");
  TextEditingController numberHN = TextEditingController(text: "0123456789");
  TextEditingController dateOneCl = TextEditingController();
  TextEditingController dateTwoCl = TextEditingController();
  TextEditingController dateThreeCl = TextEditingController();
  TextEditingController mapCl = TextEditingController();

  final box = GetStorage();
  late DateTime dateOne;
  late DateTime dateTwo;
  late DateTime dateThree;
  final List<String> items = [
    'ชาย',
    'หญิง',
  ];
  String? selectedValue;
  final List<String> items2 = [
    'หัวเข่าข้างซ้าย',
    'หัวเข่าข้างขวา',
    'หัวเข่าทั้งสองข้าง',
  ];
  String? selectedValue2;

  Location location = Location();

  late PermissionStatus _permissionGranted;

  Future<void> _navigateAndDisplaySelection(BuildContext context) async {
    // Navigator.push returns a Future that completes after calling
    // Navigator.pop on the Selection Screen.
    final result = await Navigator.push(
      context,
      // Create the SelectionScreen in the next step.
      MaterialPageRoute(builder: (context) => MapChoosePin()),
    );
    if (!mounted) return;
    if (result == "yes") {
      mapCl.text = "${box.read("tempLat")},${box.read("tempLong")}";
      setState(() {});
    }
  }

  void goChooseMap() async {
    bool getPer = await checkPemis();
    if (getPer) {
      // ignore: use_build_context_synchronously
      // Navigator.of(context).pushNamed("/map_choose_pin");
      // ignore: use_build_context_synchronously
      _navigateAndDisplaySelection(context);
    } else {
      showToast("กรุณาอนุญาตสิทธิ์การใช้งาน GPS");
    }
  }

  void goToRegis() {
    if (formKey.currentState!.validate()) {
    } else {}
  }

  void chooseDate1() {
    DatePicker.showDatePicker(context,
        showTitleActions: true, onChanged: (date) {}, onConfirm: (date) {
      setState(() {
        dateOne = date;
        dateOneCl.text = df.format(dateOne);
      });
    }, currentTime: DateTime.now(), locale: LocaleType.th);
  }

  void chooseDate2() {
    DatePicker.showDatePicker(context,
        showTitleActions: true, onChanged: (date) {}, onConfirm: (date) {
      setState(() {
        dateTwo = date;
        dateTwoCl.text = df.format(dateTwo);
      });
    }, currentTime: DateTime.now(), locale: LocaleType.th);
  }

  void chooseDate3() {
    DatePicker.showDatePicker(context,
        showTitleActions: true, onChanged: (date) {}, onConfirm: (date) {
      setState(() {
        dateThree = date;
        dateThreeCl.text = df.format(dateThree);
      });
    }, currentTime: DateTime.now(), locale: LocaleType.th);
  }

  Future<bool> checkPemis() async {
    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return false;
      } else {
        return true;
      }
    } else {
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Form(
              key: formKey,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40, top: 60),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "images/logo.png",
                        width: 100,
                        filterQuality: FilterQuality.high,
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "ติดตามคนไข้หลัง ",
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: "Prompt-Medium",
                                color: Colors.white),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                              color: Color.fromARGB(
                                  255, 1, 72, 82), // Text colour here
                              width: 2.0, // Underline width
                            ))),
                            child: const Text(
                              "ผ่าตัดเข่า",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: "Prompt-ExtraBold",
                                  color: Color.fromARGB(255, 1, 72, 82)),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 40),
                      Row(
                        children: [
                          Image.asset(
                            "images/data.png",
                            filterQuality: FilterQuality.high,
                            width: 32,
                          ),
                          const SizedBox(width: 8),
                          const Text("ข้อมูลผู้ป่วย :",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: "Prompt-Medium",
                                  color: Colors.black54)),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Theme(
                        data: ThemeData(
                            primarySwatch: Colors.cyan, fontFamily: "Prompt"),
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          controller: name,
                          decoration: ValidForm().textInputDecoration(
                              Icons.account_circle, 'ชื่อ-นามสกุล (ผู้ป่วย)'),
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "กรุณากรอกชื่อ-นามสกุล";
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(height: 10),
                      Theme(
                        data: ThemeData(
                            primarySwatch: Colors.cyan, fontFamily: "Prompt"),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          controller: age,
                          decoration: ValidForm().textInputDecoration(
                              Icons.family_restroom, "อายุ (ปี)"),
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "กรุณากรอกอายุ";
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(height: 10),
                      Theme(
                        data: ThemeData(
                            primarySwatch: Colors.cyan, fontFamily: "Prompt"),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          controller: weight,
                          decoration: ValidForm().textInputDecoration(
                              Icons.monitor_weight, "น้ำหนัก (กิโลกรัม)"),
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "กรุณากรอกน้ำหนัก";
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(height: 10),
                      Theme(
                        data: ThemeData(
                            primarySwatch: Colors.cyan, fontFamily: "Prompt"),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          controller: high,
                          decoration: ValidForm().textInputDecoration(
                              Icons.escalator_warning, "ส่วนสูง (เซนติเมตร)"),
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "ส่วนสูง (เซนติเมตร)";
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(90)),
                        height: 60,
                        width: 500,
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2(
                            isExpanded: true,
                            hint: Row(
                              children: const [
                                Icon(
                                  Icons.female,
                                  size: 23,
                                  color: Colors.black54,
                                ),
                                SizedBox(width: 10.5),
                                Expanded(
                                  child: Text(
                                    'เลือกเพศ',
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
                                          item == "ชาย"
                                              ? const Icon(
                                                  Icons.man,
                                                  size: 23,
                                                  color: Colors.black45,
                                                )
                                              : const Icon(
                                                  Icons.woman,
                                                  size: 23,
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
                            buttonPadding:
                                const EdgeInsets.only(left: 14, right: 14),
                            buttonDecoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(90),
                              // border: Border.all(
                              //   color: Colors.black26,
                              // ),
                              color: Colors.white12,
                            ),
                            itemHeight: 40,
                            itemPadding:
                                const EdgeInsets.only(left: 14, right: 14),
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
                      ),
                      const SizedBox(height: 10),
                      Theme(
                        data: ThemeData(
                            primarySwatch: Colors.cyan, fontFamily: "Prompt"),
                        child: TextFormField(
                          controller: cdUser,
                          decoration: ValidForm().textInputDecoration(
                              Icons.heart_broken, "โรคประจำตัว"),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Theme(
                        data: ThemeData(
                            primarySwatch: Colors.cyan, fontFamily: "Prompt"),
                        child: TextFormField(
                          controller: numberHN,
                          decoration: ValidForm().textInputDecoration(
                              Icons.contact_page, "รหัส HN ของผู้เข้ารักษา"),
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "กรุณากรอกรหัส HN";
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        onTap: () {
                          chooseDate1();
                        },
                        readOnly: true,
                        controller: dateOneCl,
                        decoration: ValidForm().textInputDecoration(
                            Icons.calendar_month, "วันที่เข้านอน โรงพยาบาล"),
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "กรุณาเลือกวันที่เข้านอน โรงพยาบาล";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        onTap: () {
                          chooseDate2();
                        },
                        readOnly: true,
                        controller: dateTwoCl,
                        decoration: ValidForm().textInputDecoration(
                            Icons.calendar_month, "วันที่ออกจาก โรงพยาบาล"),
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "กรุณาเลือกวันที่ออกจาก โรงพยาบาล";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        onTap: () {
                          chooseDate3();
                        },
                        readOnly: true,
                        controller: dateThreeCl,
                        decoration: ValidForm().textInputDecoration(
                            Icons.calendar_today, "วันที่ผ่าตัด"),
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "กรุณาเลือกวันที่ผ่าตัด";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(90)),
                        height: 60,
                        width: 500,
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
                            items: items2
                                .map((item) => DropdownMenuItem<String>(
                                      value: item,
                                      child: Row(
                                        children: [
                                          item == "หัวเข่าข้างซ้าย"
                                              ? const Icon(
                                                  Icons
                                                      .airline_seat_legroom_extra,
                                                  size: 21,
                                                  color: Colors.black45,
                                                )
                                              : const Icon(
                                                  Icons
                                                      .airline_seat_legroom_extra,
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
                            value: selectedValue2,
                            onChanged: (value) {
                              setState(() {
                                selectedValue2 = value as String;
                              });
                            },
                            icon: const Icon(
                              Icons.keyboard_arrow_down,
                            ),
                            iconEnabledColor: Colors.black,
                            iconDisabledColor: Colors.black,
                            buttonHeight: 50,
                            buttonWidth: double.maxFinite,
                            buttonPadding:
                                const EdgeInsets.only(left: 14, right: 14),
                            buttonDecoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(90),
                              // border: Border.all(
                              //   color: Colors.black26,
                              // ),
                              color: Colors.white12,
                            ),
                            itemHeight: 40,
                            itemPadding:
                                const EdgeInsets.only(left: 14, right: 14),
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
                      ),
                      const SizedBox(height: 30),
                      Row(
                        children: [
                          Image.asset(
                            "images/map.png",
                            filterQuality: FilterQuality.high,
                            width: 32,
                          ),
                          const SizedBox(width: 8),
                          const Text("แผนที่บ้าน :",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: "Prompt-Medium",
                                  color: Colors.black54)),
                        ],
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        onTap: () {
                          goChooseMap();
                        },
                        readOnly: true,
                        controller: mapCl,
                        decoration: ValidForm()
                            .textInputDecoration(Icons.pin_drop, "ตำแหน่งบ้าน"),
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "กรุณาเลือกตำแหน่งบ้าน";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 50),
                      InkWell(
                        onTap: () {
                          goToRegis();
                        },
                        highlightColor: color,
                        splashColor: color,
                        hoverColor: color,
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 1, 72, 82),
                            borderRadius: BorderRadius.circular(90),
                          ),
                          height: 60,
                          child: const Center(
                            child: Text("ลงทะเบียน",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                    fontFamily: "Prompt-Medium")),
                          ),
                        ),
                      ),
                      const SizedBox(height: 50),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 60),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back_ios_outlined,
                  size: 20,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
