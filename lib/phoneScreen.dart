import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'Componetnts/Compo.dart';

class phoneScreen extends StatelessWidget {
  var phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('phone Auth'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            defaultTextForm(
              controller: phoneController,
              type: TextInputType.phone,
              hint: 'enter Phone number',
              title: 'Phone',
            ),
            SizedBox(
              height: 40.0,
            ),
            difultButton(
              function: () {
                String phone = phoneController.text;

                if (phone.isEmpty) {
                  return;
                }
                sendCode(phone);
              },
              text: 'next',
            ),
            SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }

  void sendCode(String number) async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: '+2$number',
      verificationCompleted: (PhoneAuthCredential credential)
      {

      },
      verificationFailed: (FirebaseAuthException e)
      {

      },
      codeSent: (String verification , int resendToken)
      {

      },
      codeAutoRetrievalTimeout: (String verification)
      {

      },
    );
  }
}
