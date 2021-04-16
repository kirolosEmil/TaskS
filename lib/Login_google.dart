import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appwwwwwwwwwwwwwwwww/phoneScreen.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'Componetnts/Compo.dart';

class loginGoogle extends StatelessWidget {
  GoogleSignIn googleSignIn = GoogleSignIn(
    scopes:
    [
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    handleSignIn(context);
                  },
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: defultColor,
                    child: Image(
                      image: AssetImage('assets/images/google.png'),
                      height: 23,
                      width: 23,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    signOut();
                  },
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: defultColor,
                    child: Icon(
                      Icons.exit_to_app
                    ),
                    ),
                  ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15 , right: 15),
              child: difultButton(
                text: 'phone number',
                function: () {
                  navigateTo(context, PhoneScreen());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future <void> signOut() async
  {
    await  googleSignIn.signOut();
  }



  Future<void> handleSignIn(ctx) async {
    await googleSignIn.signIn().then((value) async
    {
      print(value.email);
      print(value.displayName);
      print(value.photoUrl);


      GoogleSignInAuthentication googleSignInAuthentication = await value.authentication;
      AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      await FirebaseAuth.instance
          .signInWithCredential(credential)
          .then((value) {
        print(value.user.uid);
        //print('token-------${googleSignInAuthentication.accessToken}');
        saveToken(googleSignInAuthentication.accessToken).then((value)
        {
          if(value){
            // showToast(text:'success save token', error: false);
            navigateAndFinish(ctx ,PhoneScreen());
          }
          else{
            // showToast(text:'Error while saving a token', error: false);
          }
        });
        // navigateAndFinish(ctx, HomeScreen(saveToken()));
      }).catchError((e)
      {
        print(e.toString());
      });
    }).catchError((e){
      print(e.toString());
    });
  }
}
