import 'package:flutter/material.dart';

class IamDATA extends StatefulWidget {
  const IamDATA({Key? key}) : super(key: key);

  @override
  State<IamDATA> createState() => _IamDATAState();
}

var color = Colors.transparent;

class _IamDATAState extends State<IamDATA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff3f3f3),
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text("ข้อมูลของฉัน", style: TextStyle(fontSize: 18)),
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
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  height: 71,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color(0xff008693),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 0,
                            blurRadius: 4,
                            color: const Color(0xFF000000).withOpacity(.2),
                            offset: const Offset(-1, 2))
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.account_circle,
                          color: Color(0xfff3f3f3),
                          size: 50,
                        ),
                        const SizedBox(width: 5),
                        Container(width: 1, color: Colors.white),
                        const SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "นาย พิเชฐศักดิ์ ดุเหว่า",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            Row(
                              children: const [
                                Icon(
                                  Icons.phone,
                                  color: Colors.white,
                                  size: 16,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  ": 0932430369",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 0,
                            blurRadius: 4,
                            color: const Color(0xFF000000).withOpacity(.2),
                            offset: const Offset(-1, 2))
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Text(
                              "ข้อมูล",
                              style: TextStyle(
                                  color: Color(0xff008693),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Container(height: 1, color: Colors.black12),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            SizedBox(
                              width: 140,
                              child: Row(
                                children: const [
                                  Text(
                                    "อายุ : ",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  ),
                                  Text(
                                    "25",
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 15),
                                  ),
                                  Text(
                                    " ปี",
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 5),
                            Row(
                              children: const [
                                Text(
                                  "เพศ : ",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                ),
                                Text(
                                  "ชาย",
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 15),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            SizedBox(
                              width: 140,
                              child: Row(
                                children: const [
                                  Text(
                                    "น้ำหนัก : ",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  ),
                                  Text(
                                    "609",
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 15),
                                  ),
                                  Text(
                                    " kg.",
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 5),
                            Row(
                              children: const [
                                Text(
                                  "ส่วนสูง : ",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                ),
                                Text(
                                  "170",
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 15),
                                ),
                                Text(
                                  " cm.",
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 15),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Text(
                              "โรคประจำตัว : ",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                              textAlign: TextAlign.start,
                              maxLines: 1,
                            ),
                            Flexible(
                              child: Text(
                                "โรคหอบหืด , โรคภูมิแพ้",
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        InkWell(
                          onTap: () {
                             Navigator.of(context).pushNamed("/edit_i_am_data");
                          },
                          highlightColor: color,
                          splashColor: color,
                          hoverColor: color,
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xffff9800),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 40,
                            width: 200,
                            child: const Center(
                              child: Text("แก้ไขข้อมูลส่วนตัว",
                                  style: TextStyle(
                                      fontSize: 15,
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
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
