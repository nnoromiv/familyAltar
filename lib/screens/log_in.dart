import 'package:familyaltar/widgets/button.dart';
import 'package:familyaltar/widgets/form_input.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

var logger = Logger(
  printer: PrettyPrinter(),
);

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
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
            'Welcome',
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
          Button(text: 'Log In', onPressed: () => {logger.d('clicked')}),
          const SizedBox(
            height: 20.0,
          )
        ],
      ),
    ));
  }
}
