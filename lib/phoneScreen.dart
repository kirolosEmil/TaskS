import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'Componetnts/Compo.dart';

class PhoneScreen extends StatefulWidget {
  @override
  _PhoneScreenState createState() => _PhoneScreenState();
}

class _PhoneScreenState extends State<PhoneScreen> {
  var phoneController = TextEditingController();
  var codeController = TextEditingController();
  bool isCode = false ;
  String verCode ='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phone SignUp'),
      ),
      body: Padding(
        padding:  EdgeInsets.all(16.0),
        child: Column(
          children: [

            SizedBox(
              height: 50,
            ),

            if(!isCode)
              defultTextForm(
                title: "Phone Number",
                hint: 'Enter Your Number',
                controller: phoneController,
              ),

            if(isCode)
              SizedBox(
                height: 100,
              ),

            if(isCode)
              defultTextForm(
                title: "Code",
                hint: 'Enter Your Verification Code',
                controller: codeController,
              ),


            SizedBox(
              height: 50,
            ),
            difultButton(
              toUpper: true,
              function: () {
                if (isCode)
                {
                  phoneAuthentication(codeController.text);
                }
                else
                {
                  String phone = phoneController.text;
                  if (phone.isEmpty) {
                    return;
                  }
                  sendCode(phone);
                }
              },
              text: isCode? "Start" :"Next",
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
        print(e.message);
      },
      codeSent: (String verificationId , int resendToken)
      {
        isCode = true;
        verCode = verificationId ;
        setState(() {});
      } ,
      codeAutoRetrievalTimeout: (String verificationId)
      {

      },
    );
  }

  void phoneAuthentication(String code) async {
    PhoneAuthCredential phoneAuthCredential = PhoneAuthProvider.credential(
        verificationId: this.verCode, smsCode: code);

    await FirebaseAuth.instance
        .signInWithCredential(phoneAuthCredential)
        .then((value) {
      print(value.user.uid);
    }).catchError((e)
    {
      print(e.toString());
    });
  }

}
