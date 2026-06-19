import 'package:flutter/material.dart';
import 'package:grocery_app/screens/home/home_page.dart';
import 'package:grocery_app/screens/login/login_page.dart';
import 'package:grocery_app/screens/Signup/widget/button.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Center(child: Image.asset("assets/images/Group.png")),
              SizedBox(height: 101),
              Text(
                "Sign Up",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 15),
              Text(
                "Enter your credentials to continue",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 40),
              Text(
                "Username",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                ),
              ),
              TextFormField(
                decoration: InputDecoration(hintText: "Nouran Elshazly"),
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
                  hintText: "nouran@example.com",
                  suffixIcon: Icon(Icons.email),
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
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "********",
                  suffixIcon: Icon(Icons.lock),
                ),
              ),
              SizedBox(height: 20),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                  children: [
                    TextSpan(text: "By continuing you agree to our "),
                    TextSpan(
                      text: "Terms of Service",
                      style: TextStyle(color: Colors.green),
                    ),
                    TextSpan(text: " and "),
                    TextSpan(
                      text: "Privacy Policy",
                      style: TextStyle(color: Colors.green),
                    ),
                    TextSpan(text: "."),
                  ],
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Button(text: "Sign Up"),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.green,
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
