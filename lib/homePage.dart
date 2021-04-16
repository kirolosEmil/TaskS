import 'package:flutter/material.dart';
import 'Componetnts/Compo.dart';
import 'Login_google.dart';
import 'menus.dart';

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: difultButton(
                  function: () {
                    navigateTo(
                      context,
                      loginGoogle(),
                    );
                  },
                  text: 'First Task',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: difultButton(
                  function: () {
                    navigateTo(
                      context,
                      menus(),
                    );
                  },
                  text: 'Second Task',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
