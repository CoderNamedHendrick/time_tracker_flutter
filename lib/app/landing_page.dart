import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'file:///C:/Users/Hendrick/AndroidStudioProjects/time_tracker_flutter/lib/app/home/jobs_page.dart';
import 'package:time_tracker_flutter/app/signin/signin_page.dart';
import 'package:time_tracker_flutter/services/auth.dart';

class LandingPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AuthBase>(context, listen: false);
    return StreamBuilder<User>(
        stream: auth.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            final User user = snapshot.data;
            if (user == null)
              return SignInPage.create(context);
            return JobsPage();
          }
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
    );
  }
}