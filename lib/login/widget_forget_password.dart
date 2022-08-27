import 'package:flutter/material.dart';

class Forgetpassword extends StatefulWidget {
  const Forgetpassword({Key? key}) : super(key: key);

  @override
  State<Forgetpassword> createState() => _ForgetpasswordState();
}

var color = Colors.transparent;

class _ForgetpasswordState extends State<Forgetpassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Stack(
        children: [
          Center(
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
                          "images/key.png",
                          filterQuality: FilterQuality.high,
                          width: 32,
                        ),
                        const SizedBox(width: 8),
                        const Text("ลืมรหัสผ่าน :",
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
                          labelText: 'เบอร์โทรศัพท์',
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: const Icon(
                            Icons.phone,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed("/new_forget_password");
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
