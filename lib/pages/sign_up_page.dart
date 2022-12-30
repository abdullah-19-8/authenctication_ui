import 'package:auth_ui/pages/login_page.dart';
import 'package:flutter/material.dart';

import '../helper.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/login-background.jpg'),
            colorFilter: ColorFilter.srgbToLinearGamma(),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 150,
                width: 150,
                child: Hero(
                  tag: 'bird',
                  child: Image(
                    image: AssetImage(
                      'assets/bird.png',
                    ),
                  ),
                ),
              ),
              const Text(
                'Create Account',
                style: TextStyle(fontSize: 35, color: Colors.white),
              ),
              const SizedBox(height: 50),
              MyTextField(
                labelText: "First Name",
                hintText: "John",
              ),
              const SizedBox(height: 35),
              MyTextField(
                labelText: "Last Name",
                hintText: "Due",
              ),
              const SizedBox(height: 35),
              MyTextField(
                labelText: "Phone number",
                hintText: "+964 750 000 0000",
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 35),
              MyTextField(
                labelText: 'Password',
                hintText: 'Your Password',
                obscure: true,
                isPassword: true,
              ),
              const SizedBox(height: 35),
              MyTextField(
                labelText: 'Confirm Password',
                hintText: 'Confirm Your Password',
                obscure: true,
                isPassword: true,
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 150,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1, color: Colors.white)),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account ?',
                    style: TextStyle(color: Colors.white),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                        (route) => false,
                      );
                    },
                    child: const Text(
                      'login',
                      style: TextStyle(color: Colors.blue),
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
