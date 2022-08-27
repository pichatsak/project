import 'package:flutter/material.dart';

class LoginAPP extends StatefulWidget {
  const LoginAPP({Key? key}) : super(key: key);

  @override
  State<LoginAPP> createState() => _LoginAPPState();
}

bool _isObscure2 = true;
var color = Colors.transparent;

class _LoginAPPState extends State<LoginAPP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Center(
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
                        color:
                            Color.fromARGB(255, 1, 72, 82), // Text colour here
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
                Theme(
                  data: ThemeData(
                      primarySwatch: Colors.cyan, fontFamily: "Prompt"),
                  child: TextFormField(
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
                      primarySwatch: Colors.cyan, fontFamily: "Prompt"),
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
                      labelText: 'รหัสผ่าน',
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
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {  Navigator.of(context).pushNamed("/forget_password");},
                      highlightColor: color,
                      splashColor: color,
                      hoverColor: color,
                      child: const Text("ลืมรหัสผ่าน",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontFamily: "Prompt-Medium")),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed("/homepage");
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
                      child: Text("เข้าสู่ระบบ",
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              fontFamily: "Prompt-Medium")),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  children: <Widget>[
                    Flexible(
                      child: Container(
                        height: 1,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          shape: BoxShape.circle,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "หรือ",
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        height: 1,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed("/registor");
                  },
                  highlightColor: color,
                  splashColor: color,
                  hoverColor: color,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(255, 1, 72, 82)),
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(90),
                    ),
                    height: 60,
                    child: const Center(
                      child: Text("ลงทะเบียน",
                          style: TextStyle(
                              fontSize: 17,
                              color: Color.fromARGB(255, 1, 72, 82),
                              fontFamily: "Prompt-Medium")),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
