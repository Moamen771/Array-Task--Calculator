import 'package:calculator/screens/home_screen.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange.shade800,
        body: Column(
          children: [
            const Expanded(
              flex: 1,
              child: SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Login",
                        style: TextStyle(fontSize: 46, color: Colors.white),
                      ),
                      Text(
                        "Welcome Back",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(60),
                        topLeft: Radius.circular(60))),
                child: Column(
                  spacing: 20,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(10),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.orange.shade800,
                              blurRadius: 16,
                              offset: const Offset(0, 5),
                              spreadRadius: -5,
                            )
                          ]),
                      child: Column(
                        children: [
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                              hintText: "Email or phone number",
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none,
                            ),
                          ),
                          Divider(
                            color: Colors.grey.shade400,
                            height: 10,
                            thickness: 1,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.visiblePassword,
                            decoration: const InputDecoration(
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none,
                                fillColor: Colors.red),
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      "Forget password?",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Get.to(
                          const HomeScreen(),
                          transition: Transition.fadeIn,
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(200, 50),
                          backgroundColor: Colors.orange.shade800,
                          foregroundColor: Colors.white),
                      child: const Text(
                        "Login",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    const Text(
                      "Continue with social media",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 20,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(double.infinity, 60),
                                backgroundColor: Colors.blue,
                                foregroundColor: Colors.white),
                            child: const Text(
                              "Facebook",
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(double.infinity, 60),
                                backgroundColor: Colors.black,
                                foregroundColor: Colors.white),
                            child: const Text(
                              "Github",
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
