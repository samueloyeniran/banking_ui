import 'package:banking_ui/pages/component/MyButtons.dart';
import 'package:banking_ui/pages/component/myButton2.dart';
import 'package:banking_ui/pages/component/myTextField.dart';
import 'package:flutter/material.dart';

class RegistrationPage1 extends StatefulWidget {
  const RegistrationPage1({super.key});

  @override
  State<RegistrationPage1> createState() => _RegistrationPage1State();
}

class _RegistrationPage1State extends State<RegistrationPage1> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            top: 70,
            left: 30,
            right: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
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
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Checkbox.adaptive(
                      value: isChecked,
                      onChanged: (bool? valueKey) {
                        setState(() {
                          isChecked = valueKey!;
                        });
                      }),
                  Text("i've read and agree to the "),
                  Text(
                    "term ",
                    style: TextStyle(
                      color: const Color(0xFF1A128F),
                    ),
                  ),
                  Text("of "),
                  Text(
                    "privacy policy",
                    style: TextStyle(
                      color: const Color(0xFF1A128F),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Mybutton2(
                onTap: () {},
                text: "Register",
              ),
              SizedBox(
                height: 20,
              ),
              Text("Already have an accouunt?"),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "L O G I N",
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.login),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
