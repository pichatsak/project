import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project/homepage/main_homepage.dart';
import 'package:project/homepage/widget_chat_doctor.dart';
import 'package:project/homepage/widget_edit_i_am_data.dart';
import 'package:project/homepage/widget_i_am_data.dart';
import 'package:project/homepage/widget_reset_password.dart';
import 'package:project/login/main_login.dart';
import 'package:project/login/widget_forget_password.dart';
import 'package:project/login/widget_new_forget_password.dart';
import 'package:project/registor/main_registor.dart';
import 'package:project/registor/widget_data.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KneeApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Prompt',
      ),
      //   home: const LoginAPP(),
      initialRoute: '/',
      routes: {
        "/": (context) => const LoginAPP(),
        "/registor": (context) => const RegistorAPP(),
        "/data_registor": (context) => const DataAPP(),
        "/homepage": (context) => const HomePageAPP(),
        "/i_am_data": (context) => const IamDATA(),
        "/edit_i_am_data": (context) => const EditIamDATA(),
        "/chat_doctor": (context) => const ChatDoctor(),
        "/forget_password": (context) => const Forgetpassword(),
        "/new_forget_password": (context) => const NewForgetPassword(),
        "/reset_password": (context) => const ResetPassword(),
      },
    );
  }
}
