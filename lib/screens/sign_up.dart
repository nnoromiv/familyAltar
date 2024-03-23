import 'package:familyaltar/widgets/button.dart';
import 'package:familyaltar/widgets/form_input.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

var logger = Logger(
  printer: PrettyPrinter(),
);

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment:
            CrossAxisAlignment.stretch, // Make column children stretch
        children: [
          const Text(
            'Sign Up',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 50.0,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const FormInput(
            keyboardType: TextInputType.emailAddress,
            suffixIcon: true,
            icon: Icon(Icons.email),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const FormInput(
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            hintText: 'Password',
            suffixIcon: true,
            icon: Icon(Icons.password),
          ),
          Button(text: 'Join', onPressed: () => {logger.d('clicked')}),
          const SizedBox(
            height: 20.0,
          )
        ],
      ),
    ));
  }
}
