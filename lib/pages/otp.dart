import 'package:flutter/material.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xfff7f6fb),
      appBar: AppBar(
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back,
          size: 32,
          color: Colors.black54,
        ),
        backgroundColor: const Color(0xfff7f6fb),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            children: [
              Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple.shade50, shape: BoxShape.circle),
                  child: Image.asset('assets/images/illustration-3.png')),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              const Text(
                'Verification',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              const Text(
                "Enter your OTP code number",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Row(
                children: [
                  otptextField(
                    context,
                    first: true,
                    last: false,
                  ),
                  otptextField(
                    context,
                    first: false,
                    last: true,
                  ),
                  otptextField(context, first: false, last: false),
                  otptextField(context, first: false, last: false),
                  otptextField(context, first: false, last: false),
                  otptextField(context, first: false, last: true),
                ],
              ),
              //for create account
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: Colors.purple,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.0))),
                    child: const Text(
                      'Verify',
                      style: TextStyle(fontSize: 16),
                    )),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              const Text(
                "Didn't you receive any code?",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 18,
              ),
              const Text(
                "Resend New Code",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget otptextField(BuildContext context, {required bool first, last}) {
  return Padding(
    padding: const EdgeInsets.only(left: 5),
    child: Container(
      height: 85,
      child: AspectRatio(
        aspectRatio: 2.3 / 4,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 1, color: Colors.black12),
                borderRadius: BorderRadius.circular(12)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 2, color: Colors.purple),
                borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ),
    ),
  );
}
