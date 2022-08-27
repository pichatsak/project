import 'package:flutter/material.dart';
import 'package:project/registor/widget_dropdown.dart';
import 'package:project/registor/widget_dropdown2.dart';

class DataAPP extends StatefulWidget {
  const DataAPP({Key? key}) : super(key: key);

  @override
  State<DataAPP> createState() => _DataAPPState();
}

var color = Colors.transparent;

class _DataAPPState extends State<DataAPP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Center(
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
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding:
                              const EdgeInsets.fromLTRB(10, 10, 10, 10),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(90),
                          ),
                          labelText: 'ชื่อ-นามสกุล (ผู้ป่วย)',
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: const Icon(
                            Icons.account_circle,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Theme(
                      data: ThemeData(
                          primarySwatch: Colors.cyan, fontFamily: "Prompt"),
                      child: TextFormField(
                        decoration: InputDecoration(
                            isDense: true,
                            contentPadding:
                                const EdgeInsets.fromLTRB(10, 10, 10, 10),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(90),
                            ),
                            labelText: 'อายุ (ปี)',
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon: const Icon(
                              Icons.family_restroom,
                              size: 20,
                            )),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Theme(
                      data: ThemeData(
                          primarySwatch: Colors.cyan, fontFamily: "Prompt"),
                      child: TextFormField(
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding:
                              const EdgeInsets.fromLTRB(10, 10, 10, 10),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(90),
                          ),
                          labelText: 'น้ำหนัก (กิโลกรัม)',
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: const Icon(
                            Icons.monitor_weight,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Theme(
                      data: ThemeData(
                          primarySwatch: Colors.cyan, fontFamily: "Prompt"),
                      child: TextFormField(
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding:
                              const EdgeInsets.fromLTRB(10, 10, 10, 10),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(90),
                          ),
                          labelText: 'ส่วนสูง (เซนติเมตร)',
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: const Icon(
                            Icons.escalator_warning,
                            size: 21,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Theme(
                    //   data: ThemeData(
                    //       primarySwatch: Colors.cyan, fontFamily: "Prompt"),
                    //   child: TextFormField(
                    //     decoration: InputDecoration(
                    //         isDense: true,
                    //         contentPadding:
                    //             const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    //         border: UnderlineInputBorder(
                    //           borderSide: BorderSide.none,
                    //           borderRadius: BorderRadius.circular(90),
                    //         ),
                    //         labelText: 'เพศ',
                    //         filled: true,
                    //         fillColor: Colors.white,
                    //         prefixIcon: const Icon(
                    //           Icons.female,size: 23,
                    //         )),
                    //   ),
                    // ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(90)),
                      height: 60,
                      width: 500,
                      child: dropdown(setState),
                    ),
                    const SizedBox(height: 10),
                    Theme(
                      data: ThemeData(
                          primarySwatch: Colors.cyan, fontFamily: "Prompt"),
                      child: TextFormField(
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding:
                              const EdgeInsets.fromLTRB(10, 10, 10, 10),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(90),
                          ),
                          labelText: 'โรคประจำตัว',
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: const Icon(
                            Icons.heart_broken,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Theme(
                      data: ThemeData(
                          primarySwatch: Colors.cyan, fontFamily: "Prompt"),
                      child: TextFormField(
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding:
                              const EdgeInsets.fromLTRB(10, 10, 10, 10),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(90),
                          ),
                          labelText: 'รหัส HN ของผู้เข้ารักษา',
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: const Icon(
                            Icons.contact_page,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Theme(
                      data: ThemeData(
                          primarySwatch: Colors.cyan, fontFamily: "Prompt"),
                      child: TextFormField(
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding:
                              const EdgeInsets.fromLTRB(10, 10, 10, 10),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(90),
                          ),
                          labelText: 'วันที่เข้านอน โรงพยาบาล',
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: const Icon(
                            Icons.calendar_month,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Theme(
                      data: ThemeData(
                          primarySwatch: Colors.cyan, fontFamily: "Prompt"),
                      child: TextFormField(
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding:
                              const EdgeInsets.fromLTRB(10, 10, 10, 10),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(90),
                          ),
                          labelText: 'วันที่ออกจาก โรงพยาบาล',
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: const Icon(
                            Icons.calendar_month,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Theme(
                      data: ThemeData(
                          primarySwatch: Colors.cyan, fontFamily: "Prompt"),
                      child: TextFormField(
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding:
                              const EdgeInsets.fromLTRB(10, 10, 10, 10),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(90),
                          ),
                          labelText: 'วันที่ผ่าตัด',
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: const Icon(
                            Icons.calendar_today,
                            size: 16,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(90)),
                      height: 60,
                      width: 500,
                      child: dropdown2(setState),
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
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                          child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xff018592),
                          borderRadius: BorderRadius.circular(90),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Icon(
                            Icons.add,
                            size: 32,
                            color: Colors.white,
                          ),
                        ),
                      )),
                    ),
                    const SizedBox(height: 50),
                    InkWell(
                      onTap: () {},
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
