import 'package:flutter/material.dart';
import 'package:myapp/itoscreen.dart';

class PhoneAuth extends StatefulWidget {
  const PhoneAuth({super.key});

  @override
  State<PhoneAuth> createState() => _PhoneAuthState();
}

class _PhoneAuthState extends State<PhoneAuth> {
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("SIGN IN"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Enter phone no.',
                      suffixIcon: Icon(Icons.phone)),
                  controller: phoneController,
                  keyboardType: TextInputType.phone),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/otp');
                },
                child: Text("Send OTP")),
          ],
        ));
  }
}
