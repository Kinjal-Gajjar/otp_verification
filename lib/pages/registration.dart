import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  String initialCountry = 'IN';
  PhoneNumber number = PhoneNumber(isoCode: 'IN');
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
                  child: Image.asset('assets/images/illustration-2.png')),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              const Text(
                'Registration',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              const Text(
                "Add your phone number. we'll send you a verification code so we know you're real",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        border:
                            Border.all(color: Colors.black.withOpacity(0.13))),
                    child: InternationalPhoneNumberInput(
                      initialValue: number,
                      onInputChanged: (PhoneNumber number) {
                        print(number.phoneNumber);
                      },
                      selectorConfig: const SelectorConfig(
                        selectorType: PhoneInputSelectorType.DIALOG,
                      ),
                      autoValidateMode: AutovalidateMode.disabled,
                      selectorTextStyle: const TextStyle(color: Colors.black),
                      maxLength: 9,
                      keyboardType: const TextInputType.numberWithOptions(
                          signed: true, decimal: true),
                      cursorColor: Colors.black,
                      inputDecoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        contentPadding:
                            const EdgeInsets.only(bottom: 15, left: 0),
                        hintText: 'Phone Number',
                        hintStyle: TextStyle(
                            color: Colors.grey.shade500, fontSize: 16),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 100,
                    top: 8,
                    bottom: 8,
                    child: Container(
                      height: 40,
                      width: 1,
                      color: Colors.black.withOpacity(0.13),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
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
                      'Send',
                      style: TextStyle(fontSize: 16),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
