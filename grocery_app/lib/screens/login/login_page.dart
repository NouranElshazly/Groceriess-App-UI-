import 'package:flutter/material.dart';
import 'package:grocery_app/screens/Signup/sign_up.dart';
import 'package:grocery_app/screens/Signup/widget/button.dart';
import 'package:grocery_app/screens/home/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 100),
              Center(child: Image.asset("assets/images/Group.png")),
              SizedBox(height: 121),
              Text(
                "Logging In",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 15),
              Text(
                "Enter your emails and password",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(height: 30),
              Text(
                "Email",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "nouranelshazly19@gmail.com",
                ),
              ),
              SizedBox(height: 30),
              Text(
                "Password",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "********",
                  suffixIcon: Icon(Icons.visibility),
                ),
                obscureText: true,
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forget Password?",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 30),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Button(text: "Login"),
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUp()),
                      );
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF53B175),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
