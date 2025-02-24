import 'package:banking_ui/pages/component/MyButtons.dart';
import 'package:banking_ui/pages/component/myTextField.dart';
import 'package:flutter/material.dart';

class RegistrationPage1 extends StatefulWidget {
  const RegistrationPage1({super.key});

  @override
  State<RegistrationPage1> createState() => _RegistrationPage1State();
}

class _RegistrationPage1State extends State<RegistrationPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 70,
          left: 30,
          right: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Padding(
            //   padding: EdgeInsets.only(
            //     top: 70,
            //     left: 30,
            //   ),
            // ),
            Text(
              "Register",
              style: TextStyle(
                fontSize: 44,
                fontWeight: FontWeight.bold,
                color: const Color(
                  0xFF151940,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Container(
                //   decoration: BoxDecoration(
                //     color: const Color.fromARGB(255, 117, 132, 194),
                //     borderRadius: BorderRadius.circular(15),
                //   ),
                //   width: 161,
                //   height: 53,
                //   child: Center(
                //     child: Text(
                //       "GOOGLE",
                //       style: TextStyle(
                //         fontSize: 15,
                //         fontWeight: FontWeight.bold,
                //         color: const Color(
                //           0xFF151940,
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                // SizedBox(
                //   width: 20,
                // ),
                // Container(
                //   decoration: BoxDecoration(
                //     color: const Color.fromARGB(255, 117, 132, 194),
                //     borderRadius: BorderRadius.circular(15),
                //   ),
                //   width: 161,
                //   height: 53,
                //   child: Center(
                //     child: Text(
                //       "FACEBOOK",
                //       style: TextStyle(
                //         fontSize: 15,
                //         fontWeight: FontWeight.bold,
                //         color: const Color(
                //           0xFF151940,
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                MyButton(
                  onTap: () {},
                  text: "GOOGLE",
                ),
                SizedBox(
                  width: 30,
                ),
                MyButton(
                  onTap: () {},
                  text: "FACEBOOK",
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SizedBox(
                  width: 161,
                  child: Divider(
                    thickness: 2,
                    color: const Color(0xFF486484),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text("or"),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 161,
                  child: Divider(
                    thickness: 2,
                    color: const Color(0xFF486484),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            MyTextfield(
              controller: TextEditingController(),
              hintText: "Full Name",
              obscureText: false,
              icon: Icons.visibility,
            ),
            SizedBox(
              height: 20,
            ),
            MyTextfield(
              controller: TextEditingController(),
              hintText: "Enter Email Address",
              obscureText: false,
              icon: null,
            ),
            SizedBox(
              height: 20,
            ),
            MyTextfield(
              controller: TextEditingController(),
              hintText: "Password",
              obscureText: true,
              icon: null,
            ),
            SizedBox(
              height: 20,
            ),
            MyTextfield(
              controller: TextEditingController(),
              hintText: "Confirm Password",
              obscureText: true,
              icon: Icon(Icons.remove_red_eye),
            ),
          ],
        ),
      ),
    );
  }
}
