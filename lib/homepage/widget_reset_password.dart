import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

var color = Colors.transparent;
bool _isObscure2 = true;
bool _isObscure1 = true;
bool _isObscure3 = true;

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff3f3f3),
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text("เปลี่ยนรหัสผ่าน", style: TextStyle(fontSize: 18)),
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
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Theme(
                data: ThemeData(primarySwatch: Colors.cyan, fontFamily: "Prompt"),
                child: TextFormField(
                  obscureText: _isObscure3,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(90),
                    ),
                    isDense: true,
                    contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    prefixIcon: const Icon(
                      Icons.key_off,
                    ),
                    labelText: 'รหัสผ่านเก่า',
                    filled: true,
                    fillColor: Colors.white,
                    suffixIcon: IconButton(
                      highlightColor: color,
                      splashColor: color,
                      hoverColor: color,
                      icon: Icon(
                        _isObscure3 ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _isObscure3 = !_isObscure3;
                        });
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Theme(
                data: ThemeData(primarySwatch: Colors.cyan, fontFamily: "Prompt"),
                child: TextFormField(
                  obscureText: _isObscure2,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(90),
                    ),
                    isDense: true,
                    contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    prefixIcon: const Icon(
                      Icons.key,
                    ),
                    labelText: 'รหัสผ่านใหม่',
                    filled: true,
                    fillColor: Colors.white,
                    suffixIcon: IconButton(
                      highlightColor: color,
                      splashColor: color,
                      hoverColor: color,
                      icon: Icon(
                        _isObscure2 ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _isObscure2 = !_isObscure2;
                        });
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Theme(
                data: ThemeData(primarySwatch: Colors.cyan, fontFamily: "Prompt"),
                child: TextFormField(
                  obscureText: _isObscure1,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(90),
                    ),
                    isDense: true,
                    contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    prefixIcon: const Icon(
                      Icons.key,
                    ),
                    labelText: 'ยืนยันรหัสผ่านใหม่',
                    filled: true,
                    fillColor: Colors.white,
                    suffixIcon: IconButton(
                      highlightColor: color,
                      splashColor: color,
                      hoverColor: color,
                      icon: Icon(
                        _isObscure1 ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _isObscure1 = !_isObscure1;
                        });
                      },
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
                    child: Text("เปลี่ยนรหัสผ่าน",
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
