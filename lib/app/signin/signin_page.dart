import 'package:flutter/material.dart';
import 'package:time_tracker_flutter/common_widgets/custom_raised_button.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Time Tracker"),
        elevation: 2.0,
      ),
      body: _buildContent(),
      backgroundColor: Colors.grey[200],
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            "Sign In",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 8.0),
          CustomRaisedButton(
            child: Text(
              "Sign in with Google",
              style: TextStyle(fontSize: 15, color: Colors.black87),
            ),
            color: Colors.white,
            borderRadius: 4.0,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
