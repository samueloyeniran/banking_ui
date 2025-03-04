import 'package:flutter/material.dart';

import '../component/MyButtons.dart';
import '../component/myButton2.dart';
import '../component/myTextField.dart';

class RegisterPage2 extends StatefulWidget {
  const RegisterPage2({super.key});

  @override
  State<RegisterPage2> createState() => _RegisterPage2State();
}

class _RegisterPage2State extends State<RegisterPage2> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            top: 100,
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
                    width: MediaQuery.of(context).size.width / 2.5,
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
                    width: MediaQuery.of(context).size.width / 2.5,
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
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return RegisterPage2();
                        },
                      ));
                    },
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
