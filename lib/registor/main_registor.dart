import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:project/widget/toast_tool.dart';
import 'package:project/widget/valid_form.dart';
import 'package:toast/toast.dart';
import 'package:validators/validators.dart';

class RegistorAPP extends StatefulWidget {
  const RegistorAPP({Key? key}) : super(key: key);

  @override
  State<RegistorAPP> createState() => _RegistorAPPState();
}

bool _isObscure2 = true;
bool _isObscure1 = true;
var color = Colors.transparent;

class _RegistorAPPState extends State<RegistorAPP> {
  final formKey = GlobalKey<FormState>();
  TextEditingController phone = TextEditingController(text: "0864403511");
  TextEditingController pass = TextEditingController(text: "12345678");
  TextEditingController pass2 = TextEditingController(text: "12345678");
  // DB //
  CollectionReference users = FirebaseFirestore.instance.collection('users');

  final box = GetStorage();
  @override
  void initState() {
    super.initState();
  }

  void goCkkNext() {
    if (formKey.currentState!.validate()) {
      users
          .where("phone", isEqualTo: phone.text)
          .get()
          .then((QuerySnapshot querySnapshot) {
        if (querySnapshot.size == 0) {
          box.write("tempPhone", phone.text);
          box.write("tempPass", pass.text);
          Navigator.of(context).pushNamed("/data_registor");
        } else {
          showToast("เบอร์นี้เคยลงทะเบียนแล้ว");
        }
      });
    } else {
      if (kDebugMode) {
        print("no val");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    ToastContext().init(context);
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40, top: 40),
                  child: SingleChildScrollView(
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
                              "images/registor.png",
                              filterQuality: FilterQuality.high,
                              width: 32,
                            ),
                            const SizedBox(width: 8),
                            const Text("ลงทะเบียนผู้ใช้ :",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: "Prompt-Medium",
                                    color: Colors.black54)),
                          ],
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          controller: phone,
                          keyboardType: TextInputType.phone,
                          decoration: ValidForm().textInputDecoration(
                              Icons.phone, "เบอร์โทรศัพท์"),
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "กรุณากรอกเบอร์โทรศัพท์";
                            } else if (!isLength(val, 10, 10)) {
                              return "กรุณากรอกเบอร์โทรศัพท์ให้ถูกต้อง";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "กรุณากรอกรหัสผ่าน";
                            } else if (!isLength(val, 8)) {
                              return "กรุณากรอกรหัสผ่านขั้นต่ำ 8 ตัวอักษร";
                            }
                            return null;
                          },
                          obscureText: _isObscure2,
                          controller: pass,
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(90),
                            ),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(90),
                                borderSide: const BorderSide(
                                    color: Colors.red, width: 1)),
                            isDense: true,
                            prefixIcon: const Icon(
                              Icons.key,
                            ),
                            labelText: 'รหัสผ่าน',
                            filled: true,
                            fillColor: Colors.white,
                            suffixIcon: IconButton(
                              highlightColor: color,
                              splashColor: color,
                              hoverColor: color,
                              icon: Icon(
                                _isObscure2
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                              onPressed: () {
                                setState(() {
                                  _isObscure2 = !_isObscure2;
                                });
                              },
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "กรุณากรอกเบอร์โทรศัพท์";
                            } else if (!isLength(val, 8)) {
                              return "กรุณากรอกรหัสผ่านยืนยันขั้นต่ำ 8 ตัวอักษร";
                            } else if (val != pass2.text) {
                              return "รหัสผ่านไม่ตรงกัน";
                            }
                            return null;
                          },
                          controller: pass2,
                          obscureText: _isObscure1,
                          decoration: InputDecoration(
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(90),
                                borderSide: const BorderSide(
                                    color: Colors.red, width: 1)),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(90),
                            ),
                            isDense: true,
                            prefixIcon: const Icon(
                              Icons.key,
                            ),
                            labelText: 'ยืนยันรหัสผ่าน',
                            filled: true,
                            fillColor: Colors.white,
                            suffixIcon: IconButton(
                              highlightColor: color,
                              splashColor: color,
                              hoverColor: color,
                              icon: Icon(
                                _isObscure1
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                              onPressed: () {
                                setState(() {
                                  _isObscure1 = !_isObscure1;
                                });
                              },
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        InkWell(
                          onTap: () {
                            // Navigator.of(context).pushNamed("/data_registor");
                            goCkkNext();
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
                              child: Text("ถัดไป",
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white,
                                      fontFamily: "Prompt-Medium")),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
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
    );
  }
}
