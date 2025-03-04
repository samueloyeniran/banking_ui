import 'package:banking_ui/pages/component/MyButtons.dart';
import 'package:banking_ui/pages/component/myButton2.dart';
import 'package:flutter/material.dart';

class Registerpage3 extends StatefulWidget {
  const Registerpage3({super.key});

  @override
  State<Registerpage3> createState() => _Registerpage3State();
}

class _Registerpage3State extends State<Registerpage3> {
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
                height: 20,
              ),
              Text(
                "please enter your phone number and \nlocation se we can verify",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Enter yoour location",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF151940),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 58,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 10,
                        right: 10,
                      ),
                    ),
                    Image.asset(
                      "assets/flag.png",
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 1,
                      height: 35,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "choose your location",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Enter your phone Number",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF151940),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  hintStyle: TextStyle(
                    color: Color(0xFF151940),
                    backgroundColor: Color(0xFFFFFFFF),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Mybutton2(
                onTap: () {},
                text: "Register",
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Text("or"),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
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
                  SizedBox(
                    height: 30,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
