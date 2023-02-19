// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  TextEditingController forgotPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            const SizedBox(
              height: 60,
            ),
            Container(
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Verification',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Container(
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 60),
                child: Text(
                  'Enter the verification code, we just sent you on your email address.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                child: TextField(
                  controller: forgotPasswordController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Varify Code',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black.withOpacity(0.7),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.arrow_right_alt_sharp,
                          size: 35,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Resend Code ?',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}
