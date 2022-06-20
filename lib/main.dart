import 'package:flutter/material.dart';
import 'package:otp_verification/pages/otp.dart';
import 'package:otp_verification/pages/registration.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'OTP Verification',
      debugShowCheckedModeBanner: false,
      home: OtpScreen(),
    );
  }
}
