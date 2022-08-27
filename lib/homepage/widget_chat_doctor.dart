import 'package:flutter/material.dart';
import 'package:project/homepage/widget_data_chat_doctor.dart';

class ChatDoctor extends StatefulWidget {
  const ChatDoctor({Key? key}) : super(key: key);

  @override
  State<ChatDoctor> createState() => _ChatDoctorState();
}

class _ChatDoctorState extends State<ChatDoctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text("คุยกับหมอ", style: TextStyle(fontSize: 18)),
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
      body: Stack(
        children: [
          datachat(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 60,
              decoration: BoxDecoration(color: Colors.cyan, boxShadow: [
                BoxShadow(
                    spreadRadius: 0,
                    blurRadius: 4,
                    color: const Color(0xFF000000).withOpacity(.2),
                    offset: const Offset(0, 0))
              ]),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const SizedBox(width: 15),
                    const Icon(
                      Icons.image,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 20),
                    Flexible(
                      child: TextFormField(
                        cursorColor: Colors.black,
                        textAlign: TextAlign.start,
                        style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(
                              left: 20, right: 20, bottom: 5),
                          hintText: 'พิมพ์ข้อความ . . .',
                          hintStyle: const TextStyle(
                              color: Colors.black54, fontSize: 15),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(90),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(width: 30),
                    const Icon(
                      Icons.send,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 20),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
