import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EditIamDATA extends StatefulWidget {
  const EditIamDATA({Key? key}) : super(key: key);

  @override
  State<EditIamDATA> createState() => _EditIamDATAState();
}

var color = Colors.transparent;

class _EditIamDATAState extends State<EditIamDATA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff3f3f3),
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text("แก้ไขข้อมูลส่วนตัว", style: TextStyle(fontSize: 18)),
        leading: GestureDetector(
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 20,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            children: [
              Theme(
                data:
                    ThemeData(primarySwatch: Colors.cyan, fontFamily: "Prompt"),
                child: TextFormField(
                  initialValue: 'พิเชฐศักดิ์ ดุเหว่า',
                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
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
                data:
                    ThemeData(primarySwatch: Colors.cyan, fontFamily: "Prompt"),
                child: TextFormField(
                  initialValue: '0932430369',
                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(90),
                    ),
                    labelText: 'เบอร์โทรศัพท์',
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: const Icon(
                      Icons.phone,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Theme(
                data: ThemeData(
                  primarySwatch: Colors.cyan,
                  fontFamily: "Prompt",
                ),
                child: TextFormField(
                  initialValue: '25',
                  decoration: InputDecoration(
                      isDense: true,
                      contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(90),
                      ),
                      labelText: 'อายุ (ปี)',
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: const Icon(Icons.family_restroom, size: 20)),
                ),
              ),
              const SizedBox(height: 10),
              Theme(
                data:
                    ThemeData(primarySwatch: Colors.cyan, fontFamily: "Prompt"),
                child: TextFormField(
                  initialValue: '70',
                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
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
                data:
                    ThemeData(primarySwatch: Colors.cyan, fontFamily: "Prompt"),
                child: TextFormField(
                  initialValue: '170',
                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
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
              Theme(
                data:
                    ThemeData(primarySwatch: Colors.cyan, fontFamily: "Prompt"),
                child: TextFormField(
                  initialValue: 'ชาย',
                  decoration: InputDecoration(
                      isDense: true,
                      contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(90),
                      ),
                      labelText: 'เพศ',
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: const Icon(Icons.female, size: 23)),
                ),
              ),
              const SizedBox(height: 10),
              Theme(
                data:
                    ThemeData(primarySwatch: Colors.cyan, fontFamily: "Prompt"),
                child: TextFormField(
                  initialValue: 'โรคหอบหืด , โรคภูมิแพ้',
                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
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
              const SizedBox(height: 40),
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
                    child: Text("บันทึกข้อมูล",
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
    );
  }
}
