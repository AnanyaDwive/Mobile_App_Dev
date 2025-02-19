import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food/pages/home_page.dart';
import 'package:food/services/auth/login_or_register.dart';
//to check if the user is logged in or nor

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){
          //user logged in
          if(snapshot.hasData){
            return const HomePage();
          }


          //user not logged in
          else{
            return const LoginOrRegister();

          }
        }
      ),
    );
  }
}