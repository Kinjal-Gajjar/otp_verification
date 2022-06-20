import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xffF7F6FB),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 10),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/illustration-1.png',
                  width: 200,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                const Text(
                  "Let's get started",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.009,
                ),
                const Text(
                  "Never a better time than now to start.",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black38,
                  ),
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
                        'Create Account',
                        style: TextStyle(fontSize: 16),
                      )),
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                //for login
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.0))),
                      child: const Text(
                        'Login',
                        style: TextStyle(fontSize: 16, color: Colors.purple),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
