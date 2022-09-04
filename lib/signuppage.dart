import 'package:flutter/material.dart';
import 'package:lookout_service/constants.dart';
import 'package:lookout_service/loginpage.dart';
import 'package:lookout_service/police_homepage.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

List<String> sexList = ["M", "F"];
String selectedSex = "M";

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Welcome to Lookout",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const SizedBox(
          height: 30,
        ),
        const Text(
          "Sign Up",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.purple),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          width: size.width * 0.8,
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          decoration: BoxDecoration(
              color: kSecondaryColor, borderRadius: BorderRadius.circular(29)),
          child: const TextField(
            decoration: InputDecoration(
                hintText: "Your Email",
                border: InputBorder.none,
                icon: Icon(
                  Icons.person,
                  color: kPrimaryColor,
                )),
          ),
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        Container(
          width: size.width * 0.8,
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          decoration: BoxDecoration(
              color: kSecondaryColor, borderRadius: BorderRadius.circular(29)),
          child: const TextField(
            obscureText: true,
            decoration: InputDecoration(
                hintText: "Enter Password",
                border: InputBorder.none,
                icon: Icon(
                  Icons.lock,
                  color: kPrimaryColor,
                ),
                suffixIcon: Icon(Icons.visibility, color: kPrimaryColor)),
          ),
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        Container(
          width: size.width * 0.8,
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          decoration: BoxDecoration(
              color: kSecondaryColor, borderRadius: BorderRadius.circular(29)),
          child: Row(
            children: [
              const Text(
                "Service Type:",
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(width: 10),
              DropdownButton<String>(
                value: selectedSex,
                items: [
                  DropdownMenuItem(
                    value: sexList[0],
                    child: const Text("Police"),
                  ),
                  DropdownMenuItem(
                    value: sexList[1],
                    child: const Text("Ambulance"),
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    selectedSex = value ?? sexList[0];
                  });
                },
              ),
            ],
          ),
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        SizedBox(
          width: size.width * 0.8,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(29),
            child: TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const PoliceHomePage()));
              },
              style: TextButton.styleFrom(
                  backgroundColor: kPrimaryColor, primary: Colors.white),
              child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text("Sign Up")),
            ),
          ),
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Already have an account?",
              style: TextStyle(color: kPrimaryColor),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const LoginPage()));
              },
              child: const Text("Login",
                  style: TextStyle(
                      color: kPrimaryColor, fontWeight: FontWeight.bold)),
            )
          ],
        )
      ],
    ));
  }
}
