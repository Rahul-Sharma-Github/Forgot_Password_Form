// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegistrationApp extends StatefulWidget {
  const RegistrationApp({super.key});

  @override
  State<RegistrationApp> createState() => _RegistrationAppState();
}

class _RegistrationAppState extends State<RegistrationApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              Container(
                alignment: Alignment.center,
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(20, 50, 20, 10),
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 38,
                      color: Colors.pink,
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 8.0, 20, 20),
                  child: Text(
                    'Create an Account, its free',
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Container(
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  ),
                ),
              ),
              Container(
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
              ),
              Container(
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Confirm Password',
                    ),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(32.0)))),
                    child: const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account ? ',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[800],
                    ),
                  ),
                  TextButton(
                    onPressed: () => context.go('/'),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
